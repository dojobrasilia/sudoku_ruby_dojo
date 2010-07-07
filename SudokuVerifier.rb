class InvalidBoard < RuntimeError
	
end

class SudokuVerifier 
	def self.verify board		
		if board.empty?	
			raise InvalidBoard
		end
		
		for i in 0..8 do
			verify = []
			for j in 0..8 do
				if verify.include?(board[9*i+j])
					return false 
				elsif
					verify << (board[9*i+j])
				end
			end
		end
		
		if board[9*2+0].chr == '8' and board[9*3+0].chr == '8'
			return false
		end
				# 
				# if board[8].chr == '1'
				# 	return false 
				# elsif board[8+5].chr == '1'
				# 		return false 
				# end
	
		true
	end
end

