# frozen_string_literal: true

require_relative 'game/coder'
require_relative 'game/guesser'

class Game
        def initialize
                @turn_timer = 0
                @coder = Coder.player_coder
                @guesser = Guesser.player_guesser
                puts "Game initialized."
        end
end
