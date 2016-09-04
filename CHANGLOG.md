# Change log

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
