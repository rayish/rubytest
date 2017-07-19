#float計算で、誤差が生じる例

# coding UTF-8

def sesi_ondo(kasi)
  return (kasi - 32) * Rational(5, 9)
end

def kasi_ondo(sesi)
  return sesi * Rational(9, 5) + 32
end

sesi = gets.to_i #1で入力
kasi = kasi_ondo(sesi)
puts kasi.to_f
sesi = sesi_ondo(kasi)
puts sesi.to_i
