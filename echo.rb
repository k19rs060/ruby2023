#コマンドライン引数の値を画面に表示
msg = ARGV

i=0
while i<msg.length
    print msg[i].to_s+" "
    i+=1
end
puts
