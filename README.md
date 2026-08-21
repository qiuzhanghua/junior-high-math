# 初中数学

for my son, I have created this repository to help him with his middle school mathematics studies. The repository contains various resources, exercises, and explanations to aid in understanding key mathematical concepts.

## 构建（.typ → PDF）

需要先安装 [Typst](https://typst.app/)（macOS：`brew install typst`；Linux：见 [releases](https://github.com/typst/typst/releases) 或系统包管理器）。

- **Windows（PowerShell）**：`./build.ps1`
- **Linux / macOS（bash）**：`./build.sh`

两个脚本都会自动跳过共享模板 `template.typ`，并支持只编译单个文档：

- `./build.sh 平方根`（或 `./build.sh --only 平方根 --output dist`）
- `./build.ps1 -Only 平方根`

模板用法见 `template.typ` 文件头部的注释。
