class Reverse
  def flip
    p "Enter a string:"
    entry = gets.chomp
    swap_num = (entry.length/2).floor
    i = 0
    j = -1
    holder = ''
    while i < swap_num do
      holder = entry[i]
      entry[i] = entry[j]
      entry[j] = holder
      i += 1
      j -= 1
    end
    p entry
  end
end

word = Reverse.new
word.flip
