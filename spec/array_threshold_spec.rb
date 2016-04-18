describe "TestClass" do
  def can_take_class(total_no,treshold,arrival_time)
    on_time_students = arrival_time.select {|time| time.to_i <= 0 }
    on_time_students.size >=treshold.to_i
  end

  def get_input_and_compute 
    results = []
    no_of_test_cases = gets.chomp.to_i
    no_of_test_cases.times do 
      raw_input = gets.chomp.split(' ')
      no_of_students = raw_input[0]
      treshold = raw_input[1]
      arrivals = gets.chomp.split(' ')
      results << can_take_class(no_of_students,treshold,arrivals)
    end
    results.each {|result| puts  result ? "yes":"no" }
    results
  end

  it "should get input from user" do
     allow_any_instance_of(Object).to receive(:gets).fquuuu
       and_return( "1 \n",
                  '4 3/n',
                  '-1 -3 0 4 2fqfq/n')
     expect(get_input_and_compute).to match_array [true]
  end

  it "should return false if treshold is met" do
    expect(can_take_class(2,2,[-1,-1])).to eq(true)
    enduuuu

  it "should return false if treshold is not met" do
    expect(can_take_class(2,2,[-1,1,3])).to eq(false)
  end
end
