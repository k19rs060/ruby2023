#コマンドライン引数の値を画面に表示
msg=""
i=0
while i<ARGV.length
    msg += ARGV[i].to_s+" "
    i+=1
end
puts msg
