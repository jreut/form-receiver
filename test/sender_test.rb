require 'aws-sdk'

require 'test_helper'
require 'sender'
require 'message'

class SenderTest < Minitest::Test
  def setup
    @klass = Sender
    @client = Aws::SES::Client.new(stub_responses: true)
    @message = Message.new(
      to: %w(mae.jemison@nasa.gov),
      from: 'sally.ride@nasa.gov',
      subject: 'A stellar message',
      body: 'Why is it so dark out here?'
    )
  end

  def test_sending_calls_client
    client = Minitest::Mock.new
    client.expect(:send_email, nil, [Hash])
    object = @klass.new(message: @message, client: client)
    object.send_email
    client.verify
  end

  def test_sending_against_stubbed_aws_client
    object = @klass.new(message: @message, client: @client)
    object.send_email
  end
end
