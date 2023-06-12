require "socket" #javaでいうところのimport

port=80
s=TCPSocket.open("www.is.kyusan-u.ac.jp", port)
s.puts("GET /~toshi/ HTTP/1.0") #sに出力する
s.puts #sに出力する
while line=s.gets
    line.chomp! #line=line.chomp
    break if line==""
    #if line==""
    #    break
    #end
    puts line
end
s.close