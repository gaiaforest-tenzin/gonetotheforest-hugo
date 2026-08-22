#!/bin/bash
# gf-convert_obsidian_links.sh
# this is /Users/alex/WebDevelopment/gonetotheforest/gf-convert_obsidian_links.sh
# Adapted from gaiaforest's script of the same name -- same core job:
# copy _content_raw/ -> content/ (gitignored, rebuilt fresh on every deploy)
# and convert Obsidian-style wikilinks/markdown links to Hugo URLs.
#
# cd /Users/alex/WebDevelopment/gonetotheforest
# ./gf-convert_obsidian_links.sh
set -e

INPUT_DIR="_content_raw"
OUTPUT_DIR="content"

echo "🧹 Cleaning..."
rm -rf "$OUTPUT_DIR"
mkdir -p "$OUTPUT_DIR"

echo "📋 Copying..."
cp -R "$INPUT_DIR/"* "$OUTPUT_DIR/"

echo "🔄 Converting Obsidian markdown links..."
python3 <<'EOF'
import os
import re
from pathlib import Path

def path_to_hugo_url(link_path):
    """Convert Obsidian link path to Hugo URL"""
    # Remove .md extension
    link_path = link_path.replace('.md', '')

    # Strip out any project/folder prefixes that shouldn't be in URLs
    link_path = re.sub(r'^.*?gonetotheforest/', '', link_path)
    link_path = re.sub(r'^.*?_content_raw/', '', link_path)
    link_path = re.sub(r'^.*?content/', '', link_path)

    # Handle root index
    if link_path == '_index' or link_path == '':
        return '/'

    # Remove trailing /_index
    if link_path.endswith('/_index'):
        link_path = link_path[:-7]

    # Ensure leading / and trailing /
    if not link_path.startswith('/'):
        link_path = '/' + link_path
    if not link_path.endswith('/'):
        link_path = link_path + '/'

    return link_path

def convert_markdown_link(match):
    """Convert a single markdown link"""
    text = match.group(1)
    path = match.group(2).strip()

    # Skip any URL with a scheme (http:, https:, mailto:, tel:, ftp:, etc.)
    if re.match(r'^[a-zA-Z][a-zA-Z0-9+.-]*:', path):
        return match.group(0)

    # Skip anchor links
    if path.startswith('#'):
        return match.group(0)

    # Convert to Hugo URL
    hugo_url = path_to_hugo_url(path)
    return f'[{text}]({hugo_url})'

file_count = 0
for root, dirs, files in os.walk('content'):
    for filename in files:
        if filename.endswith('.md'):
            filepath = os.path.join(root, filename)

            with open(filepath, 'r', encoding='utf-8') as f:
                content = f.read()

            original = content
            pattern = r'\[([^\]]+)\]\(([^)]+)\)'
            content = re.sub(pattern, convert_markdown_link, content)

            if content != original:
                with open(filepath, 'w', encoding='utf-8') as f:
                    f.write(content)
                file_count += 1

print(f"✅ Converted {file_count} files")
EOF

echo "✅ Done"
