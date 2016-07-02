# Lab LL50 — Hands-on Lab

**So You Want to Build a TrueSight Pulse Meter Plugin?**

In this deeply technical hands-on lab you will build and deploy your own custom meter plugin for TrueSight Pulse
in a step by step manner:

- __Manifest Destiny__ – How to define the metadata required for your plugin in a plugin manifest
- __Measure Twice, Cut Once__ – How to define the metrics to be collected by your plugin.
- __Script Du Jour__ – How to write that script or program that collects your custom measurements
- __All the worlds a Stage__ – How to deploy your plugin to put it through its paces..Ta Da
- __Extra, Extra, Read All About It__ – How to document your plugin so you can share with others.
- __Testing, Testing, Is this thing on?__ - How to test your plugin!
- __You have been Framed__ – How to use the Lua meter plugin framework to complete that plugin in record time
- __Nobody Knows the Trouble I've Seen__ – Plugin not working?? Don’t know why. How to troubleshoot that fine beautiful plugin you have created. 

## Document Information

__Document Owner:__ David Gwartney

__Document File:__  LL50 - Building Meter Plugins.docx

__PROPRIETARY NOTICE__

> This document contains BMC confidential information, which may include trade secrets and business information.
> Recipient acknowledges that this information has been developed by BMC Software as valuable trade secrets.
> All information contained herein shall remain exclusive property of BMC Software and shall be disclosed
> to only persons who have a need to know.
>
> Recipient agrees not to copy or reproduce in any form any information supplied herein without prior written
> permission from an authorized representative of BMC Software. Recipient further agrees to provide
> security for this document to a reasonable degree so that unauthorized disclosure is prevented.



## About This Lab

This hands-on lab session will take the attendee through a series of exercises to
create a plugin that generates random numbers in a specificed range and at frequency specified by
the plugins configuration.

## Overview

The TrueSight Pulse Meter (_the meter_) when installed stand alone collects over 20 measurements of the
platforms that the it is running on including by not limited to:

- CPU
- Load
- Memory
- Disk Read/Write
- Network In/out

Metric collection is extend in the meter by deploying _meter plugins_. Meter plugins can be written in any programming or
scripting language that can write to standard out. The protocol is simplistic as can be observed from the example here:

```
CPU 0.72 myhost 1467411950 
```

Where the above is sent on to TrueSight Pulse with a time series data point of CPU Utilization of 0.72 for a host named _myhost_
and a timestamp of _Fri Jul  1 22:25:50 UTC 2016_.

This protocol and other information above developing meter plugins will be discussed through the Lab exercises.

## Lab Environment

The lab environment is a Linux instance hosted on bdc.bmc.com with a instance of the TrueSight Pulse Meter installed and associated with a TrueSight Pulse account. The necessary information to access the environment will be provided by the instructor during the lab session:

1. Instructor will provide you the credentials to access the Lab environment as well as the TrueSight Pulse account.
2. TrueSight Pulse Web Interface is accessible via a Chrome browser which has been pre-installed on the lab computers in the classroom.
3. The provided Linux we be accessible via SSH which will also be pre-installed on the lab computers.


## Lab Exercises

- [1 - Meter Plugin Development](ex1.md)

- [2 - Define Plugin Metrics](ex2.md)

- [3 - Write Plugin Manifest](ex3.md)

- [4 - Plugin Configuration](ex4.md)

- [5 - Write Plugin Script](ex5.md)

- [6 - Plugin Icon](ex6.md)

- [7 - Plugin README](ex7.md)

- [8 - Plugin Deployment](ex8.md)

- [9 - Add Plugin to Meter](ex9.md)

- [10 - View Plugin Measurements](ex10.md)
 

