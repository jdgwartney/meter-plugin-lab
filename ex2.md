Exercise 2 - Define Plugin Metrics
----------------------------------

Metric definitions in TrueSight Pulse provide metadata about measurements input
to the TrueSight Pulse monitoring system.

A metric definition consists of 7 values:

- _Name_ - unique metric identifier
- _Display Name _ - Label used within the web interface.
- _Short Display Name_ - Shortened label used with the web interface.
- _Description_ - Text that describes the metric.
- _Default Aggregate_ - Type of aggregate displayed by default
- _Unit_ - Quantity measured by this metric
- _Default Resolution_ - Expected frequency of measurement update
- _Type_ - Additional categorization of meteric definitions (Used only by TrueSight Intelligence).

## Name

Metric identifiers are unique immutable keys within a TrueSight Pulse account. Metric identifiers are referenced in the plugin manifest (see Plugin Manifest) and when a plugin is deployed in an account other then where the metric definitions were created, they are copied into the new account.

Metric identifiers are case insensitive but by convention they are always in upper case letters (A-Z) with allowance for a underscore (_) or dash(-) between logical words. This convention should be adhered to when defining or referencing a metric.

Metric identifiers from the same plugin should have a prefix to group similar metrics (e.g. AWS_ELB_LATENCY). Metric names that are prefixed with PULSE should be considered reserved for TrueSight Pulse’s internal use.

## Display Name

Display name is the primary label used by web user interface to reference a metric and/or its measurement. The display name appears in the following locations within the web user interface:

- Headings of graphs in dashboards. (NOTE: In case where there are two metrics being displayed on a dashboard the _Short Display Name_ is used)
- Lsssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss;;;;;;;;;;;;st of items with the metrics settings dialog
- Drop down list when defining an Alarm
- Each display name should have a common prefix so that similar metrics are grouped together and provides a hint of the system or identity to be monitored (e.g. APACHE_BYTES_PER_REQUEST).

## Short Display Name

The short display name is used in cases where using there is limited space to use the display name as a label. For example the short display name is used as:

- List of items available metrics when editing a dashboard (Settings => Dashboards).
- Label when selecting a data point on a dashboard.
- As the graph label when two metrics are shown in the same graph.
- The short display name should be limited to 20 characters or less.

## Description

Should be a concise definition that describes the metric. The description should indicate if the metric is a rate, what are the units of the metric (e.g. x/second),etc.

When building a dashboard using the dashboard editor, the tool tip associated with each item in the list of available metrics is the description.

## Default Aggregate

Default aggregate indicates which type of aggregate is displayed in dashboards by default. The following aggregates are supported:

- Average
- Maximum
- Minimum
- Sum

## Unit

A metric quantity is described by a unit which is one of the following:

- bytecount
- duration
- number
- percentage

## Default Resolution

Default resolution describes how often measurements for this metric will be updated. This value is used to extend the line on a dashboard to provide better visualization, instead of drawing single points.


## Metric Definitions for our Plugin

The tutorial meter plugin has but a single metric that needs to be defined. Meter plugin metrics are defined in a file name metrics.json.

Details on the contents of metrics.json is described in Metrics

## Adding metrics.json to our Plugin

When a meter plugin is deployed the `metrics.json` file is loaded to define the metrics for which the plugin generates
measurements. This quick exercises adds the `metrics.json` to our plugin.

1. Add the metrics.json file to your repository by the running the following:

    ```
    $ git checkout step1
    ```

2. View Contents of metrics.json

    ```
    $ cat metrics.json
    {
        "TUTORIAL_METRIC": {
            "defaultAggregate": "AVG",
            "defaultResolutionMS": 1000,
            "description": "Metric definition for the tutorial meter plugin",
            "displayName": "Tutorial Metric",
            "displayNameShort": "Tut. Metric",
            "isDisabled": false,
            "unit": "number"
        }
    }
