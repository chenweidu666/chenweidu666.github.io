# 04-PersonalBlog — Agent 入口

> 最后更新: 2026-09-30
> 本地根: `/home/chenwei/Workspace/97-TDPC/04-PersonalBlog`
> 定位: 个人博客（技术笔记 / 工程实践 / 学习记录），Hugo 静态站

## 关键事实

- **框架**: Hugo v0.167.0 extended（本地二进制 `/home/chenwei/opt/hugo/hugo`）
- **主题**: [PaperMod](https://github.com/adityatelange/hugo-PaperMod)，git submodule 位于 `themes/PaperMod`
- **站点配置**: `hugo.toml`（标题、菜单、`params`、`baseURL`）
- **文章**: `content/posts/*.md`（YAML front matter）
- **构建产物**: `public/`（不入 git）
- **远程仓库**: `https://github.com/chenweidu666/chenweidu666.github.io`（Public，`master` 分支）

## 部署边界（强制）

| 环境 | 位置 | 方式 |
|------|------|------|
| 本机（wujie） | `http://192.168.3.114:8080/` | Hugo 构建 `public/` + systemd 用户服务 `blog.service`（Python `http.server`） |
| TD-pc | 待定（预留 nginx `:8080` 或子路径） | 静态产物 rsync 到 TD-pc 由 nginx 托管 |
| GitHub Pages | `https://chenweidu666.github.io/` | 后续启用 Actions，`baseURL` 需相应调整 |

规则：

1. 生产内容以本仓 Markdown 为唯一真源，禁止手改 `public/` 产物。
2. 本机服务名 `blog.service`（`~/.config/systemd/user/`，`systemctl --user`），端口 `8080`。
3. 切换托管地址（本机 / TD-pc / GitHub Pages）时同步修改 `hugo.toml` 的 `baseURL`。

## 常用命令

```bash
export PATH=/home/chenwei/opt/hugo:$PATH
./scripts/build.sh              # 构建 public/
./scripts/serve-local.sh        # 构建 + 本地 :8080 托管（前台）
systemctl --user restart blog.service   # 重新发布
hugo new content posts/xxx.md   # 新建文章
hugo server -D                  # 写作预览 :1313
```

## 目录

| 路径 | 说明 |
|------|------|
| `hugo.toml` | 站点配置 |
| `content/posts/` | 文章 |
| `content/{archives,search}.md` | 归档 / 搜索独立页 |
| `scripts/build.sh` | 构建脚本 |
| `scripts/serve-local.sh` | 本机发布脚本（构建 + HTTP 托管） |
| `scripts/blog.service` | systemd 用户服务单元（安装到 `~/.config/systemd/user/`） |
| `themes/PaperMod/` | 主题（submodule） |

## 入口

- 总览: [README.md](README.md)
- 上级: [../AGENTS.md](../AGENTS.md)
