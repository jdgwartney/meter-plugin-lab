Exercise 8 - Plugin Deployment
==============================

Once the contents of the meter plugin have been defined, we can deploy the meter plugin into our account.

To add the meter plugin to our account once again we will use the TrueSight Pulse CLIs.

Exercise: Adding the Meter Plugin To Your Account

1. To run the command to add the plugin we must have your TrueSight Pulse account e-mail and API token from Settings => Account. Additionally the name of your GitHub account is required. We then run the following command to add the plugin to your account.

    ```
    $ plugin-add -e <email@example.com> -t <API Token> -n tutorial -o <GitHub User name> -r meter-plugin-tutorial
    Installing the Meter Plugin
    ```

2. Make the plugin active in your account by running the following command:

   ```
   $ plugin-install -e <email@example.com> -t <API Token> -n tutorial
   ```

3. Verify the Meter Plugin is Installed.

    - Login into your TrueSite Pulse Account
    - Navigate to Settings => Plugins
    - Scroll the list unit you see a plugin with the name tutorial.


For additional details regarding deploying meter plugins see Deploying

