# 数据结构设计

## 通用字段

多数内容表建议包含以下字段：

| 字段 | 类型 | 说明 |
| --- | --- | --- |
| id | bigint / uuid | 主键 |
| title | varchar | 标题 |
| slug | varchar | URL 友好标识 |
| summary | text | 摘要 |
| cover_image | varchar | 封面图地址 |
| status | enum | draft, pending, published, archived |
| sort_order | int | 排序 |
| is_featured | boolean | 是否推荐 |
| published_at | datetime | 发布时间 |
| created_by | bigint / uuid | 创建人 |
| updated_by | bigint / uuid | 更新人 |
| created_at | datetime | 创建时间 |
| updated_at | datetime | 更新时间 |
| deleted_at | datetime | 软删除时间 |

## 站点配置 site_settings

| 字段 | 类型 | 说明 |
| --- | --- | --- |
| key | varchar | 配置键 |
| value | json | 配置值 |
| group | varchar | 配置分组 |
| description | varchar | 说明 |

配置示例：

- `site.basic`：网站名称、Logo、备案号、版权信息。
- `site.seo`：默认标题、描述、关键词。
- `site.contact`：电话、邮箱、地址、地图坐标。
- `site.social`：公众号、视频号、LinkedIn 等链接。

## 导航 menus / menu_items

`menus`

| 字段 | 类型 | 说明 |
| --- | --- | --- |
| id | bigint / uuid | 主键 |
| code | varchar | 导航位置，如 main, footer |
| name | varchar | 导航名称 |

`menu_items`

| 字段 | 类型 | 说明 |
| --- | --- | --- |
| id | bigint / uuid | 主键 |
| menu_id | bigint / uuid | 所属导航 |
| parent_id | bigint / uuid | 父级菜单 |
| label | varchar | 展示文字 |
| url | varchar | 跳转地址 |
| target | enum | self, blank |
| sort_order | int | 排序 |
| visible | boolean | 是否显示 |

## 页面 pages

用于维护静态内容页，如公司简介、企业文化、隐私政策。

| 字段 | 类型 | 说明 |
| --- | --- | --- |
| id | bigint / uuid | 主键 |
| title | varchar | 页面标题 |
| slug | varchar | 页面路径 |
| content | longtext/json | 富文本或区块内容 |
| seo_title | varchar | SEO 标题 |
| seo_description | varchar | SEO 描述 |
| status | enum | 状态 |

## 新闻 articles

| 字段 | 类型 | 说明 |
| --- | --- | --- |
| id | bigint / uuid | 主键 |
| category_id | bigint / uuid | 分类 |
| title | varchar | 标题 |
| slug | varchar | URL 标识 |
| summary | text | 摘要 |
| content | longtext | 正文 |
| cover_image | varchar | 封面 |
| source | varchar | 来源 |
| author | varchar | 作者 |
| tags | json | 标签 |
| view_count | int | 浏览量 |
| status | enum | 状态 |
| published_at | datetime | 发布时间 |

## 分类 categories

| 字段 | 类型 | 说明 |
| --- | --- | --- |
| id | bigint / uuid | 主键 |
| type | varchar | article, solution, product, job |
| name | varchar | 分类名 |
| slug | varchar | 分类标识 |
| parent_id | bigint / uuid | 父分类 |
| sort_order | int | 排序 |

## 解决方案 solutions

| 字段 | 类型 | 说明 |
| --- | --- | --- |
| id | bigint / uuid | 主键 |
| industry | varchar | 行业，如 insurance, bank, government |
| title | varchar | 方案标题 |
| slug | varchar | URL 标识 |
| summary | text | 简介 |
| pain_points | json | 客户痛点 |
| capabilities | json | 核心能力 |
| architecture_image | varchar | 方案架构图 |
| benefits | json | 客户价值 |
| related_products | json | 关联产品 ID |
| related_cases | json | 关联案例 ID |
| content | longtext/json | 详情内容 |
| status | enum | 状态 |

## 产品与服务 products

| 字段 | 类型 | 说明 |
| --- | --- | --- |
| id | bigint / uuid | 主键 |
| category_id | bigint / uuid | 分类 |
| name | varchar | 产品/服务名称 |
| slug | varchar | URL 标识 |
| summary | text | 简介 |
| features | json | 功能特性 |
| scenarios | json | 适用场景 |
| advantages | json | 产品优势 |
| documents | json | 白皮书、介绍 PDF |
| status | enum | 状态 |

## 客户案例 cases

| 字段 | 类型 | 说明 |
| --- | --- | --- |
| id | bigint / uuid | 主键 |
| title | varchar | 案例标题 |
| client_name | varchar | 客户名称，可脱敏 |
| industry | varchar | 行业 |
| summary | text | 案例摘要 |
| challenge | text | 项目挑战 |
| solution | text | 解决方式 |
| result | text | 项目成果 |
| logo | varchar | 客户 Logo |
| status | enum | 状态 |

## 投资者关系 investor_documents

| 字段 | 类型 | 说明 |
| --- | --- | --- |
| id | bigint / uuid | 主键 |
| type | enum | announcement, annual_report, interim_report, governance, stock |
| title | varchar | 标题 |
| document_url | varchar | 文件地址 |
| exchange_url | varchar | 交易所原文地址 |
| published_at | datetime | 披露日期 |
| year | int | 年份 |
| status | enum | 状态 |

## 招聘 jobs

| 字段 | 类型 | 说明 |
| --- | --- | --- |
| id | bigint / uuid | 主键 |
| title | varchar | 岗位名称 |
| department | varchar | 部门 |
| location | varchar | 工作地点 |
| job_type | enum | campus, social, internship |
| responsibilities | text | 岗位职责 |
| requirements | text | 任职要求 |
| headcount | int | 招聘人数 |
| status | enum | open, closed |
| published_at | datetime | 发布时间 |

## 表单线索 leads

| 字段 | 类型 | 说明 |
| --- | --- | --- |
| id | bigint / uuid | 主键 |
| type | enum | contact, cooperation, investor, job_application |
| name | varchar | 姓名 |
| company | varchar | 公司 |
| phone | varchar | 电话 |
| email | varchar | 邮箱 |
| message | text | 留言 |
| attachment_url | varchar | 附件 |
| source_url | varchar | 来源页面 |
| status | enum | new, assigned, processing, done, spam |
| assigned_to | bigint / uuid | 跟进人 |

## 用户与权限

`users`：后台用户。

`roles`：角色。

`permissions`：权限点，例如 `article:create`、`article:publish`。

`role_permissions`：角色权限关系。

`operation_logs`：后台操作日志，记录用户、动作、资源、IP、User Agent、时间和变更摘要。

