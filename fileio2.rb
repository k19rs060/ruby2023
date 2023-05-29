# キーボードから名前を入力
#print "name?"
#name = gets
name = ARGV.join(":")

# name.txt というファイルに変数 name の値を出力
# モード選択 r:読み込み w:書き込み a:追記
File.open("name.txt", "w") do |f| # File.open "name.txt", "w" do |f| カッコがなくても動く
    f.puts name
end
