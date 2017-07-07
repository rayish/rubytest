class Inu
  def initialize(name, kensyu, koubutu="鰹節")
    @name = name
    @kensyu = kensyu
    @koubutu = koubutu
    puts "#{@kensyu}が生まれました。名前は#{@name}です。"
  end
  def satogo(name)
    puts "#{@name}は里子に出されました。"
    @name = name
    puts "新しい名前は#{@name}です。"
  end
  def naku
    puts "#{@name}「ワンワン！」"
  end
  def esayari(esa)
    print "#{@name}に#{esa}をあげました。"
    if esa == @koubutu
      puts "しっぽを振りました。"
    else
      puts "#{esa}を食べました。"
    end
  end
end

shiba = Inu.new("ポチ","柴犬")
akitaken = Inu.new("クロ","秋田犬")
dogs = [shiba, akitaken]
for i in dogs
  i.naku
end
#dogs.each do |Inu|
#  puts dogs.nuku
#end
shiba.esayari("干し肉")
shiba.satogo("シロ")

class Dog
  def initialize(name)
    @name = name
  end
  def yobu
    @name
  end
  def naku
    'ワンワン'
  end
  def satogo(changname)
    @name = changname
  end
  def eat(koubutu)
    if koubutu == "スルメ"
      '尻尾を振る'
    else
      '尻尾を振らない'
    end
  end
end

sibainu = Dog.new("ポチ")
puts sibainu.yobu
akitaken = Dog.new("五郎")
puts akitaken.yobu

sibainu.satogo("たま")
puts sibainu.yobu

puts sibainu.naku
puts akitaken.naku

puts sibainu.eat("スルメ")
puts akitaken.eat("ドッグフード")