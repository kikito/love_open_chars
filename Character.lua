Character = class('Character')

function Character:initialize(genre, body, face, eyes, iris, hair, hat)

  local genres = {'male', 'female'}
  self.genre = genre or (genres[math.random(#genres)])
  
  self.parts = {}
  
  self:addPart(body or Body:getRandom())
  self:addPart(eyes or Eyes:getRandom())
  self:addPart(iris or Iris:getRandom())
  
  
  local faceClass = MaleFace
  local hairClass = MaleHair
  local hatClass = MaleHat
  
  if self.genre == 'female' then
    faceClass = FemaleFace
    hairClass = FemaleHair
    hatClass = FemaleHat
  end

  self:addPart(face or faceClass:getRandom(), true)
  self:addPart(hair or hairClass:getRandom(), true)
  self:addPart(hat or hatClass:getRandom(), true)
  self:addPart(glasses or Glasses:getRandom(), true)

end

function Character:addPart(part, optional)
  if optional and math.random(2) == 2 then return end
  table.insert(self.parts, part)
  table.sort(self.parts, function(a,b) return a.position < b.position end)
end

function Character:draw()
  for _,part in ipairs(self.parts) do
    part:draw()
  end
end
