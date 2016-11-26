# Change log

## Version 0.1.11 (Nov 27, 2016)

Minor enhancements:
  * Bump up gem dependency of Luban to version 0.10.8

Bug fixes:
  * Fixed superclass mismatch exception when loading gem from filesystem directly

## Version 0.1.10 (Nov 24, 2016)

Minor enhancements:
  * Made use of linked_files convention
    * Relocated fluentd config templates to templates/profile
  * Changed profile name from 'fluentd' back to 'app' in order to be persistent to the app convention
    * As a result, bump up gem dependency of Luban to version 0.10.5

## Version 0.1.8 (Oct 27, 2016)

Bug fixes:
  * Fixed local source initialization issue
    * As a side effect, refactored local source handling
    * Also, as a result, bump up gem dependency of Luban to version 0.9.12

## Version 0.1.7 (Oct 24, 2016)

Minor enhancements:
  * Added a new parameter, #network_host, in Fluentd configuration
  * Cleaned up the design and implementation of app parameters in a deployment project
    * As a result, bump up gem dependency on Luban to version 0.9.10

## Version 0.1.6 (Oct 19, 2016)

Minor enhancements:
  * Utilized new parameters, #logrotate_max_age, #logrotate_count, from Luban to unify logrotate setup
  * Bump up gem dependency of Luban to version 0.9.8

## Version 0.1.5 (Oct 12, 2016)

Minor enhancements:
  * Enhanced logrotate configuration
    * As a result, bump up gem dependency of Luban to version 0.9.0

## Version 0.1.4 (Sept 20, 2016)

Minor enhancements:
  * Refactored the way of composing shell commands
    * As a result, bumped up the gem dependency on Luban to version 0.8.0

## Version 0.1.3 (Sept 04, 2016)

Minor enhancements:
  * Setup #profile_name properly
  * Bump up gem dependency of Luban to version 0.7.13

## Version 0.1.2 (Aug 31, 2016)

Minor enhancements:
  * Used fluentd as suffix in the service entry for the sake of clarity

## Version 0.1.1 (Aug 30, 2016)

Minor enhancements: 
  * Added 5 seconds delay in Monit config after fluentd start command is executed to avoid race condition between Monit and start command
  * Bump up gem dependency on Luban to version 0.7.5

Bug fixes:
  * Properly named control file, pid file, log file and logrorate file

## Version 0.1.0 (Aug 23, 2016)

New features:
  * Initialized Luban deployemnt application for Fluentd
