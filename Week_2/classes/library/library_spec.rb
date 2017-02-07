require('minitest/autorun')
require_relative('./library')

class TestLibrary < Minitest::Test

  def setup()
  @books = [
    {
      title: "lord_of_the_rings",
      rental_details: { 
       student_name: "Jeff", 
       date: "01/12/16"
      }
    },
      {
      title: "terrestial_planets",
      rental_details: {
        student_name: "Jay",
        date: "02/12/16"
      }
    },
      {
        title: "gas_giants",
        rental_details: {
          student_name: "John",
          date: "03/12/16"
        }
    },
      {
        title: "exoplanets",
        rental_details: {
          student_name: "Maya",
          date: "04/12/16"
        }
    }
  ]
  end

  def test_display
    books = Library.new(@books)
    show_me_everything = books.display()
    assert_equal(@books, show_me_everything)
  end

  def test_book_title
    books = Library.new(@books)
    book_by_title = books.search_by_title("exoplanets")
    assert_equal(@books.last, book_by_title)
  end

  def test_rental_details
    books = Library.new(@books)
    who_took_it_and_when = books.rental_details("gas_giants")
    assert_equal({student_name: "John",
          date: "03/12/16"}, who_took_it_and_when)
  end

end