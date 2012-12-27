require 'to_regexp'

module Jekyll
  module StripRegex
    def strip_regex(input, *regexes_to_strip)
      stripped = input
      regexes_to_strip.each do |r|
        stripped = stripped.gsub(r.to_regexp, '')
      end
      return stripped
    end
  end
end

Liquid::Template.register_filter(Jekyll::StripRegex)