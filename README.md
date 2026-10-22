# 初中数学

for my son, I have created this repository to help him with his middle school mathematics studies. The repository contains various resources, exercises, and explanations to aid in understanding key mathematical concepts.

共 **32** 篇文档（不含模板 `template.typ`），共用根目录下的 `template.typ` 排版。
本仓是统一模板的**大字版**：`.template.conf` 里 `TEXTSIZE=16pt`，正文字号比其余几仓大 4pt。

## 内容概览

| 类别 | 文件 | 说明 |
|---|---|---|
| 知识讲解 | `一元二次方程.typ`、`韦达定理.typ`、`平方根.typ`、`一次函数.typ`、`二次函数.typ`、`三角形全等.typ`、`初中数学公式.typ` | 求根公式/韦达定理/平方根/一次函数/二次函数/三角形全等讲解 + 26 条公式速查卡（代数/几何/三角函数/统计） |
| 练习卷 | `一元二次方程1/2/3/4.typ`、`韦达定理1/2/3.typ`、`平方根1/2.typ`、`因式分解1/2/3/4.typ`、`一次函数1/2.typ`、`二次函数1/2.typ`、`三角形全等1.typ` | 共 18 份约 340 题，数字 1/2 为换数换版，`3`/`4` 为提高篇 |
| 测试卷 | `整式乘法.typ`、`整式乘法2/3/4.typ`、`整式乘法随口背1.typ` | 北师大版七年级下册单元卷（C 卷带解析），外加 20 道整式乘法速练与公式对照表 |
| 杂项 | `learn.typ` | 学习笔记：韦达定理 + 例题（$x^77 + 10x - 5 = 0$ 各根 77 次方和），并演示 `@preview/diverential`、`@preview/physica` 两个数学包的效果 |
| 模板 | `template.typ` | 共享样式模板，自动生成，用法见文件头部注释 |

## 构建（.typ → PDF）

需要先安装 [Typst](https://typst.app/)（macOS：`brew install typst`；Linux：见 [releases](https://github.com/typst/typst/releases) 或系统包管理器），并确保 `typst` 在 PATH 中。

- **Windows（PowerShell）**：`./build.ps1`
- **Linux / macOS（bash）**：`./build`

两个脚本都会自动跳过共享模板 `template.typ`，并支持只编译单个文档：

- `./build 平方根`（或 `./build --only 平方根 --output dist`）
- `./build.ps1 -Only 平方根`

PDF 与源文件同目录（`.gitignore` 已忽略 `*.pdf`）。全量 32 篇实测共 131 页。

## 模板同步

`template.typ` 不是手写的：它由 [typst-notes](https://github.com/qiuzhanghua/typst-notes)
的 `lib.typ` 按本仓 `.template.conf` 生成，**请勿手工修改**。

```
.template.conf        TAG（源仓版本）、EQNUM（公式编号）、TEXTSIZE=16pt（大字版）
sync-template.sh      重新生成 / 校验（bash；Windows 用 sync-template.ps1）
.github/workflows/template.yml   CI：与源逐字节比对 + 本地兜底检查
```

```bash
./sync-template.sh          # 重新生成 template.typ（内容不变则不写盘）
./sync-template.sh --check  # 只校验，不一致退出码 1
```

文档内**不要**写 `#set text(font: ...)` / `#set page(...)` / `#set math.equation(...)`：
字体列表、页面、公式编号都由模板统一提供，单字体覆盖会让中文失去 CJK 回退，
也会让本仓的 16pt 大字策略失效。

## 依赖

- [Typst](https://typst.app/) 0.15.1 实测通过
- 思源宋体（Source Han Serif）：模板的中文字体，缺失时 Typst 会**静默回退**，版面会变样
- `learn.typ` 额外引用 `@preview/diverential:0.3.0` 与 `@preview/physica:0.9.8`
  （首次编译需联网下载，之后走本地缓存）；其余 31 篇无包依赖，离线可编译

## 许可

[MIT](LICENSE)
