#Thanks to Why's (poignant) Guide for the inspiration

def upside_down(text)
 puts text.tr(letters = 'ahbmfnjpdrutwque',letters.reverse).reverse
end

puts "Enter text to flip"
upside_down(gets)
puts "turn it upside-down to read"
puts "(not all letters flip nicely. use your imagination)"
