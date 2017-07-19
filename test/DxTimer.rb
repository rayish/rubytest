# codeing: shift_jis
require 'dxruby'
$font_j = Font.new(32,"MS ゴシック")

class Times < Font
  def initialize
  end
  def disp
  end
  def count_down
  end
end
#起動時は日本時間の表示
class JpTime < Times
  def disp
    @timer = Time.now.strftime("%X")
  end
  def draw
    Window.draw_font(120, 230, @timer, $font_j)
  end
end
#"クリック or Key入力でタイマーモードに入る

#タイマークラスを用意
class Timer < Times
  def initialize
    @timer = Time.local(0,1,1,0,0,0)
  end
  def secound_up
    if Input.key_down?(K_UP)
      @timer += 1
    end
  end
  def secound_down
    if Input.key_down?(K_DOWN)
      if @timer > Time.local(0,1,1,0,0,0)
        @timer -= 1
      end
    end
  end
  def secound_left
    if Input.key_down?(K_LEFT)
      @timer += 100
    end
  end
  def secound_right
    if Input.key_down?(K_RIGHT)
      if @timer >= Time.local(0,1,1,0,1,40)
        @timer -= 100
      end
    end
  end
  def timer_set(hour,minutes,second)
    @timer = Time.local(0,1,1,hour,minutes,second)
  end
  def count_down
    if @timer > Time.local(0,1,1,0,0,0)
      @timer -= Rational(1,60)
    end
  end
  def draw
    Window.draw_font(320, 230, @timer.strftime("%X"), $font_j)
  end
end
#キー入力でタイマー時間をセットする。
#キー入力でカウントダウン
#カウントゼロで何かを表示
ttimes = Times.new
jtime = JpTime.new
dtimer = Timer.new
timerFlg = false
cntDownFlg = false

Window.loop do

  jtime.disp

  if Input.mouse_push?(M_LBUTTON) && timerFlg == false
    timerFlg = true
    dtimer.timer_set(0,0,0)
  end
  if timerFlg == true && cntDownFlg == false
    dtimer.secound_up
    dtimer.secound_down
    dtimer.secound_right
    dtimer.secound_left
    if Input.mouse_push?(M_RBUTTON)
      cntDownFlg = true
    end
  end
  if timerFlg == true && cntDownFlg == true
    dtimer.count_down
    if Input.mouse_push?(M_LBUTTON)
      cntDownFlg = false
    end
  end
  dtimer.draw

  if Input.keyDown?(K_ESCAPE)
    break
  end

end