#! /usr/bin/env ruby
#rubyではif内スコープがない

if ARGV[0]=="-n"
    nopt=true
    file=ARGV[1]
else
    nopt=false
    file=ARGV[0]
end

linnum=1
File.open(file, "r") do |f|
    while line=f.gets
        printf("%5d",linnum) if nopt
        linnum += 1
        puts line
    end
end

#if ARGV[0]=="-n"
#    File.open(ARGV[1], "r") do |f|
#        i=1
#        while line=f.gets
#            puts i.to_s+" : "+line
#            i+=1
#        end
#    end
#else
#    File.open(ARGV[0], "r") do |f|
#        while line=f.gets
#            puts line
#        end
#    end
#end
