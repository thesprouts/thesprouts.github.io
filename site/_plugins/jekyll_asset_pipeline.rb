require 'jekyll_asset_pipeline'

class JavaScriptCompressor < JekyllAssetPipeline::Compressor
  require 'closure-compiler'

  def self.filetype
    '.js'
  end

  def compress
    return Closure::Compiler.new.compile(@content)
  end
end