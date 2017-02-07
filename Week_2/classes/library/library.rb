class Library

  attr_accessor :books
  def initialize(books)
    @books = books
  end

  def display()
   @books
  end

  # def search_by_title(title)
  #   @books[:title] == title ? title : nil
  # end

  def search_by_title(title)
    for book in @books
      if book[:title] == title
        return book
      end
    end
    return nil
  end

  def rental_details(rented)
    index = 0
    for book in @books
      if book[:title] =! rented
        index += 1
      else
        break
      end
    end
    return book.inspect[index] 
  end

end