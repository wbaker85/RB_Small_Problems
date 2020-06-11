class Person
  def name=(full_name)
    @first, @last = full_name.split
  end

  def name
    [@first, @last].join(' ')
  end
end

person1 = Person.new
person1.name = 'John Doe'
puts person1.name