local Creature = require "creatures.creature"
local Monster = Creature:subclass("Monster")

-- Constructor
function Monster:initialize(name)
    Creature.initialize(self, name)
    return name
end

function Monster:isHostile()
    return true
end

return Monster