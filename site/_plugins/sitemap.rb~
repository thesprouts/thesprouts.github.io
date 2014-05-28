require 'rubygems'
require 'sitemap_generator'

module Jekyll

  class SitemapGenerator < Generator
    safe true

    def generate(site)
      if not development?
        ::SitemapGenerator.verbose = false
      end
      
      ::SitemapGenerator::Sitemap.default_host = 'http://thesprouts.org'
      ::SitemapGenerator::Sitemap.public_path = File.expand_path('../../site', File.dirname(__FILE__))
      ::SitemapGenerator::Sitemap.create do
        last_deploy = site.time
        add '/', :changefreq => 'daily', :lastmod => last_deploy,  :priority => 0.9
        add '/blog', :changefreq => 'weekly', :lastmod => last_deploy, :priority => 0.8
        add '/work', :changefreq => 'monthly', :lastmod => last_deploy, :priority => 0.7
        add '/about', :changefreq => 'monthly', :lastmod => last_deploy, :priority => 0.6
        site.posts.each do |post|
          add post.url, :changefreq => 'never', :lastmod => post.date, :priority => 0.5
        end
        add '/feed', :changefreq => 'daily', :lastmod => last_deploy, :priority => 0.4
        add '/connect', :changefreq => 'monthly', :lastmod => last_deploy, :priority => 0.3
      end
    end
  end
end