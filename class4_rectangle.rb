require "rspec"

class Rectangle
  def initialize(length, width)
    @length = length
    @width = width
  end

  def area
    length * width
  end

  def perimeter
    length*2 + width*2
  end

  def square?
    @length == @width
  end

# instance vars are private to instance scope; to expose:
#  def length
#    @length
#  end

#  def width
#    @width
#  end
  # attribute reader:
  attr_reader :length, :width   # exposing instance vars is common; this is convenience notation to replace above
end


### unit tests
describe Rectangle do
  subject {Rectangle.new(5,3)}

  context "should have length and width" do
    specify {expect(subject.length).to eq(5)}
    specify {expect(subject.width).to eq(3)}
  end

  context "area" do
    specify {expect(subject.area).to eq(15)}
  end

  context "perimeter of rectangle" do
    specify {expect(subject.perimeter).to eq(16)}
  end

  context "is this a square?" do
    specify {expect(subject.square?).to eq(false)}
  end

end