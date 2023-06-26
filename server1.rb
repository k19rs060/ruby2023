require "socket"

def server s
    while line=s.gets
        puts "Received: #{line}"
        s.puts "Got: #{line}"
    end
    s.close
end

gs = TCPServer.open 8080

while true
    s = gs.accept
    Thread.new do #新しいプログラムカウンタを作成するもの
        server s
    end
end