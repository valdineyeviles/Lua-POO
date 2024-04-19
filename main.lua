--[[
local Banana = require "Banana"

local b1 = Banana:new(7)
local b2 = Banana:new(6)
local b3 = Banana:new(1)

b1.madura = false

print(b1:IsGood())
print(b2:IsGood())
print(b3:IsGood())
]]

--[[

* Os 4 Pilares da Programação Orientada a Objetos (POO):

1. Abstração: define a função e a complexidade fica por trás.
2. Herança: herança de códigos.
3. Polimorfismo: é a extensão de muitas formas (alteração de formas), uma classe que extende outra.
4. Encapsulamento:

]]

-- Habilitar UTF-8 no terminal
os.execute("chcp 65001")

local Creeper = require "creatures.creeper"
local Sheep = require "creatures.sheep"

local myCreeper = Creeper:new()
local mySheep = Sheep:new()

myCreeper.health = 0

local creatures = {
    myCreeper,
    mySheep
}

for _, creature in pairs(creatures) do
    local hostileString = creature:isHostile() and "hostil" or "dócil"
    local aliveString = creature:isAlive() and "viva" or "morta"
    print(string.format("Nossa criatura %s é %s, e ela está %s.", creature:getName(), hostileString, aliveString))
end

--[[
myCreeper.health = 0
print(string.format("Nome: %s", myCreeper:getName()))
print(string.format("A vida está cheia: %s", myCreeper:isHealthFull()))
print(string.format("Está vivo: %s", myCreeper:isAlive()))
print(string.format("Está morto: %s", myCreeper:isDead()))
]]