# codeing: shift_jis
require 'dxruby'

#起動時は日本時間の表示
class JapanTime < Font
  def initialize
    @japanesTime = Time.now.strftime("%H:%M:%S")
  end
  def disp
    font_j = Font.new(32,"MS ゴシック")
    @japanesTime = Time.now.strftime("%H:%M:%S")
    Window.draw_font(120, 230, @japanesTime, font_j)
  end
end
#"クリックorKey入力でタイマーモードに入る

#タイマークラスを用意
class Timer < Font
  def initialize
    @timer = Time.local(0,1,1,0,0,0)
  end
  def timer_set(hour,minutes,second)
    font_j = Font.new(32,"MS ゴシック")
    @timer = Time.local(0,1,1,hour,minutes,second)
    strtimer = @timer.strftime("%X")
    Window.draw_font(320, 230, strtimer, font_j)
  end
  def timer_disp
    font_j = Font.new(32,"MS ゴシック")
    @timer = @timer - Rational(1,60)
    strtimer = @timer.strftime("%X")
    Window.draw_font(320, 230, strtimer, font_j)
  end
end
#キー入力でタイマー時間をセットする。
#キー入力でカウントダウン
#カウントゼロで何かを表示

jtime = JapanTime.new
dtimer = Timer.new

Window.loop do
  jtime.disp
  dtimer.timer_set(0,5,0)
end