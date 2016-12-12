local player = {}

speed = 100

function player:setup()
  self.img = love.graphics.newImage('assets/player.png')
  self.x = 100
  self.y = 100
end

return player
