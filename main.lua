require('bodyparts')
require('Character')

local character

function resetChar()
  character = Character:new()
end

function love.load()
  loadParts()
  resetChar()
end

function love.draw()
  character:draw()
end

function love.keypressed()
  resetChar()
end
