# tree‑sitter‑vb‑dotnet

[![npm version](https://img.shields.io/npm/v/tree-sitter-vb-dotnet.svg)](https://www.npmjs.com/package/tree-sitter-vb-dotnet)
[![license](https://img.shields.io/github/license/CodeAnt-AI/tree-sitter-vb-dotnet)](LICENSE)

> **Tree‑sitter grammar for Visual Basic .NET (VB.NET)** – incremental parsing for editors, code‑intel, refactoring tools and static‑analysis pipelines.

---

## Status

| Feature | Support |
|---------|---------|
| Modules / Classes / Structures / Interfaces | ✅ |
| Subs & Functions (incl. overloads, generics) | ✅ |
| Properties (auto / get‑set) | ✅ |
| Events & Delegates | ✅ |
| Control‑flow (`If…Else`, `Select Case`, loops, `Try…Catch`) | ✅ |
| LINQ / XML literals | ⚠️ *planned* |
| Preprocessor directives | ⚠️ parses as trivia only |
| Error recovery | ⚠️ basic |

The grammar aims to cover **VB 16.9 / .NET 5** syntax.  
Bug reports / PRs are very welcome!

---

## Installation

```bash
npm install tree-sitter tree-sitter-vb-dotnet   # parser + runtime
```

## Python package

```bash
pip install tree-sitter-vb-dotnet
```

```python
import tree_sitter
import tree_sitter_vb_dotnet

language = tree_sitter.Language(tree_sitter_vb_dotnet.language())
```

This fork of [rrangraj/tree-sitter-vb-dotnet](https://github.com/rrangraj/tree-sitter-vb-dotnet)
carries the binding fix and the real-world VB.NET grammar fixes contributed by
[@sloemo01](https://github.com/sloemo01), and renames the Python module from the
generator's doubled `tree_sitter_tree_sitter_vb_dotnet` to `tree_sitter_vb_dotnet`.
