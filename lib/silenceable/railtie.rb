require 'silenceable'

module Silenceable
  if defined? Rails::Railtie
    require 'rails'

    class Railtie < Rails::Railtie
      rake_tasks do
        load "tasks/silenceable.rake"
      end
    end
  end
end
