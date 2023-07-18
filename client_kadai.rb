require "socket"

port=80
host = ARGV[0]
path1 = ARGV[1] #世代

#引数3つ目(pathの2つ目)がない時の処理
if ARGV.size==3
    path2 = ARGV[2]
else
    path2 = ""
end

#ex)GET /-p/○ HTTP/1.1
s=TCPSocket.open host, port
s.puts "GET /#{path1}/#{path2} HTTP/1.1"
#s.puts "GET #{path1} #{path2} HTTP/1.1"
s.puts "Host: #{host}"
s.puts

##headもbody 両方表示
#while line=s.gets
#    line.chomp!
#    puts line
#end

#bodyのみ
while line=s.gets
    line.chomp!
    break if line==""
end
while line=s.gets
    line.chomp!
    puts line
end

s.close