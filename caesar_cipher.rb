def caesar_cipher(var1, var2)
	s = ""
	var1.each_char { |c| 
		if(/[[:upper:]]/.match(c))
			q = c.ord + var2.to_i
			if(q > 90)
				q -= 26
			end
			c = q.chr
		elsif(/[[:lower:]]/.match(c))
			q = c.ord + var2.to_i
			if(q > 122)
				q -= 26
			end
			c = q.chr
		end
		s += c
	}
	puts s
end

#upper case ==> 65 - 90
#lower case ==> 97 - 122