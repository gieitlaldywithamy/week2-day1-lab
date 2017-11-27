class Student

  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end

def name
  return @name
end

def cohort
  return @cohort
end

def set_name(name)
  @name = name
end

def set_cohort(cohort)
  @cohort = cohort
end

def student_to_talk
  return "I can talk!"
end

def favourite_language(language)
  return "I love #{language}"
end

end

class SportsTeam

  attr_accessor :team_name, :players, :coach, :points

  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = 0
  end

  def add_player_team(new_player)
    @players.push(new_player)
  end

  def are_they_in_team(player)

    return @players.include?(player)

  end

  def update_points(win_or_lost)
    return @points += 3 if win_or_lost == 'win' || 'won'
    return @points -= 3 if win_or_lost == 'lose'

  end

end

# class Book
#   def initialize(title, rental details, student)
#     @title = title
#     @rental_details =
#     title: "lord_of_the_rings",
#     rental_details: {
#      student_name: "Jeff",
#      date: "01/12/16"
# end

class Library

attr_reader :list_of_books

  def initialize(list_of_books)
    @list_of_books = list_of_books
  end

  def find_book_by_name(book_name)
    for book in @list_of_books
      return book if book[:title] == book_name
    end
  end

  def rental_details_book_name(book_name)
    book  = find_book_by_name(book_name)
    return book[:rental_details]
  end

def add_new_book(book_name)
  new_book = { title:  book_name  , rental_details: { student_name: "" , date: ""}}
  @list_of_books << new_book
end

def  alter_rental_details(book_name, student_name, return_date)
  rental_details = rental_details_book_name(book_name)
  rental_details = {student_name: student_name, date: return_date}
  
end



end





  # class BankAccount
  #
  # attr_accessor :holder_name, :amount, :type
  #
  #   def initialize(holder_name, amount, type)
  #     @holder_name = holder_name
  #     @amount = amount
  #     @type = type
  #   end
  #
  #   def pay_in(deposit_amount)
  #     @amount += deposit_amount
  #   end
  #
  #   def pay_monthly_fee
  #     @amount -= 50 if @type == "business"
  #     @amount -= 10 if @type == "personal"
  #   end
  #
  # end
