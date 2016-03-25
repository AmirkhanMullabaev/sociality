require "sociality/version"
require "sociality/config"
require "sociality/helper"

I18n.load_path += Dir.glob( File.dirname(__FILE__) + "lib/locales/*.{rb,yml}" ) 

module Sociality
  module Rails
      require "sociality/engine"
  end
end

ActionView::Base.send :include, Sociality::Helper