local class = require "libs.middleclass"

local Creature = class("Creature")

-- Constructor
function Creature:initialize(name)
    self.name = name
    self.health = 0
    self.maxHealth = 0
end

---Retorna o nome da criatura.
---@return string
function Creature:getName()
    return self.name
end

---Verifica se a criatura é hostil.
---@return nil
function Creature:isHostile()
end

---Retorna os pontos de vida da criatura.
---@return integer
function Creature:getHealth()
    return self.health
end

---Retorna a vida máxima da criatura.
---@return integer
function Creature:getMaxHealth()
    return self.maxHealth
end

---Retorna se a vida da criatura está cheia.
---@return boolean
function Creature:isHealthFull()
    return self.health >= self.maxHealth
end

---Verifica se a criatura está viva.
---@return boolean
function Creature:isAlive()
    return self.health > 0
end

---Verifica se a criatura está morta.
---@return boolean
function Creature:isDead()
    return not self:isAlive()
end

return Creature