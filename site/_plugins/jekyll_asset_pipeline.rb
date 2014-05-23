require 'jekyll_asset_pipeline'

class CssCompressor < JekyllAssetPipeline::Compressor
  require 'yui/compressor'

  def self.filetype
    '.css'
  end

  def compress
#    if development?
#      return @content
#    else
      return YUI::CssCompressor.new.compress(@content)
#    end
  end  
end

class JavaScriptCompressor < JekyllAssetPipeline::Compressor
  require 'closure-compiler'

  def self.filetype
    '.js'
  end

  def compress
#    if development?
#      return @content
#    else
      return Closure::Compiler.new.compile(@content)
#    end
  end
end