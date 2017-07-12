mojiTable = ("a".."z").to_a
ary1 = ("A".."Z").to_a
ary2 = ("0".."9").to_a
mojiTable.concat(ary1).concat(ary2)
def fact(n, mojiretu)
  return 1 if n == 0
  mojiTable.each do |i|
    mojiretu = i
    fact(n - 1, mojiretu)
  end
end
p mojiTable
mojiRetu = ''
fact(4, mojiRetu)
#mojiTable.each do |i|
#  mojiRetu = i
#end
#mojiTable.each do |i|
#  mojiRetu = i
#  mojiTable.each do |i|
#    mojiRetu1 = mojiRetu + i
#  end
#end
#mojiTable.each do |i|
#  mojiRetu = i
#  mojiTable.each do |i|
#    mojiRetu1 = mojiRetu + i
#    mojiTable.each do |i|
#      mojiRetu2 = mojiRetu1 + i
#      p mojiRetu2
#    end
#  end
#end
