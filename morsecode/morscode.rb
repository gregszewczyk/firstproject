def decodeMorse(morseCode)
morse_dict = {
    "a" => ".-","b" => "-...","c" => "-.-.","d" => "-..","e" => ".","f" => "..-.","g" => "--.","h" => "....","i" => "..","j" => ".---","k" => "-.-","l" => ".-..","m" => "--","n" => "-.","o" => "---","p" => ".--.","q" => "--.-","r" => ".-.","s" => "...","t" => "-","u" => "..-","v" => "...-","w" => ".--","x" => "-..-","y" => "-.--","z" => "--.."," " => " ","1" => ".----","2" => "..---","3" => "...--","4" => "....-","5" => ".....","6" => "-....","7" => "--...","8" => "---..","9" => "----.","0" => "-----"
}

wordList = morseCode.split(" ")

wordList.each do |word|
  word = word.downcase
  word.split("").each do |letter|
    a = ' ' + morse_dict[letter].to_s + ' '
    word.gsub! letter, a
  end
end

sentence = wordList.join(' ')

return sentence.lstrip

end

puts decodeMorse("Example from description")
