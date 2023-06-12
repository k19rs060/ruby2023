require "socket" #javaでいうところのimport

port=80
s=TCPSocket.open("www.is.kyusan-u.ac.jp", port)
s.puts("GET /~toshi/index.html")
while line=s.gets
    puts line
end
s.close