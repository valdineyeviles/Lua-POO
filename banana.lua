local class = require 'libs.middleclass'

local Banana = class("Banana")

function Banana:initialize(age)
    self.age = age
end

function Banana:IsGood()
    return self.age >= 7
end

return Banana