module Luban
  module Deployment
    module Applications
      class Fluentd
        class Controller < Luban::Deployment::Application::Controller
          module Commands
            def process_pattern
              @process_pattern ||= "^supervisor:#{env_name}"
            end

            def start_command
              @start_command ||= bundle_command("fluentd -c #{control_file_path} -d #{pid_file_path} -o #{log_file_path}")
            end

            def stop_command
              @stop_command ||= shell_command("kill $(cat #{pid_file_path} 2>/dev/null)")
            end
          end

          include Paths
          include Parameters
          include Commands
        end
      end
    end
  end
end
