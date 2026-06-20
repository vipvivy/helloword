#!/usr/bin/env sh
set -eu

required_paths="
README.md
docs/official-website-blueprint.md
docs/data-model.md
docs/api-list.md
docs/admin-design.md
docs/frontend-design.md
docs/code-architecture.md
src/frontend/README.md
src/admin/README.md
src/backend/README.md
src/shared/README.md
"

for path in $required_paths; do
  if [ ! -f "$path" ]; then
    echo "Missing required file: $path"
    exit 1
  fi
done

for path in $required_paths; do
  if [ ! -s "$path" ]; then
    echo "Required file is empty: $path"
    exit 1
  fi
done

required_readme_links="
./docs/official-website-blueprint.md
./docs/data-model.md
./docs/api-list.md
./docs/admin-design.md
./docs/frontend-design.md
./docs/code-architecture.md
"

for link in $required_readme_links; do
  if ! grep -F "$link" README.md >/dev/null; then
    echo "README is missing link: $link"
    exit 1
  fi
done

required_doc_terms="
中科软
数据结构
后台管理
前台设计
接口列表
代码架构
"

for term in $required_doc_terms; do
  if ! grep -R "$term" README.md docs >/dev/null; then
    echo "Documentation is missing required term: $term"
    exit 1
  fi
done

echo "Documentation scaffold validation passed."

