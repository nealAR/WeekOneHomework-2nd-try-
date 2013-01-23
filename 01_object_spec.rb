describe "Everything is an Object!" do

	context "Object rspec" do
	
	  it "Objects have methods" do
		'two'.methods.should include :upcase
	  end

	  it "Objects have a class" do
		'two'.class.should eq String
	  end

	  it "Objects can be sent messages" do
		'two'.send(:upcase).should eq 'TWO'
		# that code sends the message 'upcase' to the string 'two'
		# same result as: 'two'.upcase
	  end

	  it 'Strings are objects' do
		"Two".should be_a Object
	  end

	  it 'Numbers are objects' do
		1.should be_a Object
	  end
	  
	  it 'Hashes are objects' do
		h = Hash.new("Go Fish")
		h["a"] = 100
		h.should be_a Object
	  end 
	  
	  it 'Arrays are objects' do
		array = ["one", "two"]
		array.should be_a Object
	  end

	  it 'Expressions evaluate to objects' do
		"true".should be_a Object
	  end
	  
	  it 'Symbols are objects' do
		Symbol.should be_a Object
	  end
	  
	  it 'Classes are objects' do
		class Answer	
		end
		Answer.should be_a Object
	  end
	  
	  it 'ADD ANY EXAMPLE THAT EVALUATES AN OBJECT' do
		class Stuff
		end
		Stuff.should be_a Object
	  end
	  
	end
	
end