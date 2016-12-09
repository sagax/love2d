function love.load()
    player = {
        x = 0,
        y = 0,
        image = love.graphics.newImage("rect.png"),
        y_velocity = 0
    }
    gravity = 600
    jump_height = 300
    speed = 300
    winW, winH = love.graphics.getWidth(), love.graphics.getHeight()
end

function love.update(dt)
    if love.keyboard.isDown("a") then
        player.x = player.x - speed * dt
    end
    if love.keyboard.isDown("d") then
        player.x = player.x + (speed * dt)
    end
    if player.y_velocity ~= 0 then
        player.y = player.y + player.y_velocity * dt
        player.y_velocity = player.y_velocity - gravity * dt
        if player.y < 0 then
            player.y_velocity = 0
            player.y = 0
        end
    end
end

function love.draw()
    love.graphics.rectangle("fill", 0, winH / 2, winW, winH / 2)
    love.graphics.translate(winW / 2, winH / 2)
    love.graphics.draw(player.image, player.x, player.y)
end

function love.keypressed(key)
    if key == "w" then
        if player.y_velocity == 0 then
            player.y_velocity = jump_height
        end
    end
end
