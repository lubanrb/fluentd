# Change log

## Version 0.1.1 (Aug 29, 2016)

Minor enhancements: 
  * Added 5 seconds delay in Monit config after fluentd start command is executed to avoid race condition between Monit and start command
  * Bump up gem dependency on Luban to version 0.7.5

Bug fixes:
  * Properly named control file, pid file, log file and logrorate file

## Version 0.1.0 (Aug 23, 2016)

New features:
  * Initialized Luban deployemnt application for Fluentd
