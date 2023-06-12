require "socket" #javaでいうところのimport

port=80
s=TCPSocket.open("www.is.kyusan-u.ac.jp", port)
s.puts("GET /~toshi/ HTTP/1.0") #sに出力する
s.puts #sに出力する

is_body=false
while line=s.gets
    line.chomp!
    puts line if is_body
    is_body=true if line==""
end
s.close