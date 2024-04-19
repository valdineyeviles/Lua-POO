local Creature = require "creatures.creature"
local Animal = Creature:subclass("Animal")

-- Constructor
function Animal:initialize(name)
    Creature.initialize(self, name)
    return name
end

function Animal:isHostile()
    return false
end

return Animal