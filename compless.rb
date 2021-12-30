#文字列をランレングス符号化して圧縮し、32進数の文字列にします
#同じ文字列が100文字未満であることが条件です

file = ["./tora-kanji.txt", "./2022.txt"]

file.each{|name|
  s = ""
  File.open(name)do |f|
    s = f.read
  end

  chars = ["1"]

  cur = 0
  last_char = " "
  char_num = 0
  s.each_char {|c|
    if c == "\n" then
    elsif c == last_char then
      char_num += 1
    else
      chars.push format("%02d", char_num)
      last_char = c
      char_num = 1
    end
  }

  p chars.join().to_i().to_s(32)
}
