class Neko
  attr_accessor :name
  @@tousuu = 0
  Syurui = "NEKO"
  def initialize(name)
    @name = name
    @@tousuu += 1
  end
  def naku(nakigoe)
    print @name, "は鳴いた。", nakigoe, "\n"
  end
  def Neko.count
    @@tousuu
  end
end

nora = Neko.new("Dora")
dora = Neko.new("Mike")
kaineko = Neko.new("Todo")

p nora.name
p Neko::Syurui

nora.naku("みゃー")
dora.naku("わんわん")
kaineko.naku("うきゃきゃ")
