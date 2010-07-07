require 'SudokuVerifier'

describe SudokuVerifier do

	before :each do
		@v = SudokuVerifier.new
	end

	it 'should recognize repeated numbers on first row' do
		board = '534678911' +
		       '672195348' +
		       '198342567' +
		       '859761423' +
		       '426853791' +
		       '713924856' +
		       '961537284' +
		       '287419635' +
		       '345286179'
		
		answer = @v.verify(board)
		
		answer.should_not be_nil
		answer.should be_false
	end
	
	it 'should recognize repeated numbers on second row' do
		board = '534678912' +
		       '672115348' +
		       '198342567' +
		       '859761423' +
		       '426853791' +
		       '713924856' +
		       '961537284' +
		       '287419635' +
		       '345286179'
		
		answer = @v.verify(board)
		
		answer.should_not be_nil
		answer.should be_false
	end
	
	it 'should recognize repeated numbers on first column' do
		board = '534678912' +
		       '672195348' +
		       '891342567' +
		       '859761423' +
		       '426853791' +
		       '713924856' +
		       '961537284' +
		       '287419635' +
		       '345286179'
		
		answer = @v.verify(board)
		
		answer.should_not be_nil
		answer.should be_false
	end
	
	it 'should recognize repeated numbers on third column' do
		board = '534678912' +
		       '672195348' +
		       '198342567' +
		       '851769423' +
		       '426853791' +
		       '713924856' +
		       '961537284' +
		       '287419635' +
		       '345286179'
		
		answer = SudokuVerifier.new.verify(board)
		
		answer.should_not be_nil
		answer.should be_false
	end
	
	it 'should reject an empty board' do
		lambda{@v.verify ''}.should raise_error(InvalidBoard)
	end	
	
	it 'should accept valid board' do
		board = '534678912' +
		       '672195348' +
		       '198342567' +
		       '859761423' +
		       '426853791' +
		       '713924856' +
		       '961537284' +
		       '287419635' +
		       '345286179'
	
	  answer = @v.verify(board)
	
	  answer.should be_true
		
  end

end