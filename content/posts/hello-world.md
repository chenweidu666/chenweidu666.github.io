---
title: "Hello, World"
date: 2026-09-30
draft: false
tags: ["随笔", "Hugo"]
categories: ["技术"]
summary: "博客正式上线。使用 Hugo + PaperMod 搭建，托管在本地机器上。"
---

## 博客开张

这是本站的第一篇文章。整个站点使用 [Hugo](https://gohugo.io/) 静态生成，主题为 [PaperMod](https://github.com/adityatelange/hugo-PaperMod)。

## 为什么写博客

- 把零散的技术笔记沉淀下来
- 记录工程实践中的坑与解法
- 当作长期的学习档案

## 写文章

新建一篇：

```bash
hugo new content posts/my-new-post.md
```

本地预览：

```bash
hugo server -D
```

构建静态文件：

```bash
hugo --minify
```

产物在 `public/`，可直接托管。
