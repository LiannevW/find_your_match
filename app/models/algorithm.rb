class Algorithm
  def create_days(input, users)
  @people = users
  test = input - 1
  test.times do |x|

  n = @people.length/2
  array_left = @people[0...n]
  array_right = @people - array_left

    x = array_right.shift
    array_left.insert(1, x)

    y = array_left.pop
    array_right.push(y)

    round = (array_left << array_right).flatten!
    @people = []
    @people = round
  end
  print @people
  end
def create_pairs_for_one_day
  half = @people.length / 2
  @day_pairs = []
  i = 0
    half.times do |pair|
    pair = []
    x = @people[0+i]
    y = @people[half + i]
    pair.push(x,y)
    @day_pairs << pair
    i += 1
    end
    return @day_pairs
end
def only_your_pair
  array = @day_pairs
  y = array.each_index.select { |x| array[x].include?("b") }
  test = y.pop
  testt = array[test]
  puts "Hi, the pair you are working in today is #{testt}"
end
end
