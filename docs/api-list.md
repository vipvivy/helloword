# 接口列表

## 接口约定

基础路径：`/api/v1`

响应格式：

```json
{
  "code": 0,
  "message": "ok",
  "data": {},
  "traceId": "request-trace-id"
}
```

分页格式：

```json
{
  "items": [],
  "page": 1,
  "pageSize": 20,
  "total": 100
}
```

## 前台公开接口

| 方法 | 路径 | 说明 |
| --- | --- | --- |
| GET | `/site/settings` | 获取站点基础配置 |
| GET | `/menus/{code}` | 获取导航菜单 |
| GET | `/home` | 获取首页聚合数据 |
| GET | `/pages/{slug}` | 获取静态页面 |
| GET | `/articles` | 新闻列表 |
| GET | `/articles/{slug}` | 新闻详情 |
| GET | `/categories` | 分类列表 |
| GET | `/solutions` | 解决方案列表 |
| GET | `/solutions/{slug}` | 解决方案详情 |
| GET | `/products` | 产品与服务列表 |
| GET | `/products/{slug}` | 产品与服务详情 |
| GET | `/cases` | 客户案例列表 |
| GET | `/cases/{slug}` | 客户案例详情 |
| GET | `/investor/documents` | 投资者文件列表 |
| GET | `/investor/documents/{id}` | 投资者文件详情 |
| GET | `/jobs` | 招聘岗位列表 |
| GET | `/jobs/{id}` | 招聘岗位详情 |
| GET | `/search` | 全站搜索 |
| POST | `/leads/contact` | 提交联系表单 |
| POST | `/leads/cooperation` | 提交合作咨询 |
| POST | `/leads/investor` | 提交投资者留言 |
| POST | `/jobs/{id}/applications` | 提交简历 |
| POST | `/uploads/public` | 前台附件上传 |

## 后台认证接口

| 方法 | 路径 | 说明 |
| --- | --- | --- |
| POST | `/admin/auth/login` | 登录 |
| POST | `/admin/auth/logout` | 退出 |
| GET | `/admin/auth/me` | 当前用户信息 |
| POST | `/admin/auth/refresh` | 刷新令牌 |
| PUT | `/admin/auth/password` | 修改密码 |

## 后台内容接口

| 方法 | 路径 | 说明 |
| --- | --- | --- |
| GET | `/admin/pages` | 页面列表 |
| POST | `/admin/pages` | 创建页面 |
| GET | `/admin/pages/{id}` | 页面详情 |
| PUT | `/admin/pages/{id}` | 更新页面 |
| DELETE | `/admin/pages/{id}` | 删除页面 |
| POST | `/admin/pages/{id}/submit` | 提交审核 |
| POST | `/admin/pages/{id}/publish` | 发布页面 |
| POST | `/admin/pages/{id}/archive` | 归档页面 |
| GET | `/admin/articles` | 新闻列表 |
| POST | `/admin/articles` | 创建新闻 |
| PUT | `/admin/articles/{id}` | 更新新闻 |
| DELETE | `/admin/articles/{id}` | 删除新闻 |
| POST | `/admin/articles/{id}/publish` | 发布新闻 |
| GET | `/admin/solutions` | 解决方案列表 |
| POST | `/admin/solutions` | 创建解决方案 |
| PUT | `/admin/solutions/{id}` | 更新解决方案 |
| DELETE | `/admin/solutions/{id}` | 删除解决方案 |
| GET | `/admin/products` | 产品列表 |
| POST | `/admin/products` | 创建产品 |
| PUT | `/admin/products/{id}` | 更新产品 |
| DELETE | `/admin/products/{id}` | 删除产品 |
| GET | `/admin/cases` | 案例列表 |
| POST | `/admin/cases` | 创建案例 |
| PUT | `/admin/cases/{id}` | 更新案例 |
| DELETE | `/admin/cases/{id}` | 删除案例 |

## 后台投资者关系接口

| 方法 | 路径 | 说明 |
| --- | --- | --- |
| GET | `/admin/investor/documents` | 投资者文件列表 |
| POST | `/admin/investor/documents` | 创建投资者文件 |
| PUT | `/admin/investor/documents/{id}` | 更新投资者文件 |
| DELETE | `/admin/investor/documents/{id}` | 删除投资者文件 |
| POST | `/admin/investor/documents/{id}/publish` | 发布投资者文件 |

## 后台招聘接口

| 方法 | 路径 | 说明 |
| --- | --- | --- |
| GET | `/admin/jobs` | 岗位列表 |
| POST | `/admin/jobs` | 创建岗位 |
| PUT | `/admin/jobs/{id}` | 更新岗位 |
| DELETE | `/admin/jobs/{id}` | 删除岗位 |
| POST | `/admin/jobs/{id}/close` | 关闭岗位 |
| GET | `/admin/job-applications` | 简历投递列表 |
| PUT | `/admin/job-applications/{id}/status` | 更新投递状态 |

## 后台线索接口

| 方法 | 路径 | 说明 |
| --- | --- | --- |
| GET | `/admin/leads` | 线索列表 |
| GET | `/admin/leads/{id}` | 线索详情 |
| PUT | `/admin/leads/{id}/status` | 更新线索状态 |
| PUT | `/admin/leads/{id}/assign` | 分派线索 |
| POST | `/admin/leads/{id}/notes` | 添加跟进备注 |
| GET | `/admin/leads/export` | 导出线索 |

## 后台系统接口

| 方法 | 路径 | 说明 |
| --- | --- | --- |
| GET | `/admin/users` | 用户列表 |
| POST | `/admin/users` | 创建用户 |
| PUT | `/admin/users/{id}` | 更新用户 |
| DELETE | `/admin/users/{id}` | 删除用户 |
| GET | `/admin/roles` | 角色列表 |
| POST | `/admin/roles` | 创建角色 |
| PUT | `/admin/roles/{id}` | 更新角色 |
| GET | `/admin/permissions` | 权限列表 |
| PUT | `/admin/roles/{id}/permissions` | 设置角色权限 |
| GET | `/admin/menus` | 菜单列表 |
| PUT | `/admin/menus/{id}` | 更新菜单 |
| GET | `/admin/settings` | 站点配置 |
| PUT | `/admin/settings` | 更新站点配置 |
| POST | `/admin/uploads` | 后台文件上传 |
| GET | `/admin/operation-logs` | 操作日志 |

