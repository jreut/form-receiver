# Stringify a list of +FormField+s
class Formatter
  def format(fields:)
    fields
      .map { |f| "#{f.name}: #{f.value}" }
      .join("\n")
  end
end
