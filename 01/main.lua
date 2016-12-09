function love.load()
    player = love.graphics.newImage("rect.png")
    x = 50
    y = 50
    speed = 300
end

function love.update(dt)
    if love.keyboard.isDown("right") then
        x = x + (speed * dt)
    end
    if love.keyboard.isDown("left") then
        x = x - (speed * dt)
    end
    if love.keyboard.isDown("up") then
        y = y - (speed * dt)
    end
    if love.keyboard.isDown("down") then
        y = y + (speed * dt)
    end
end

function love.draw()
    love.graphics.draw(player, x, y)
end


