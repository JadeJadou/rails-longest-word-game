class GamesController < ApplicationController
  def new
    @letters = ("a".."z").to_a.sample(10)
  end

  def score
    @user_input = params[:user_input]
    @grid = params[:letters]
    @score = 0

    # obliger le mot (user_input) d'inclure les lettres imposées (grid) et return un puts
      if @user_input
        # puts "Sorry but #{@user_input} can't be buid out of #{@grid}"

    # condition 1 remplie + obliger le mot a etre en anglais uniquement - et return un puts si c'est pas le cas
      elsif @user_input
        # puts "Sorry but #{@user_input} does not seem to be a valid English word..."

    # si les deux conditons sont rénuies (lettres imposées (grid) + anglais) return un puts congratulations
      else
        # puts "Congratulations #{@user_input} is a valid English word!"
    end
  end
end


    # Le mot ne peut pas être créé à partir de la grille d’origine.
#     @word = params[:word].upcase.split("")
#     @grid = params[:grid]
#     if !grid_agree(@word, @grid)
#       @message = "Le mot : #{@word.join.upcase} ne peut pas être créé à partir de la grille d'origine."
#     elsif !english(@word)
#       @message = "Le mot : #{@word.join.upcase} est valide d'après la grille, mais ce n'est pas un mot anglais valide."
#     else
#       @message = "Le mot : #{@word.join.upcase} est valide d'après la grille et est un mot anglais valide."
#     end
#   end

#   def english(word)
#     url = "https://wagon-dictionary.herokuapp.com/#{@word.join}"
#     word_serialized = URI.open(url).read
#     word = JSON.parse(word_serialized)
#     word["found"]
#   end

#   def grid_agree(word, grid)
#     word.all? do |letter|
#       word.count(letter) <= grid.count(letter)
#     end
#   end
# end
