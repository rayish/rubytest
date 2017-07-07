require 'dxruby'

img_racket = Image.new(60, 10, [255, 255, 255])  #打ち返す板
img_ball = Image.new(20, 20).circle_fill(10, 10, 10,[255, 255, 0]) #ボール

ball_x, ball_y = 100, 20
ball_mx, ball_my = 2, 5
Window.loop do
  x = Input.mouse_pos_x  # マウスカーソルのx座標
  y = Input.mouse_pos_y  # マウスカーソルのy座標
  Window.draw(ball_x, ball_y, img_ball)
  Window.draw(x - 30, y - 5 , img_racket)  # 四角形を描画する
  ball_x += ball_mx
  ball_y += ball_my
  if ball_x <= 0
    ball_mx *= -1
  end
  if ball_y <= 0
    ball_my *= -1
  end
  if ball_x >= 619
    ball_mx *= -1
  end
  if ball_y >= 459
    ball_my *= -1
  end
#  if ball_y == y
#    ball_my *= -1
#  end
  if (ball_x >= x - 30) && (ball_x <= x + 30) && (ball_y >= y - 20)
    ball_my *= -1
  end
end
