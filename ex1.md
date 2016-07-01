Exercise 1 - Meter Plugin Development
=====================================

A concise summary of the tasks for developing meter plugin are listed here:

1. Create Meter Plugin Contents
2. Install Meter Plugin Into Account
3. Add Meter Plugin to a Meter
4. View Meter Plugin Measurements

The meter plugin contents consist of a set files as listed here with a short description:

- plugin.json - Plugin manifest that contains version and other metadata
- metrics.json - Plugin metric definitions used by the plugin
- true-sight.png - Icon for displaying plugin in user interface
- README.md - Documentation about the plugin configuration displayed in the user interface
- param.json - Example plugin configuration files for testing the plugin
- init.py - Script that implements the plugin measurement collection

The Meter plugin development process which creates contents above are versioned 
and deployed using a GitHub repository. Given the limited time for the lab the contents
are pre-defined in an existing GitHub repository and then replicated to
the allocated Linux environment. Making the simplification eases the students
need to understand the ins and outs of git, along with the ability to use
command line text editors such as _vi_, _emacs_, or _nano_.

Downloading Plugin Contents

For this tutorial the meter plugin will generate a random number between 0 and 99.

The contents of the meter plugin have already been pre-defined and can be cloned from GitHub.

## Cloning the Meter Plugin Contents

1. Clone the GitHub repository with the meter plugin contents:

    ```
    $ git clone https://github.com/boundary/meter-plugin-tutorial.git
    ````

2. Change directory to the newly cloned repository:

    ```
    $ cd meter-plugin-tutorial
    ```



