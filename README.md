<!--
version: 3.0.5
module: alignment-framework
status: active
-->

# 中国法优先法律语义对齐框架

> **PRC-First Legal Semantic Alignment Framework**
> [English](README.en.md)
> ——一种面向LLM的美国法概念约束与中国法语境适配体系

---

## 这是什么

当LLM处理涉华法律事务时，存在系统性风险：美国法概念被默认适用、普通法术语被直译为中国法概念、中国强行法被美式逻辑覆盖。

本框架解决这个问题。它不是词典，不是双向翻译，不是法律OS。

它是 **alignment（对齐）** + **constraint（约束）** + **jurisdiction-aware adaptation（法域感知适配）**。

---

## 核心机制

| 机制 | 说明 |
|---|---|
| **功能映射** | 美国法概念→中国法制度的功能对应，非字面翻译 |
| **绝对阻断** | 22项美式概念（consideration/discovery/Miranda/Chevron...）强制拦截 |
| **中国法优先** | 当美式逻辑与中国强行法冲突时，中国法覆盖 |
| **法域隔离** | 中国大陆/香港/美国三法域独立处理，不混同 |
| **推理链** | 五步CoT流水线+If→Then触发规则，LLM可直接执行 |

---

## 结构

```
一、元规则层（6条Rule + 推理链）
二、16部中国部门法逐编映射
三、香港普通法桥梁
四、AI工作流模板
五、附录（22项阻断清单 + 中国特有制度 + JSON数据字典）
```

---

## 用途

- 注入 Claude for Legal CN 的 System Prompt
- RAG知识库底层术语-价值参考
- 法律Agent制度对齐语料

---

## 验收状态

四轮LLM交叉验收：30/30通过，可冻结发版。

---

## 许可证

Apache License 2.0
---

## 配套项目

| 仓库 | 说明 |
|------|------|
| [core-codices](https://github.com/laubeing-droid/codex-claude-legal-cn-core-codices) | 📚 法律数据库 — 162 部中国法律全文 JSON |
| [codex-claude-legal-cn-main](https://github.com/laubeing-droid/codex-claude-legal-cn-main) | ⚖️ 法律技能集 — 150+ 子技能 |
| [mcp-hub](https://github.com/laubeing-droid/codex-claude-legal-cn-mcp-hub) | 🔌 MCP 连接器中心 |
| [judgment-predictor](https://github.com/laubeing-droid/codex-claude-legal-cn-judgment-predictor) | 🏛 裁判预测框架 — 以本框架对齐规则约束判决推理 |



