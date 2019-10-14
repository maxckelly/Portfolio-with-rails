require 'test_helper'

class MessageMailerTest < ActionMailer::TestCase
  test "contact_me" do
    message = Message.new name:'Max',
                          email: 'max@example.org',
                          message: 'Hello There!'
    
    email = MessageMailer.contact_me(message)

    assert_emails 1 do
      email.deliver_now
    end

    assert_equal 'Message from www.murdo.ch', email.subject
    assert_equal ['maxckel@gmail.com'], email.to
    assert_equal ['max@example.org'], email.from
    assert_match /hello, how are you doing?/, email.message.encoded     
  end

end
