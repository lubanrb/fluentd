module Luban
  module Deployment
    module Applications
      class Fluentd
        class Configurator < Luban::Deployment::Application::Configurator
          include Paths
          include Controller::Commands
        end
      end
    end
  end
end
