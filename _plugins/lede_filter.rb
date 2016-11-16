require 'nokogiri'

module Jekyll
  module LedeFilter
    SELECTORS_TO_STRIP = ['.caption']
    def lede_filter(input)
      lede = Nokogiri::HTML(input)
      LedeFilter::SELECTORS_TO_STRIP.each do |selector|
        lede.css(selector).remove()
      end
      return lede.to_html
    end
  end
end

Liquid::Template.register_filter(Jekyll::LedeFilter)