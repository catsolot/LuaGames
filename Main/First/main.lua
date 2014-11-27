function love.load()
dofile("config.lua")
man = love.graphics.newImage("Man.png")
x = 50
y = 50
end

function keys()
left = love.keyboard.isDown('a', "left")
up = love.keyboard.isDown('w')
down = love.keyboard.isDown('s')
right = love.keyboard.isDown('d')
end

function love.draw()
love.graphics.draw(man, x, y)
print(x, y)
end

function love.update(dt)
keys()
if left then
x = x - 5
end
if right then 
x = x + 5
end
if up then
y = y - 5
end
if down then 
y = y + 5
end
end

