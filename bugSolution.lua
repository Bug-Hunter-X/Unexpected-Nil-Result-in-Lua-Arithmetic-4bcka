local function foo(a, b)
  a = a or 0  -- Assign 0 if 'a' is nil
  b = b or 0  -- Assign 0 if 'b' is nil
  return a + b
end

print(foo(10, 20))  -- Output: 30
print(foo(nil, 20)) -- Output: 20
print(foo(10, nil)) -- Output: 10
print(foo(nil, nil)) -- Output: 0

-- Alternative solution using Lua's coalescing operator (>= Lua 5.3)
local function foo2(a, b)
  return (a or 0) + (b or 0)
end

print(foo2(10, 20))  -- Output: 30
print(foo2(nil, 20)) -- Output: 20
print(foo2(10, nil)) -- Output: 10
print(foo2(nil, nil)) -- Output: 0