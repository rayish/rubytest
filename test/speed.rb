def checkSpeed(a)
  print "現在の速度：", a, "km"
  if a >= 70
    print "　スピードを出しすぎです！減速してください"
  elsif a < 20
    print "　もっと加速してください"
  end
  print "\n"
end
def upSpeed(s)
  print "加速! "
  s += 10 if s < 100
  checkSpeed(s)
  return s
end
def downSpeed(s)
  print "減速！"
  s -= 10 if s > 0
  checkSpeed(s)
  return s
end
speed = 0
for i in 1..11
  speed = upSpeed(speed)
end
for i in 1..4
  speed = downSpeed(speed)
end