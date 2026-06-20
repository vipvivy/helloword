# 中科软科技股份有限公司官网方案

本仓库用于沉淀中科软科技股份有限公司官网的通用代码架构、数据结构、后台设计、前台设计与接口清单。

## 目录结构

- `docs/`：产品、数据、接口、架构设计文档。
- `src/frontend/`：官网前台应用。
- `src/admin/`：内容管理后台应用。
- `src/backend/`：后端接口与管理服务。
- `src/shared/`：前后台共享类型、常量、工具。
- `assets/`：图片、视频、图标、样例数据等静态资源。
- `tests/`：自动化测试。

## 文档入口

- [官网整体设计](./docs/official-website-blueprint.md)
- [数据结构设计](./docs/data-model.md)
- [接口列表](./docs/api-list.md)
- [后台管理设计](./docs/admin-design.md)
- [前台页面设计](./docs/frontend-design.md)
- [代码架构建议](./docs/code-architecture.md)

## 测试

当前仓库还没有引入具体前端、后台或服务端框架，现阶段提供文档与目录 scaffold 校验：

```sh
./tests/validate_docs.sh
```
