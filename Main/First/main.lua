function love.conf(t)
t.window.title = "Farmer"
end
function love.load()
man = love.graphics.newImage("Man.png")
x = 50
y = 50
end

function love.keypressed(key, False)
if key == 'a' then
x = x - 1
end
end

function keys()
left = love.keyboard.isDown('a')
up = love.keyboard.isDown('w')
down = love.keyboard.isDown('s')
right = love.keyboard.isDown('d')
exit = love.keyboard.isDown("escape")
end

function love.draw()
love.graphics.draw(man, x, y)
print(x, y)
end

function love.update(dt)
keys()
--love.keypressed()
if exit then
love.event.quit()
end
if left then
love.keypressed('a', False)
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

