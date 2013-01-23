
describe "Strings" do
  
  context "created with double quotes" do
    
    it "are valid" do
      "Ruby Course".should eq 'Ruby Course'
    end
    
    it "are of class String" do
	  a = "String class"
	  a.class.should eq String
	end
    
    it "can contain bare single-quote (') characters" do
	  a = "thing\'s"
	  a.should eq 'thing\'s'
	end
    
    it "allow the escape of double quote (\") characters" do
	  "\"hello\"".should eq '"hello"'
	end
    
    it "allow interpolation (Ruby code within the string)" do
	  @var = "Hello"
	  "#@var World".should eq 'Hello World'
	end
    
    it "replace \t with a tab character" do 
	  a = "hi there\t".gsub(/\t/, '	')
	  a.should eq 'hi there	'
	end

    it "ADD AN EXAMPLE THAT TESTS A DIFFERENT ESCAPE SEQUENCE" do
	  a = "phone \#"
	  a.should eq 'phone #'
	end

    it "replaceS special characters when values are specified at the end via '% [value]'" do
	  @var = "Hello"
	  %-#{@var}-.should eq 'Hello'
	end
  end
  
  context "created with single quotes" do
    
    it "are valid" do
      'Alfred E. Newman'.should eq "Alfred E. Newman"
    end
    
    it "are of class String" do 
	  'Class'.class.should eq String
	end
    
    it "allow double-quote (\") characters" do
	  '\"Hello\"'.should eq '\"Hello\"'
	end

    it "allow the escape of single quote (') characters" do
	'\'Hi\''.should eq '\'Hi\''
	end
    
    it "does not interpolate Ruby code" do
	  a = 'Hello'
	  '#{a}'.should eq '#{a}'
	end
    
    it "does not escape newline characters" do
      'Have \n fun'.should eq 'Have \n fun'
	end
  end

  context "created with Q sequence" do

    it "supports arbitrary delimiters and behave like a double quoted string" do
      %Q@<span style='color:blue'>"1 + 1 = #{1 + 1}"</span>@.should eq '<span style=\'color:blue\'>"1 + 1 = 2"</span>'
    end

    it "can omit the Q and just use %{}" do
	  %{<a href=\\\"javascript:method('call')\\\">link</a>}.should eq '<a href=\"javascript:method(\'call\')\">link</a>'
	end

    it "created with the pattern %q supports arbitrary delimiters and behave like a single quoted string" do
	  %q[s].should eq 's'	  
	end

  end

end