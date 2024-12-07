# Lua Nil in Arithmetic Operations

This repository demonstrates a potential issue with how Lua handles arithmetic operations involving `nil` values. In certain contexts, a `nil` value in an arithmetic expression does not generate an error but rather returns `nil`. This behavior can be unexpected for programmers accustomed to other languages where such operations might result in an error or a default value.

The file `bug.lua` showcases this behavior.  The `foo` function attempts to add two numbers; however, if either `a` or `b` or both are `nil`, the function returns `nil` instead of raising an error or defaulting to 0.

The `bugSolution.lua` demonstrates one way to improve the function's robustness by explicitly handling the `nil` cases.