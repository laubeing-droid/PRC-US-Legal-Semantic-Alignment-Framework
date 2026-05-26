<!--
version: 3.0.5
-->

# 中国法优先法律语义对齐框架

> PRC-First Legal Semantic Alignment Framework
> 面向 LLM 的美国法概念约束与中国法语境适配体系

[English](README.en.md)

当 LLM 处理涉华法律事务时，存在系统性风险：美国法概念被默认适用、普通法术语被直译为中国法概念、中国强行法被美式逻辑覆盖。本框架解决这个问题。

## 核心机制

| 机制 | 说明 |
|------|------|
| **功能映射** | 美国法概念 → 中国法制度的功能对应，非字面翻译 |
| **绝对阻断** | 22 项美式概念（consideration/discovery/Miranda/Chevron...）强制拦截 |
| **中国法优先** | 当美式逻辑与中国强行法冲突时，中国法覆盖 |
| **法域隔离** | 中国大陆/香港/美国三法域独立处理，不混同 |
| **推理链** | 五步 CoT 流水线 + If→Then 触发规则，LLM 可直接执行 |

## 结构

```
一、元规则层（6条Rule + 推理链）
二、16部中国部门法逐编映射
三、香港普通法桥梁
四、AI工作流模板
五、附录（22项阻断清单 + 中国特有制度 + JSON数据字典）
```

## 快速开始

```powershell
git clone https://github.com/laubeing-droid/PRC-US-Legal-Semantic-Alignment-Framework.git
cd PRC-US-Legal-Semantic-Alignment-Framework
.\install.ps1
```

## 用途

- 注入 Claude for Legal CN 的 System Prompt
- RAG 知识库底层术语-价值参考
- 法律 Agent 制度对齐语料

## 验收状态

四轮 LLM 交叉验收：30/30 通过，可冻结发版。

## 配套项目

| 仓库 | 说明 |
|------|------|
| [core-codices](https://github.com/laubeing-droid/legal-cn-core-codices) | 法律数据库 — 162 部中国法律全文 JSON，本框架中国法概念基准 |
| [legal-cn-main](https://github.com/laubeing-droid/legal-cn-main) | 法律技能集 — 150+ 子技能，本框架作为 System Prompt 注入 |
| [mcp-hub](https://github.com/laubeing-droid/legal-cn-mcp-hub) | MCP 连接器中心 |
| [judgment-predictor](https://github.com/laubeing-droid/legal-cn-judgment-predictor) | 裁判预测框架 — 以本框架对齐规则约束判决推理 |

## 许可证

Apache License 2.0
