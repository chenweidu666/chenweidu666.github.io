# 04 — 个人博客（Hugo + PaperMod）

> 基于 Hugo 静态生成的开源博客，主题 [PaperMod](https://github.com/adityatelange/hugo-PaperMod)。
> 本地（wujie）自托管发布，后续可同步到 GitHub `chenweidu666.github.io`。

## 技术栈

- **Hugo** v0.167.0 extended（本地二进制 `/home/chenwei/opt/hugo/hugo`，aarch64 目标纯静态无需编译）
- **主题** PaperMod（git submodule，路径 `themes/PaperMod`）
- 产物：`public/`（纯静态 HTML/CSS/JS）

## 目录

| 路径 | 说明 |
|------|------|
| `hugo.toml` | 站点配置（标题、菜单、`baseURL`、主题参数） |
| `content/posts/` | 文章（Markdown，front matter 用 YAML） |
| `content/*.md` | 归档 `/archives/`、搜索 `/search/` 等独立页 |
| `themes/PaperMod/` | 主题（submodule） |
| `public/` | 构建产物（不入 git） |
| `scripts/serve-local.sh` | 本机发布：构建 + 以 HTTP 服务托管 |

## 本地命令

```bash
export PATH=/home/chenwei/opt/hugo:$PATH

hugo server -D            # 本地预览（默认 :1313，草稿可见）
hugo --minify             # 构建到 public/
hugo new content posts/xxx.md   # 新建文章
```

## 本机部署

`scripts/serve-local.sh` 会执行 `hugo --minify` 并用 Python `http.server` 托管 `public/`。

- 端口：`8080`
- 访问：`http://192.168.3.114:8080/`
- 常驻：systemd 用户服务 `tdpc-blog.service`（参见 `scripts/`）

## 后续：发布到 GitHub Pages

仓库名计划 `chenweidu666.github.io`，`baseURL` 改为
`https://chenweidu666.github.io/` 后启用 GitHub Actions 即可。
