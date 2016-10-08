require 'test_helper'
require 'formatter'
require 'form_field'

class FormatterTest < Minitest::Test
  def setup
    @klass = Formatter
    @object = @klass.new
  end

  def test_formats_a_list_of_form_fields
    fields = [
      { name: 'foo', value: 'bar' },
      { name: 'baz', value: 'quux' }
    ].map { |h| FormField.new h }
    text = @object.format(fields: fields)
    expected = "foo: bar\nbaz: quux"
    assert_equal expected, text
  end
end
