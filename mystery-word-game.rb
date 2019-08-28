class MysteryWordGame
    
    def initialize
      @lives = 5
      @word = ""
      @output_word = ""
      @indices_chosen = []
      ask_for_word()
      guess_letter()
      game_over()
      guessed_all_correct()
    end
  
    def ask_for_word
      puts "What is the word? Player 2 look away..."
        @word = gets.chomp
        word_length = @word.length
        word_length.times do
          @output_word = @output_word + "_"
        end
        puts "**************"
        puts "**************"
        puts "**************"
        puts @output_word
      end
      def guess_letter
        while @lives > 0
          puts "Guess a letter:"
          letter = gets.chomp
          if @word.include? letter
            letter_index = @word.index(letter)
            puts "That's Correct!"
            if !(@indices_chosen.include?letter_index)
            @indices_chosen<<letter_index
            @output_word[letter_index] = letter
            puts @output_word
          else
            puts "You already guessed that letter. Try again."
           
          end
           
          else
            puts "Uh Oh! The word doesn't include that letter!"
            @lives -= 1
          end
          puts "You have #{@lives} lives left"
        end
      end
        def guessed_all_correct
          if @word = @_word
          puts "You won! The word is #{@word}"
        end
        end
        def game_over
          if @lives < 1
            puts "Game Over"
        end
    end
  end
  
MysteryWordGame.new
  