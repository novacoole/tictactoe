class ApplicationController < ActionController::Base
helper_method :is_it_anything?

    def is_it_anything?(session_id, index)
    @turns = Session.find(session_id).turns
        @turns.each do |turn| 
            if turn.index == index
                if turn.cross == true
                    return "X"
                else
                    return "O"
                end
            end
        end
    end

    def winning?(session_id, index)
        @turns = Session.find(session_id).turns
            @turns.each do |turn| 
                if turn.index == index
                    if turn.cross == true
                        return "X"
                    else
                        return "O"
                    end
                end
            end
        end
        
    
    
end
