# Personal Homepage — Xiaoyan Qian

Medical AI Governance and Regulatory Science. Built with minimal Jekyll for GitHub Pages.

## 结构

```
site/
├── _config.yml          站点配置
├── _layouts/            页面模板（default = 全站外壳；case = 案例页）
├── assets/css/style.css 全部样式
├── index.md             Home（定位 + 叙事 + 三张卡片 + 证据标注说明）
├── portfolio.md         Governance Portfolio（项目 + casebook + artifacts）
├── writing.md           Research & Writing（三篇研究纲领 + 短文）
├── about.md             About（职业叙事 + 能力 + 去向）
└── _cases/              案例库：每个 .md 就是一个 case 页面，自动生成列表
```

## 部署到 GitHub Pages（约 10 分钟）

1. 在 GitHub 新建仓库，命名为 `<你的用户名>.github.io`（公开仓库）。
2. 在本目录（site/）执行：

```bash
cd "3-我的AI-governance之路/homepage/site"
git init
git add .
git commit -m "Initial homepage"
git branch -M main
git remote add origin https://github.com/<你的用户名>/<你的用户名>.github.io.git
git push -u origin main
```

3. 打开仓库 Settings → Pages，Source 选择 `Deploy from a branch`，Branch 选 `main` / `(root)`，保存。
4. 1–2 分钟后访问 `https://<你的用户名>.github.io`。GitHub 会自动用 Jekyll 构建，无需本地安装任何东西。

## 上线前必改（占位符）

- [ ] `index.md` 和 `about.md` 里的 email / LinkedIn / GitHub 链接（现在是 `your.email@example.com` 占位）。
- [ ] `writing.md` 里 Viewpoint 的状态标签（`status: update here`），按真实投稿状态写：in preparation / under review / accepted。**审稿人可能看到这个页面，状态绝不能超前于事实。**
- [ ] 确认对外是否可以提及合作 lab 的名称。目前全站统一写 "a joint university-industry AI laboratory at HKU"（不点名），这是脱敏默认；如获许可再点名。

## 日常维护（你的 casebook 工作流）

新增一个 case = 在 `_cases/` 放一个 .md 文件，front matter 照抄现有文件（title / evidence_type / evidence_class / decision_state / summary），push 即自动出现在 Portfolio 列表。

evidence_class 三个值控制标签颜色：
- `project`（绿）= Project-derived
- `scenario`（黄）= Scenario-based
- `published`（蓝）= Published writing

## 设计原则（改动时别破坏）

1. **诚实标注**：每条内容必须带 Evidence Type 标签；数字孪生项目永远写 pre-deployment governance design，不写 live deployment。
2. **四模块收敛**：Home / Portfolio / Writing / About，第一版不加新栏目。
3. **两分钟测试**：任何访客点进来 2 分钟内应明白——这个人不是在空谈 AI governance，她已经在把医疗 AI 的部署、风险、责任问题结构化成可审计的证据。

## 自定义域名（可选，以后再说）

买域名后在仓库 Settings → Pages → Custom domain 填入，并在域名商处加 CNAME 记录指向 `<你的用户名>.github.io`。
