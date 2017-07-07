def a(&b)
  b.call()
end
a{print "ブロック引数"}