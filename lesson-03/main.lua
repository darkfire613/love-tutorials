local Player = require "player"
local Input = require "inputHandler"

function love.load()
  Player:setup()

  Input:addAction('w', function(dt) Player.y = Player.y - (speed * dt) end)
  Input:addAction('a', function(dt) Player.x = Player.x - (speed * dt) end)
  Input:addAction('s', function(dt) Player.y = Player.y + (speed * dt) end)
  Input:addAction('d', function(dt) Player.x = Player.x + (speed * dt) end)
end

function love.update(dt)
  for key in pairs(Input.actions) do
    if love.keyboard.isDown(key) then
      Input.actions[key](dt)
    end
  end
end

function love.draw()
  love.graphics.draw(Player.img, Player.x, Player.y)
end
