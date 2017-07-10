class Dog
  @name
  @kind
  @bark
  def initialize(name)
    @name = name
  end
  attr_accessor :bark
  def printBark
    puts "#{@bark}"
  end
  def getNameAndKind()
    return @name + "(" + @kind + ")"
  end
end
#------------------------------------------------------------
class Akitaken < Dog
  Kind = "秋田犬"
  def initialize(name)
    super
    @kind = Kind
  end
  def printBark
    puts "#{@bark}!!"
  end
end
#------------------------------------------------------------
class Chihuahua < Dog
  Kind = "チワワ"
  def initialize(name)
    super 
    @kind = Kind
  end
  def printBark
    puts "#{@bark}#{@bark}#{@bark}"
  end
end
print "ある", Akitaken::Kind, "と", Chihuahua::Kind, "の会話\n"
shiro = Akitaken.new("シロ")
shiro.bark = "ワン"
kuro = Chihuahua.new("クロ")
kuro.bark = "キャン"
print shiro.getNameAndKind(), "の発言："
shiro.printBark()
print kuro.getNameAndKind(), "の発言："
kuro.printBark()