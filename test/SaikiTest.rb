#パスワード解析の総当たり用に記号以外の文字（0〜9,A〜Z,a〜z）を使って
#指定した桁数までの文字列を生成する（実用性全くなし）
#62種類**桁数の配列が作成されます。ex 3桁の場合,"0"〜"zzz"
$mojiTable = [('0'..'9'),('A'..'Z'),('a'..'z')].map{|c| c.to_a}.flatten
mojiretu = []
def makeString(ketasu, mojiretu,mojiAdd)
  return 0 if ketasu == 0
  $mojiTable.each do |moji|
    mojiretu << mojiAdd + moji
    makeString(ketasu - 1, mojiretu,mojiAdd + moji)
  end
end
makeString(3,mojiretu,"")
p mojiretu
#再帰を使用しているので、並びは異なるけどイメージはこんな感じ
#  mojiTable.each do |i|
#    mojiretu << i
#  end
#  mojiTable.each do |i|
#    mojiSave = i
#    mojiTable.each do |i|
#      mojiretu << mojiSave + i
#    end
#  end
#  mojiTable.each do |i|
#    mojiSave = i
#    mojiTable.each do |i|
#      mojiSave1 = mojiSave + i
#      mojiTable.each do |i|
#        mojiretu << mojiSave1 + i
#      end
#    end
#  end