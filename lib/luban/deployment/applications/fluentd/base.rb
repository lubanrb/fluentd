module Luban
  module Deployment
    module Applications
      class Fluentd < Luban::Deployment::Application
        module Paths
          def profile_name; 'fluentd'; end

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
        
        DefaultPort = 24224
        DefaultNetworkHost = "0.0.0.0"
          
        parameter :port, default: DefaultPort
        parameter :network_host, default: DefaultNetworkHost

        protected

        def include_default_templates_path
          super
          default_templates_paths.unshift(base_templates_path(__FILE__))
        end
      end
    end
  end
end
