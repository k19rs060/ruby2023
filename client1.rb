require "socket" #javaでいうところのimport

port=80
s=TCPSocket.open("www.is.kyusan-u.ac.jp", port)
s.puts("GET /~toshi/ HTTP/1.0") #sに出力する
s.puts #sに出力する

while line=s.gets
    line.chomp!
    break if line==""
end

while line=s.gets
    line.chomp!
    puts line
end

s.close