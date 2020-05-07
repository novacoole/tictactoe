require 'set'

class ApplicationController < ActionController::Base
helper_method :is_it_anything?
helper_method :winning?

    def is_it_anything?(session_id, index)
    turns = Session.find(session_id).turns
        turns.each do |turn| 
            if turn.index == index
                if turn.cross == true
                    return "X"
                else
                    return "O"
                end
            end
        end
        return nil
    end

    def winning?(user_1, user_2)
        winning_numbers = [
            [1,2,3],
            [4,5,6],
            [7,8,9],
            [1,4,7],
            [2,5,8],
            [3,6,9],
            [1,5,9],
            [7,5,3]
        ]
        user_1_turns = user_1.turns.collect{|turn|turn.index}.to_set
        user_2_turns = user_2.turns.collect{|turn|turn.index}.to_set
        winning_numbers.each do |arr|
            if arr.to_set.subset?(user_1_turns)
                redirect_to user_one_wins_path
            end
            if arr.to_set.subset?(user_2_turns)
                redirect_to user_two_wins_path
            end
        end
        return nil
    end
    
    
    
end
