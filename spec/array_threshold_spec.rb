describe "TestClass" do
  def sum(a,b)
    a+b
  end

  it "should add value" do
    expect(sum(1,2)).to eq(3)
  end
end
