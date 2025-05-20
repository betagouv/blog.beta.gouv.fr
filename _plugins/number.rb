module Jekyll
  module Number
    def number(input, delimiter=" ")
      input.to_s.split("").reverse.each_slice(3).map {|y| y.join("").reverse}.reverse.join(delimiter)
    end
  end
end

Liquid::Template.register_filter(Jekyll::Number)