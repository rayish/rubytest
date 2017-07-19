# coding UTF-8

def Dice
  x = Random.rand(1..6)
  puts x
  return x
end

def dice5
  cnt = 0
  5.times do
    cnt += Dice()
  end
  return cnt
end

while gets.chomp! != "n"
  puts dice5()
end