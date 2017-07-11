require 'dxruby'

class Ball < Sprite
  @@image = Image.new(20, 20).circle_fill(10,10,10,[255,255,0])

  def initialize
    super
    self.x = 200
    self.y = 200
    @mx, @my = 2.0, 2.0   #多重代入
    self.image = @@image
  end
  def hit
    @my *= -1
  end
  def update
    self.x += @mx
    self.y += @my
    if self.x >= 639 - @@image.width || self.x <= 0
      @mx *= -1
    end
    if self.y >= 479 - @@image.height || self.y <= 0
      @my *= -1
    end
  end
end

class Pad < Sprite
  @@image = Image.new(100,10, C_WHITE)
  def initialize
    super
    self.x = 100
    self.y = 400
    self.image = @@image
  end
  def update
    self.x = Input.mouse_pos_x - @@image.width / 2
  end
end

class Block < Sprite
  @@image_yellow = Image.new(39, 20, [255, 255, 0])
  @@image_cyan = Image.new(39, 20, [255, 0, 255])
  @@image_magenta = Image.new(39, 20, [0, 255, 255])
  def initialize(color, x, y)
    super
    self.x = x
    self.y = y
    eval "self.image = @@image_#{color}"
#    if color == "yellow"
#      self.image = @@image_yellow
#    elsif color == "cyan"
#      self.image = @@image_cyan
#    else
#      self.image = @@image_magenta
#    end
  end
  def shot
    self.vanish
  end
end
s = Ball.new
p = Pad.new
blk = []
16.times do |i|
  blk << Block.new("yellow", i * 40, 40)
end
16.times do |i|
  blk << Block.new("cyan", i * 40, 70)
end
16.times do |i|
  blk << Block.new("magenta", i * 40, 100)
end

Window.loop do
  Sprite.draw(blk)
  if s === blk
  end
  Sprite.check(blk, s)
  s.update
  s.draw
  Sprite.check(p, s)
  p.update
  p.draw
end
