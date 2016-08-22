R,C = gets.chomp.split.map{|n| n.to_i}

x,y = gets.chomp.split.map{|n| n.to_i}

curr_dir = gets.chomp
path = gets.chomp

path.each_char do |c|
	if c=='F'
		if curr_dir=='E' && x+1<=C
			x+=1
		elsif curr_dir=='W' && x-1>=0
			x-=1
		elsif curr_dir=='N' && y+1<=R
			y+=1
		elsif curr_dir=='S' && y-1>=0
			y-=1
    else
      break
		end
	else
		if curr_dir=='E'
			if c == 'L'
				curr_dir = 'N'
			else
				curr_dir = 'S'	
			end
		elsif curr_dir == 'W'
			if c == 'L'
				curr_dir = 'S'
			else
				curr_dir = 'N'
			end
		elsif curr_dir == 'N'
			if c == 'L'
				curr_dir = 'W'
			else
				curr_dir = 'E'
			end
		elsif curr_dir == 'S'
			if c =='L'
				curr_dir = 'E'
			else
				curr_dir = 'W'
			end
		end
	end
	end # end of loop
	# print the  calculated result.
puts "Current Position x: #{x}, y: #{y}, head: #{curr_dir}"
