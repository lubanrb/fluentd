module Luban
  module Deployment
    module Applications
      class Fluentd
        class Configurator < Luban::Deployment::Application::Configurator
          include Paths
          include Parameters
          include Controller::Commands

          def default_source_template_path
            @default_source_template_path ||= 
              Pathname.new(__FILE__).dirname.join('templates', 'app')
          end
        end
      end
    end
  end
end
