require 'test_helper'
require 'message'

class MessageTest < Minitest::Test
  def setup
    @klass = Message
  end

  # rubocop:disable Metrics/MethodLength
  def test_interface
    to = %w(monkey@tree.jungle bear@cave.forest)
    from = 'turkey@roost.deciduous.forest'
    subject = 'Gobble gobble'
    body = "GOBBLE GOBBLE GOBBLE GOBBLE\n\n-Turkey"
    object = @klass.new(
      to: to,
      from: from,
      subject: subject,
      body: body
    )
    assert to, object.to
    assert from, object.from
    assert subject, object.subject
    assert body, object.body
  end
  # rubocp:enable Metrics/MethodLength
end
