# 通用代码架构建议

## 推荐 Monorepo 结构

```text
.
├── apps
│   ├── web
│   ├── admin
│   └── api
├── packages
│   ├── shared
│   ├── ui
│   └── config
├── docs
├── assets
└── tests
```

当前仓库先使用轻量结构：

```text
src
├── frontend
├── admin
├── backend
└── shared
```

后续引入具体框架后，可迁移为 `apps/` + `packages/`。

## 后端分层

```text
src/backend
├── config
├── modules
│   ├── auth
│   ├── users
│   ├── pages
│   ├── articles
│   ├── solutions
│   ├── products
│   ├── investor
│   ├── jobs
│   ├── leads
│   └── uploads
├── common
│   ├── decorators
│   ├── filters
│   ├── guards
│   ├── interceptors
│   └── validators
├── database
│   ├── migrations
│   └── seeds
└── main
```

每个业务模块建议包含：

```text
module
├── controller
├── service
├── repository
├── dto
├── entity
└── tests
```

## 前台分层

```text
src/frontend
├── app
├── pages
├── components
├── features
│   ├── home
│   ├── articles
│   ├── solutions
│   ├── products
│   ├── investor
│   └── jobs
├── services
├── styles
└── utils
```

## 后台分层

```text
src/admin
├── app
├── layouts
├── pages
│   ├── dashboard
│   ├── content
│   ├── investor
│   ├── jobs
│   ├── leads
│   └── system
├── components
├── services
├── stores
├── routes
└── utils
```

## 共享层

```text
src/shared
├── constants
├── enums
├── types
├── schemas
└── utils
```

共享内容：

- 内容状态枚举。
- API 响应类型。
- 分页参数类型。
- 表单校验 Schema。
- 行业、岗位类型、文档类型等业务枚举。

## 开发规范

- 接口以 `/api/v1` 开始，后台接口统一加 `/admin` 前缀。
- 公开接口只返回已发布内容。
- 后台接口必须鉴权，并根据权限点控制动作。
- 所有写操作记录操作日志。
- 上传文件必须限制大小、类型，并做安全扫描或白名单校验。
- 列表接口统一支持分页、关键词、状态、时间范围筛选。
- 富文本内容前台渲染前需要 XSS 过滤。

## 测试建议

- 后端：服务单元测试、控制器集成测试、权限测试。
- 前台：核心页面渲染测试、表单校验测试、SEO 元信息测试。
- 后台：权限可见性、审核流、内容发布流程测试。
- API：契约测试，确保前后台共享类型一致。

