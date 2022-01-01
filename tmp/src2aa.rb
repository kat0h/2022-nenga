# "###"で記述されたデータからプログラムをAA化する
# ファイルが指定されていなかったらヘルプを表示する
if ARGV.size < 2 then
    puts "usage: #{$0} AA.txt code.txt"
    exit
end


b = File.open(ARGV[0]).readlines.join
p = File.open(ARGV[1]).readlines.join

count = 0
b.each_char{|c|
  if c == "#" then
    print p[count]
    count += 1
  elsif c == "\n"
    print "\n"
  else
    print " "
  end
}
