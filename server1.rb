require "socket"

gs = TCPServer.open 8080
s = gs.accept

while true
    s = gs.accept
    while line=s.gets
        puts "Received: #{line}"
    end
    s.close #なくても動く
end