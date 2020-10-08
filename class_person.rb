# Define a class Person with:

#  - An attribute first_name
#  - An attribute last_name
#  - An attribute birthdate (we just assign a string to this attribute, e.g. "April 19, 1987")
#  - An instance method, full_name, that puts first_name and last_name together
#  - An instance method, age, that calculates the number of years between today and birthdate

class Person
  attr_accessor :first_name
  attr_accessor :last_name
  attr_accessor :birthdate

  def full_name
    return self.first_name + ' ' + self.last_name
  end

  require('date')

  def age
    dob = Date.parse(self.birthdate)
    today = Date.today
    return ((today - dob)/365).to_i
  end

end

