class Cat
  @sippo
  @ashi
#  def initialize(sippo, ashi=4)
#    @sippo = sippo
#    @ashi = ashi
#  end
  def bark
    'ニャー'
  end
  def run
    'すたすた'
  end
end

class Bear < Cat
  def run
    'ビューん'
  end
end

class Dog < Cat
  attr_reader :nakigoe
  def initialize(name, nakigoe)
    super()
    @name = name
    @nakigoe = nakigoe
  end
  def bark(nakigoe=self.nakigoe)
    "#{@name}が#{nakigoe}と鳴いた。"
  end
  def relax(dousa)
    "#{@name}が#{dousa}をふる。"
  end
end

bear = Bear.new
puts bear.run

akita = Dog.new("ポチ", "ワンワン")

puts akita.bark()
puts akita.bark("キャンキャン")

puts akita.relax("尻尾")