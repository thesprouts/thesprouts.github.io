module Jekyll
  # TypographyHelper
  # basic typographical substitutions by luke hartman <http://mrturtle.com>

  module TypographyHelper
    # converts a & surrounded by optional whitespace or a non-breaking space
    # to the HTML entity and surrounds it in a span with a styled class
    def amp(text)
      # $1 is an excluded HTML tag, $2 is the part before the caps and $3 is the amp match
      text.gsub(/<(code|pre).+?<\/\1>|(\s|&nbsp;)&(\s|&nbsp;)/) {|str|
      $1 ? str : $2 + '<span class="amp">&amp;</span>' + $3 }
    end

    # widont helper replaced from regex original allegedly for multiline (via 
    # now defunct http://mucur.name/posts/widon-t-and-smartypants-helpers-for-rails) 
    # and replaced with https://github.com/scottboms/jekyll-widont
    def widont(text)
       text.strip!
       text[text.rindex(' '), 1] = '&nbsp;' if text.rindex(' ')
       return text
     end

    # surrounds two or more consecutive captial letters, perhaps with interspersed digits and periods
    # in a span with a styled class
    def caps(text)
      # $1 is an excluded HTML tag, $2 is the part before the caps and $3 is the caps match
      text.gsub(/<(code|pre).+?<\/\1>|(\s|&nbsp;|^|'|")([A-Z][A-Z\d\.]{1,})(?!\w)/) {|str|
      $1 ? str : $2 + '<span class="caps">' + $3 + '</span>' }
    end

    # encloses initial single or double quote, or their entities
    # (optionally preceeded by a block element and perhaps an inline element)
    # with a span that can be styled
    def initial_quotes(text)
      # $1 is the initial part of the string, $2 is the quote or entitity, and $3 is the double quote
      text.gsub(/((?:<(?:h[1-6]|p|li|dt|dd)[^>]*>|^)\s*(?:<(?:a|em|strong|span)[^>]*>)?)('|&#8216;|("|&#8220;))/) {$1 + "<span class=\"#{'d' if $3}quo\">#{$2}</span>"}
    end

    # uses RubyPants to transform various typographical thingys to proper HTML entities
    # requires the RubyPants gem http://www.gemjack.com/gems/rubypants-0.2.0/classes/RubyPants.html
    # Based on SmartyPants http://daringfireball.net/projects/smartypants
    def rubypants(text)
      RubyPants.new(text).to_html
    end
    
    # main function to do all the functions from the method
    def rubyshirt(text)
      initial_quotes amp(caps(widont(text)))
    end
    
    # function to perform rubyshirt and rubypants
    def clean_typography(text)
      rubyshirt rubypants(text)
    end
    
    # perform the Rails safe-proofing filter and then perform the typography filters
    def th(text)
      clean_typography(h(text))
    end
    
    # alias the clean_typography method to make views cleaner
    alias_method :t, :clean_typography
  end
end

Liquid::Template.register_filter(Jekyll::TypographyHelper)