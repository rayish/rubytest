require 'dxruby'

class Ball < Sprite
  @@image = Image.new(20, 20).circle_fill(10,10,10,[255,255,0])

  def initialize
    super
    self.x = 200
    self.y = 200
    @mx, @my = 3.0, 3.0   #多重代入
    @flying = false
    @kazu = 1
    self.image = @@image
  end
  def hit(obj)
    p obj.x
    p self.x
    p self.x - obj.x
    if (self.x - obj.x).abs < 20 || (self.x - obj.x).abs > 78
      @mx *= -1
    end
    @my *= -1 if @my >= 0
  end
  def update
    if @flying
      self.x += @mx
      self.y += @my
      if self.x >= 639 - @@image.width || self.x <= 0
        @mx *= -1
      end
#      if self.y >= 479 - @@image.height || self.y <= 0
      if self.y <= 0
        @my *= -1
      end
      if self.y >= 479 - @@image.height
        @flying = false
        @kazu -= 1
      end
    else
      if @kazu != 0
        self.x = Input.mouse_pos_x
        self.y = 380
        if Input.mouse_push?(M_LBUTTON)
          @flying = true
        end
      end
    end
  end
  def getkazu
    return @kazu
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
  end
  def shot(obj)
#    if (self.x - obj.x + 10).abs > (self.y - obj.y + 10).abs
#      obj.x *= -1
#    end
    self.vanish
  end
end
class Block_factory
  def create(color,x,y)
  end
end
ball = Ball.new
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
font = Font.new(32)
Window.loop do
  Sprite.draw(blk)
  Sprite.check(blk, ball)
  ball.update
  ball.draw
  Sprite.check(p, ball)
  p.update
  p.draw
  if ball.getkazu == 0
    Window.draw_font(240, 200, "GAME OVER", font) 
  end
end
