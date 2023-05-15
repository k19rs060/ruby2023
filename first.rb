puts "Hello" # puts = put string
puts ("ksu") # ()があっても良い

i=5
s="ksu"
puts s+i.to_s # i に対して i.to_s "5"という文字列に変換している

j=2.0
# 四則演算
puts i+j
puts i-j
puts i*j
puts i/j
puts i%j

#条件分岐
if i%2 == 0
    puts "even"
else
    puts "odd" # 複数かける
    puts "kisu"
end

if i%3 == 0
    puts "0"
elsif i%3==1 # else if のこと
    puts "1"
else
    puts "2"
end

# 繰り返し
# rubyの繰り返しは基本while
i=5
while i>0
    print "#" # putsは改行あり printは改行なし
    i-=1 # rubyには-- ++ はない
end
puts

# 配列
ia = [1, 5, 10]
puts ia[0]
sa = ["a", "b"]
puts sa[1]
xa = [1, "a", 10, [5,3]]
puts xa[2]
puts xa[3][0]

l=0
while l<ia.length
    print ia[l]
    print ","
    l+=1
end
puts

# 拡張
xa.each do |i|
    print i
    print ","
end
puts

# n回繰り返すとき
6.times do
    print "*"
end
puts

#入力
s=gets
# s=s.chomp # 改行コードを取り除く方法
s.chomp! # s.chomp == s=s.chomp
puts "##"+s+"**"
p s # p デバック用のコマンド
p 1
p "1"
