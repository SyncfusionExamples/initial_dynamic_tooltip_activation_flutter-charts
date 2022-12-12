# How to activate the tooltip dynamically on initial rendering of flutter charts?

The SfCartesianChart widget provides an option to show tooltip programmatically using showByIndex method. By using that, we can display a tooltip at a particular point. The following steps explain how to accomplish this. Add addPostFrameCallback method in build method, and call the showByIndex method by passing series and point indexes as an argument to show the tooltip after the data source has been updated.

Documentation: https://help.syncfusion.com/flutter/cartesian-charts/methods#methods-in-tooltipbehavior

## Requirements to run the demo
* [VS Code](https://code.visualstudio.com/download)
* [Flutter SDK v2.0.0+](https://flutter.dev/docs/development/tools/sdk/overview)
* [For more development tools](https://flutter.dev/docs/development/tools/devtools/overview)

## How to run this application
To run this application, you need to first clone or download the ‘initial dynamic tooltip activation flutter charts’ repository and open it in your preferred IDE. Then, build and run your project to view the output.

## Further help
For more help, check the [Syncfusion Flutter documentation](https://help.syncfusion.com/flutter/introduction/overview), or
 [Flutter documentation](https://flutter.dev/docs/get-started/install).
