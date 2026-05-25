<!--
version: 3.0.3
module: docs
status: active
-->

# 快速入门 — PRC-US-Legal-Semantic-Alignment-Framework

## 是什么

中美法律语义对齐框架——将美国法特有概念约束在中国法语境之内。

## 安装

纯文档框架，无需安装。在 Codex Desktop 中作为参考知识库加载。

```bash
git clone https://github.com/laubeing-droid/PRC-US-Legal-Semantic-Alignment-Framework.git
```

## 核心内容

- **12 领域概念映射**：一对一替换美国法概念为中国法对应概念
- **8 个护栏文件**：22 阻断概念 + 元规则 + 香港法律桥梁 + 核心原则
- **检测脚本**：自动扫描技能输出中的美国法术语残留

## 检测

```bash
# 扫描指定目录
bash detect.sh /path/to/skills

# Windows
.\detect.ps1 -Path /path/to/skills
```

## 联动

- 主仓库 [Claude-for-Legal-CN-to-Codex](https://github.com/laubeing-droid/Claude-for-Legal-CN-to-Codex) 加载本框架作为护栏层
- [MCP Hub](https://github.com/laubeing-droid/Codex-Claude-legal-cn-mcp-hub) 提供法条核验能力
- [JDP](https://github.com/laubeing-droid/Codex-Legal-CN-Judgment-Predictor) 裁判预测中引用本框架过滤概念
