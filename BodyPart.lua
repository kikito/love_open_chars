require('lib.middleclass.init')

local DEFAULT_WIDTH = 96
local DEFAULT_HEIGHT = 192

BodyPart = class('BodyPart')

function BodyPart:initialize(name, img, x, y, w, h)

  if not self.class.parts then
    self.class.parts = {}
    self.class.partsArray = {}
  end

  self.name, self.image, self.x, self.y = name, img, x, y
  self.w, self.h = w or DEFAULT_WIDTH, h or DEFAULT_HEIGHT
  self.quad = love.graphics.newQuad(self.x, self.y, self.w, self.h, img:getWidth(), img:getHeight())
  
  self.class.parts[name] = self
  table.insert(self.class.partsArray, self)
end

function BodyPart:draw(x,y)
  love.graphics.drawq(self.image, self.quad, x or 0, y or 0)
end

function BodyPart.getRandom(theClass)
  return theClass.partsArray[math.random(#theClass.partsArray)]
end

