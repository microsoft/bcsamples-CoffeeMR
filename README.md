# [Preview] Business Central samples - Coffee MR
Discover the future of industrial sales and planning with the Coffee MR Power App sample. This scenario leverages the mixed reality (MR) capabilities of Power Apps, integrated with Business Central's comprehensive data and business logic. 

This scenario is designed around a company selling industrial coffee solutions and showcase how we can rethink the way space measurement and product visualization is approached when collecting information for Sales Orders.

The sample contains a Business Central extension, and a Power Platform solution consisting of the Coffee MR Power App and a Power Automate flow that handle some of the file upload. 

The Business Central extension adds a CoffeeItems API that is used by the Power App and extends the Item card page to include fields for 3Dmodel and spatial information.
The extension also contains a test page called “Coffee MR Sample” that lets you generate dummy sample data to make it easy to try out the sample. 

To use the 3D rendering capability, you need to upload a 3D-model to one of the BC items you want to show in the app. There is a sample 3D object available [here](https://github.com/andersgMSFT/Coffee-MR/tree/main/Sample%20Data). The rendered dimensions of the 3D model is taken from the Business Central Item values, so make sure to provide somewhat accurate measurements. The dimensions of the sample model is Depth: 60cm, Height: 50cm, Width: 30cm, which matches demo item CM003.

You can find more 3D models in the ".glb" format available online or use ones from the 3D library in [Microsoft Paint 3D app](https://apps.microsoft.com/detail/9nblggh5fv99). You can also create your own 3D models there, save as .glb file and use those in the Coffee MR app!

Notes: 
-	The sample data generator has only been tested with US versions of Business Central. Adjustments may be necessary for other locales.
-	The sample is optimized for US versions of Business Central and contains hardcoded strings in English. For multi-language support, refer to our [best practices guide](https://learn.microsoft.com/en-us/dynamics365/business-central/dev-itpro/powerplatform/power-apps-best-practices#set-up-multi-language-support-with-business-central)


## Try the sample yourself

Follow the steps in the [Try our sample apps](https://github.com/microsoft/AL-Go/blob/main/Scenarios/TryPowerPlatformSamples.md) guide to try the sample with your own tenant.

## Per Tenant Extension Project

This repository is based on the AL-Go for GitHub PTE template, which is available [here](https://github.com/microsoft/AL-Go-PTE).

## Contributing

This project welcomes contributions and suggestions.  Most contributions require you to agree to a Contributor License Agreement (CLA) declaring that you have the right to, and actually do, grant us the rights to use your contribution. For details, visit https://cla.opensource.microsoft.com.

When you submit a pull request, a CLA bot will automatically determine whether you need to provide a CLA and decorate the PR appropriately (e.g., status check, comment). Simply follow the instructions provided by the bot. You will only need to do this once across all repos using our CLA.

This project has adopted the [Microsoft Open Source Code of Conduct](https://opensource.microsoft.com/codeofconduct/).
For more information see the [Code of Conduct FAQ](https://opensource.microsoft.com/codeofconduct/faq/) or contact [opencode@microsoft.com](mailto:opencode@microsoft.com) with any additional questions or comments.

## Trademarks

This project may contain trademarks or logos for projects, products, or services. Authorized use of Microsoft trademarks or logos is subject to and must follow.
[Microsoft's Trademark & Brand Guidelines](https://www.microsoft.com/en-us/legal/intellectualproperty/trademarks/usage/general).
Use of Microsoft trademarks or logos in modified versions of this project must not cause confusion or imply Microsoft sponsorship.
Any use of third-party trademarks or logos are subject to those third-party's policies.
