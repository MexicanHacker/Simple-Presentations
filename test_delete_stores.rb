require 'delete_stores'
require 'test/unit'

def test_number_of_rows
   content = delete_stores.get_content
   assert_not_nil(content)
end