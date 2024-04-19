# Lua-POO
Object Oriented Programming in LUA

# A simple OOP library for Lua that uses middleclass plugin. It has inheritance, metamethods (operators), class variables and weak mixin support.

_URL: https://github.com/kikito/middleclass

_USAGE_SAMPLE:

local class = require "libs.middleclass"

-- Constructor
local MyFruit = class("MyFruit")

function MyFruit:initialize(age)
    self.age = age
end

function MyFruit:IsGood()
    return self.age >= 7
end

return MyFruit
