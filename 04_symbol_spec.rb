describe "Symbols" do

  it "are not like strings, which can have duplicate content in multiple objects" do
    "only_one".object_id.should_not eq "only_one".object_id
  end

  it "only exist once" do
    ("only" + "one").to_sym.object_id.should eq :onlyone.object_id
  end

  it "are of class Symbol" do
    :hello.class.should eq Symbol
  end
  
  it "are not the same as a string of the same characters" do
    sym = :hello
    sym.should_not eq ':hello'
  end
  
  it "are convertable to strings" do 
    :hello.to_s.should eq 'hello'
  end

  it "are convertable from a string" do
    str = "Hello"
	sym = str.intern
	sym.should eq :Hello
  end

  it "automatically converts to a string when interpolated" do
    @sym = :hello
	"#@sym".should eq 'hello'
  end
end