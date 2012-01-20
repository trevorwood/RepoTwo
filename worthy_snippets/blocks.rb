#yield returns the value of whatever is in the mini-block

def amp(&procyield)
	procyield.call
	puts
	yield
end

amp {puts "Here I am!"}
