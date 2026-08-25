# 初中数学

for my son, I have created this repository to help him with his middle school mathematics studies. The repository contains various resources, exercises, and explanations to aid in understanding key mathematical concepts.

## 内容概览

| 类别 | 文件 | 说明 |
|---|---|---|
| 知识讲解 | `一元二次方程.typ`、`韦达定理.typ`、`平方根.typ`、`一次函数.typ`、`二次函数.typ`、`三角形全等.typ`、`初中数学公式.typ` | 求根公式/韦达定理/平方根/一次函数/二次函数/三角形全等讲解 + 26 条公式速查卡（代数/几何/三角函数/统计） |
| 练习卷 | `一元二次方程1/2/3/4.typ`、`韦达定理1/2/3.typ`、`平方根1/2.typ`、`因式分解1/2/3/4.typ`、`一次函数1/2.typ`、`二次函数1/2.typ`、`三角形全等1.typ` | 共 18 份约 340 题，数字 1/2 为换数换版，`3`/`4` 为提高篇 |
| 测试卷 | `整式乘法.md` ~ `整式乘法4.md`、`整式乘法随口背1.md` | 北师大版七年级下册单元卷（C 卷带解析） |
| 模板 | `template.typ` | 共享样式模板，用法见文件头部注释 |

## 构建（.typ → PDF）

需要先安装 [Typst](https://typst.app/)（macOS：`brew install typst`；Linux：见 [releases](https://github.com/typst/typst/releases) 或系统包管理器），并确保 `typst` 在 PATH 中。

- **Windows（PowerShell）**：`./build.ps1`
- **Linux / macOS（bash）**：`./build`

两个脚本都会自动跳过共享模板 `template.typ`，并支持只编译单个文档：

- `./build 平方根`（或 `./build --only 平方根 --output dist`）
- `./build.ps1 -Only 平方根`
