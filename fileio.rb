# ファイルをopenする
File.open("ls.out", "r") do |f| # f=File.open "ls.out", "r"
    i=1
    while line=f.gets
        puts i.to_s+" : "+line
        i+=1
    end
end # f.close # オープンしたらクローズする(メモリリークを起こすため)
