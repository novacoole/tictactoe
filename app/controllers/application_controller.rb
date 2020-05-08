require 'set'

class ApplicationController < ActionController::Base
helper_method :is_it_anything?
helper_method :winning?

    def is_it_anything?(session_id, index)
    session = Session.find(session_id)
    turns = session.turns
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

    def winning?(session, user_1, user_2)
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
                redirect_to wins_path(user_1)
            end
            if arr.to_set.subset?(user_2_turns)
                puts user_2.id
                redirect_to wins_path(user_2)
            end
        end
        if session.counter == 10
           redirect_to draw_path
        end
        return nil
    end
    
    
    
end
