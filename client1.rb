require "socket" #javaでいうところのimport

disp_head = false
disp_body = true

if ARGV[0] == "-h"
    disp_head = true
    disp_body = false
    ARGV.shift
elsif ARGV[0] == "-b"
    disp_body = true
    ARGV.shift
end

port=80
host = ARGV[0]
path = ARGV[1]

s=TCPSocket.open host, port # (host,port)
s.puts "GET #{path} HTTP/1.1" # ="GET" + path + "HTTP/1.0" ("GET #{path} HTTP/1.1")
s.puts "Host: #{host}" # "Host:" + host
s.puts #sに出力する

while line=s.gets #headのみ
    line.chomp!
    break if line==""
    puts line if disp_head
end

while line=s.gets #bodyのみ
    line.chomp! 
    puts line if disp_body
end

s.close