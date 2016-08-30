module Luban
  module Deployment
    module Applications
      class Fluentd < Luban::Deployment::Application
        module Paths
          def pid_file_name
            @pid_file_name ||= "fluentd.pid"
          end

          def control_file_name
            @control_file_name ||= "fluentd.conf"
          end

          def logrotate_file_name
            @logrotate_file_name ||= "fluentd.logrotate"
          end

          def log_file_name
            @log_file_name ||= "fluentd.log"
          end
        end
        
        module Parameters
          extend Luban::Deployment::Parameters::Base

          DefaultPort = 24224
          parameter :port

          protected

          def set_default_fluentd_parameters
            set_default :port, DefaultPort
          end
        end

        include Parameters

        protected

        def set_default_application_parameters
          super
          set_default_source
          set_default_fluentd_parameters
        end

        def include_default_templates_path
          super
          default_templates_paths.unshift(base_templates_path(__FILE__))
        end
      end
    end
  end
end
