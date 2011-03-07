require('BodyPart')

local img

local classNames = {
  Body = 1,
  FemaleFace = 2,
  MaleFace = 2,
  Eyes = 3,
  Iris = 4,
  FemaleHair = 5,
  MaleHair = 5,
  Glasses = 6,
  FemaleHat = 7,
  MaleHat = 7
}

for className,position in pairs(classNames) do
  _G[className] = class(className, BodyPart)
  _G[className].position = position
end

function loadParts()

  img = love.graphics.newImage('images/open_chars.png')
  
  local w,h = 96, 192

  Body('caucasian', img, w*2,0)
  Body('green',     img, w*3,0)
  Body('olive',     img, w*4,0)
  Body('black',     img, w*5,0)

  FemaleFace('details', img, w*6,0)

  MaleFace('white_beard',      img, w*7, 0)
  MaleFace('long_white_beard', img, w*8, 0)
  MaleFace('black_beard',      img, w*9, 0)
  MaleFace('moustache',        img, w*10, 0)

  Eyes('normal',    img, 0,   h*1)
  Eyes('normal',    img, 0,   h*1)
  Eyes('normal',    img, 0,   h*1)
  Eyes('normal',    img, 0,   h*1) -- repetition makes normal much more frequent
  Eyes('surprised', img, w*1, h*1)
  Eyes('love',      img, w*2, h*1)
  
  Iris('black', img, w*3, h*1)
  Iris('green', img, w*4, h*1)
  Iris('red',   img, w*5, h*1)
  Iris('brown', img, w*6, h*1)
  Iris('blue',  img, w*7, h*1)
  
  MaleHair('white',     img, w*8,  h*1)
  MaleHair('semi_bald', img, w*9, h*1)
  MaleHair('squared',   img, w*10, h*1)
  MaleHair('cutted',    img, w*11, h*1)
  MaleHair('aphro',     img, w*12, h*1)

  FemaleHair('long_brown', img, w*13, h*1)
  FemaleHair('semi_long',  img, w*14, h*1)
  FemaleHair('ponytail',   img, w*15, h*1)

  FemaleHat('witch', img, 0, h*2)
  FemaleHat('santa', img, w*2, h*2)
  FemaleHat('crown', img, w*3, h*2)

  MaleHat('mafia',        img, w*1, h*2)
  MaleHat('santa',        img, w*2, h*2)
  MaleHat('crown',        img, w*3, h*2)
  MaleHat('medieval',     img, w*4, h*2)
  MaleHat('turbant',      img, w*5, h*2)
  MaleHat('stormtrooper', img, w*6, h*2)
  
  Glasses('dark',     img, w*7, h*2)
  Glasses('normal',   img, w*8, h*2)
  Glasses('mask',     img, w*9, h*2)
  Glasses('pirate',   img, w*10, h*2)
  Glasses('vendetta', img, w*11, h*2)
  
  

end
