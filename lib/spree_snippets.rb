require 'spree_core'
require 'formtastic'

module SpreeSnippets
  class Engine < Rails::Engine

    config.autoload_paths += %W(#{config.root}/lib)

    initializer :assets do |config|
      Rails.application.config.assets.precompile += %w( formtastic.css )
    end

    def self.activate
      Dir.glob(File.join(File.dirname(__FILE__), "../app/**/*_decorator*.rb")) do |c|
        Rails.env.production? ? require(c) : load(c)
      end
    end

    config.to_prepare &method(:activate).to_proc
  end
end
