module Luban
  module Deployment
    module Applications
      class Fluentd
        class Controller < Luban::Deployment::Application::Controller
          module Commands
            def ruby_bin_path
              @ruby_bin_path ||= package_bin_path('ruby')
            end

            def bundle_executable
              @bundle_executable ||= ruby_bin_path.join('bundle')
            end

            def process_pattern
              @process_pattern ||= "^supervisor:#{env_name}"
            end

            def start_command
              @start_command ||= "#{bundle_executable} exec fluentd -c #{control_file_path} -d #{pid_file_path} -o #{log_file_path}"
            end

            def stop_command
              @stop_command ||= "kill $(cat #{pid_file_path} 2>/dev/null)"
            end
          end

          include Parameters
          include Commands
        end
      end
    end
  end
end
