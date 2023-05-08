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
