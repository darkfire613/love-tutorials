function love.load()
  player = love.graphics.newImage('assets/player.png')
end

function love.update(dt)

end

function love.draw()
  love.graphics.draw(player, 100, 100)
end
