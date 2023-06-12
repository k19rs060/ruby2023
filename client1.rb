require "socket" #javaでいうところのimport

port=80
host = ARGV[0]
path = ARGV[1]

s=TCPSocket.open(host, port)
s.puts("GET #{path} HTTP/1.0") #="GET" + path + "HTTP/1.0"
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