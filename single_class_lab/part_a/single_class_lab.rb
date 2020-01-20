class Student
  def initialize(name, cohort, planguage)
    @name = name
    @cohort = cohort
    @planguage = planguage
  end

  def find_name()
    return @name
  end

  def find_cohort()
    return @cohort
  end

  def change_name(new_name)
    @name = new_name
  end

  def change_cohort(new_cohort)
    @cohort = new_cohort
  end

  def talk
    return "I can talk!"
  end

  def fav_language
    return "My favourite language is #{@planguage}!"
  end
end
