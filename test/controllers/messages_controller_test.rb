require 'test_helper'

class MessagesControllerTest < ActionDispatch::IntegrationTest
  test "invalid POST create" do 
    post create_message_url, params: {
      message: {
        name: '',
        email: '',
        message: ''
      }
    }

    assert_match /Name .* blank/, response.body
    assert_match /Email .* blank/, response.body
    assert_match /Message .* blank/, response.body

  end
end


# test "GET new" do
#   get new_message_url

#   assert_response :success

#   assert_select 'form' do
#     assert_select 'input[type=text]'
#     assert_select 'input[type=email]'
#     assert_select 'textarea'
#     assert_select 'input[type=submit]'
#   end
# end

# test "POST create" do
#   post create_message_url, params: {
#     message: {
#       name: 'Max',
#       email: 'grnbr@gmail.com',
#       body: 'maxkelly'
#     }
#   }

#   assert_redirected_to new_message_url

#   follow_redirect!

#   assert_match /Message recieved, thanks!/, response.body
# end