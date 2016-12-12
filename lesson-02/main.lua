local Player = require "player"

function love.load()
  Player:setup()
end

function love.update(dt)
  if love.keyboard.isDown('a') then
    Player.x = Player.x - (speed * dt)
  end

  if love.keyboard.isDown('d') then
    Player.x = Player.x + (speed * dt)
  end

  if love.keyboard.isDown('w') then
    Player.y = Player.y - (speed * dt)
  end

  if love.keyboard.isDown('s') then
    Player.y = Player.y + (speed * dt)
  end
end

function love.draw()
  love.graphics.draw(Player.img, Player.x, Player.y)
end
