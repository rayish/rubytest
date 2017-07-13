require 'dxruby'

font_j = Font.new(32,"MS ゴシック")
font_u = Font.new(32)

Window.loop do
  Window.draw_font(120, 180, "日本時間", font_j)
  japanesTime = Time.now.strftime("%H:%M:%S")
  Window.draw_font(120, 230, japanesTime, font_j)
  Window.draw_font(320, 180, "グリニッジ時間", font_j)
  utcTime = Time.now.utc.strftime("%H:%M:%S")
  Window.draw_font(320, 230, utcTime, font_j)
end