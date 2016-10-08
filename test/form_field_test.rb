require 'test_helper'
require 'form_field'

class FormFieldTest < Minitest::Test
  def setup
    @klass = FormField
  end

  def test_interface
    object = @klass.new(name: 'foo', value: 'bar')
    assert_equal 'foo', object.name
    assert_equal 'bar', object.value
  end
end
