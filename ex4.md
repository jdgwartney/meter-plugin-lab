Exercise 4 - Plugin Configuration
=================================

When the meter plugin is deployed, the Plugin Manager provides plugin configuration
information that was defined in the Plugin Configuration dialog in a file named param.json.
We add an example _param.json_ file so we can test the plugin from the command line.

Details on the contents of param.json is described in Parameters

## Exercise: Adding metrics.json

1. Add the _param.json_ file to your repository by the running the following:

    ```
    $ git checkout step4
    ```

2. View Contents Of param.json
    ```
    $ cat param.json
    {
      "source": "MeterPluginTutorial",
      "interval": 10
    }
    ```
