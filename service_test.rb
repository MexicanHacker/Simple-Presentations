require './service'
require 'test/unit'
require 'tempfile'

class ServiceTest  < Test::Unit::TestCase
    
    def test_get_slides
        assert_equal(2, Service.new.get_slides(get_tmp_file).size)
    end
    
    def test_previous_slide
        service = Service.new
        slides = service.get_slides(get_tmp_file)
        assert_equal(1, service.previous_slide(slides,2))
        assert_equal(0, service.previous_slide(slides,1))
    end
    
    def test_next_slide
        service = Service.new
        slides = service.get_slides(get_tmp_file)
        assert_equal(1, service.next_slide(slides,0))
        assert_equal(2, service.next_slide(slides,1))
    end
    
    def get_tmp_file
         tmp = Tempfile.new('presentation')
         tmp << '{ "presentation" : [ { "title" : "Dude,","content"  : "This is Json"},{ "title" : "Yeah","more content"  : "in Json"} ] }'
         tmp.flush
    end
    
end