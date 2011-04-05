require 'yajl'

class Service
   
    def next_slide(slides, slide_number)
        if  (slide_number >= slides.size)
            return 0
        else
            return slide_number + 1
        end
    end
    
    def previous_slide(slides, slide_number)
        if  (slide_number >= 0 )
            return slide_number - 1
        else
            return 0
        end
    end
    
    def get_slides(path)
        json = File.new(path, 'r')
        parser = Yajl::Parser.new
        return slides = parser.parse(json)['presentation']
    end
    
end