class Line < ActiveRecord::Base
  def set_text type, value
    write_attribute(Line.parse_type(type), value)
  end

  def self.parse_type type
    case type.to_s
    when "line"
      return :text
    when "text"
      return :text
    when "note"
      return :note
    else
      raise NameError.new("Not a valid text type: #{type.inspect}")
    end
  end
end
