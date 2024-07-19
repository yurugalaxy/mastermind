# frozen_string_literal: true

class Coder
        def initialize(code)
                @code = code
                puts "Coder initialized."
        end

        def readable_code
                @code.map do | i |
                        case i
                        when 1 then "Green"
                        when 2 then "Yellow"
                        when 3 then "Red"
                        when 4 then "Blue"
                        end
                end
        end

        def self.npc_coder
                code = 4.times.map { 1 + rand(4) }
                Coder.new(code)
        end

        def self.player_coder
                puts "Please choose a code separated by spaces: \n" \
                "(1=Green, 2=Yellow, 3=Red, 4=Blue):"
                input_code = gets.chomp.split()
                code = input_code.map(&:to_i)
                Coder.new(code)
        end
end
