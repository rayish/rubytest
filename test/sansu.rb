def sansu(meth,a,b,c)
  x = a + b + c
  y = a * b * c
  case meth
  when "和"
    print meth, ":", a, "+", b, "+", c, "=", x, "\n"
    puts "#{meth}:#{a}+#{b}+#{c}=#{x}\n"
  when "積"
    print meth, ":", a, "*", b, "*", c, "=", y, "\n"
  end
end
sansu("和",5,8,3)
sansu("積",5,8,3)