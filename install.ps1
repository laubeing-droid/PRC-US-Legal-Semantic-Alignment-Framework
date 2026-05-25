<#
.SYNOPSIS
  PRC-US-Legal-Semantic-Alignment-Framework 安装脚本
.DESCRIPTION
  中美法律语义对齐框架。提供概念映射、阻断列表和中式推理护栏。
  本仓库通常作为 codex-claude-legal-cn-main 的必需依赖被自动安装。
#>
$ErrorActionPreference = 'Stop'
$RepoRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
Write-Host "=== PRC-US-Legal-Semantic-Alignment-Framework ===" -ForegroundColor Green
Write-Host "  中美法律语义对齐框架已就绪" -ForegroundColor Green
Write-Host "  路径: $RepoRoot" -ForegroundColor Cyan
Write-Host ""
Write-Host "  核心文件:" -ForegroundColor White
Write-Host "    PRC-US-Legal-Semantic-Alignment-Framework.md — 对齐框架主文档" -ForegroundColor White
Write-Host "    README.md / README.en.md                  — 中英文说明" -ForegroundColor White
