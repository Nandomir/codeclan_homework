class Student
  attr_accessor :name, :cohort
  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end

  def talking_student(talk)
    return @name + " " + talk
  end

  def student_favourite_language
    cohort_vs_language = {
      10 => "Ruby",
      7 => "Java"
    }

    result = "I love" + " " + cohort_vs_language[@cohort]
    return result
  end

end