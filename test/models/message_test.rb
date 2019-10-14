require 'test_helper'

class MessageTest < ActiveSupport::TestCase

  test 'name, email and body are required by law' do

    msg = Message.new

    refute msg.valid?, 'Blank Message should be invalid'

    assert_match /blank/, msg.errors[:name].to_s
    assert_match /blank/, msg.errors[:email].to_s
    assert_match /blank/, msg.errors[:message].to_s


    # attrs = {
    #   name: 'Max',
    #   email: 'max@revelthat.com',
    #   message: 'blejrbnejrbne',
    #   created_at: DateTime.now,
    #   updated_at: DateTime.now
    # }

    # msg = Message.new attrs
    # assert msg.valid?, 'Should be valid'

  end
end
