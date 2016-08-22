class MicroRobot
    	# Constructor method to initialize grid's dimension.
    	def initialize(row,colom)
    		@R, @C = row, colom
    	end

    	# set initial position(x, y, head) of the micro robot.
    	def setInitialPosition(x, y, head)
    		@x = x
    		@y = y
    		@curr_dir = head
    	end

      # set initial direction of the robot
      def setPath(seq)
        @path = seq
      end

        # method to move the robot in forward direction if posible.
    	def moveForward()
    		if @curr_dir=='E' && @x+1 <= @C
    			@x+=1
          return 1
    		elsif @curr_dir=='W' && @x-1 >= 0
    			@x-=1
          return 1
    		elsif @curr_dir=='N' && @y+1 <= @R
    			@y+=1
          return 1
    		elsif @curr_dir=='S' && @y-1 >= 0
    			@y-=1
          return 1
        else
          return 0
    		end
    	end

    	# method to change the current direction of the micro robot if possible.
    	def changeHead(c)
    		if @curr_dir=='E'
    			if c == 'L'
    				@curr_dir = 'N'
    			else
    				@curr_dir = 'S'	
    			end
    		elsif @curr_dir == 'W'
    			if c == 'L'
    				@curr_dir = 'S'
    			else
    				@curr_dir = 'N'
    			end
    		elsif @curr_dir == 'N'
    			if c == 'L'
    				@curr_dir = 'W'
    			else
    				@curr_dir = 'E'
    			end
    		elsif @curr_dir == 'S'
    			if c =='L'
    				@curr_dir = 'E'
    			else
    				@curr_dir = 'W'
    			end
    		end
    	end

    	#  explore the given grid
    	def goToExploreTheGrid()
        #path = seq
    		@path.each_char do |c|
    			if c=='F'
    				flag = moveForward()
            if flag ==0 then break
            end
    			else
    				changeHead(c)
    			end
    		end
    	end

      def printFinalLocation()
        puts "X: #{@x}, Y: #{@y}, head: #{@curr_dir}"
      end

end # end of class defination


# Create a new instance of the class MicroRobot
robot_one = MicroRobot.new(5, 5) 
robot_one.setInitialPosition(3, 3, 'E')
seq = "FFRFFRFRRF"
robot_one.setPath(seq)
robot_one.goToExploreTheGrid()
robot_one.printFinalLocation()

$end