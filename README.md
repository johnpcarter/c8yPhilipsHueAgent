 
 ##Philips Hue c8y Agent##

Cumulocity micro service agent to connect and play with your Philips Hue bridge and lights.
Developed using the [Software AG webMethods Micro Service Runtime](https://hub.docker.com/_/softwareag-webmethods-microservicesruntime) and available as a docker image.

This agent uses the [Philips MeetHue API](https://developers.meethue.com)

**Installation**

This source code is a webMethods Micro Service Runtime package and you will need to first install the Software AG Micro Service Runtime or download a docker image.

**local installation**
If you have an Integration Server or Micro Service Runtime running locally for development purposes, first navigate to your packages directory;

$ cd /<SAG_HOME>/IntegrationServer/packkages
or
$ cd /<SAG_HOME>/IntegrationServer/instances/<INSTANCE>/packages

If your packages directory is already under version control

$ git submodule add https://github.com/johnpcarter/c8yPhilipsHueAgent.git c8yPhilipsHueAgent

or if you do have packages directory already git controlled, then simply clone the repository

$ git clone https://github.com/johnpcarter/c8yPhilipsHueAgent.git

Then restart your runtime server and refresh your package browser in Designer.

**Remote authentication required by Philips Hue**
 
 You will need to use the following settings to obtain an oauth 2.0 token for your Hue bridge.
  
 *authorization: https://api.meethue.com/oauth2/auth?appid=cumulocity_device_manager&deviceid=c8y&device_name=c8y&response_type=code*
 
 *access: https://api.meethue.com/oauth2/token*
  
 You can register for a client id/secret via the developer site above and also find documentation on how to authenticate and obtain a token
 
 [Remote API Quick Stark Guide](https://developers.meethue.com/develop/hue-api/remote-api-quick-start-guide)
 
**Device Onboarding**

  Once you have your ouath 2.0 token, you can begin the onboarding process for the bridge and its attached lights and switches.
  
  1) [get /bridge/{name}/definition](./#/bridge/9627a8b7-1332-401b-878e-9fa641f418e4) to query the bridge and obtain a managed object
  that represents the bridge device that can be posted to c8y.
  2) [post /bridge/{c8yIdOfBridge}/provision](./#/bridge/6060f35b-3d59-402f-a3df-19df2edece0b) to create managed objects for
  all of the lights and switches attached to the bridge. The agent on successful completion will start sending metrics and listening for operations.
  
**Uploading to Cumulocity**
  Refer to [Micro Service SDK Guide](https://cumulocity.com/guides/microservice-sdk/introduction/) to see how to upload this agent to your
  Cumulocity tenant
  
**Device Models**

  This agent also defines a managed object of type '**c8y_Device_Agent**' in Cumulocity. This models allows the iOS Cumulocity Device Management app
  to provision Hue Bridges without having to hard-code this API. The OAuth 2.0 client id and secret are registered using the type '**philips-api**'. 
  You can add your own credentials to Cumulocity by posting an equivalent object to Cumulocity. The iOS app will allow the user to choose between them.
  
  Device models and images for Philips hue assets are also registered via the types '**device_Supplier**' and '**device_Model**' respectively.
