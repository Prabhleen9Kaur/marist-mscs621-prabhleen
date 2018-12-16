<h1 align="center" style="border-bottom: none;"><B>MSCS-621 Fall 2018 : Cloud ComputingProject<B> </h1>
<h4 align="left" border-style:none >Prabhleen Kaur<br>MS Software Development  </h4>

<h1 align="center" style="border-bottom: none;"><B>Watson Assisstant Food Coach App<B> </h1>
<h4 align="left" style="border-bottom: none;">The Project is an application based on Watson Assistantand the purpose of this project is to deploy the application into hybrid cloud  environmentand ,configure and run in two different cloud environment.This application demonstrates how the Watson Assistant (formerly Conversation) service can be adapted to use Tone Analyzer's tone along with intents and entities in a simple chat interface.</h4>

<h2 align="left" style="border-bottom: none;"> <B>Purpose of the Application<B> </h2><br>
<p style="border-bottom: none;">The application interface is designed for chatting with a coaching bot. Based on the time of day, it asks you if you've had a particular meal (breakfast, lunch, or dinner) and what you ate for that meal.

The chat interface is in the left panel of the UI, and the JSON response object returned by the Assistant service in the right panel. Your input is run against a small set of sample data trained with the following intents:

yes: acknowledgment that the specified meal was eaten
no: the specified meal was not eaten
help
exit
The dialog is also trained on two types of entities:

food items
unhealthy food items
These intents and entities help the bot understand variations your input.

After asking you what you ate (if a meal was consumed), the bot asks you how you feel about it. Depending on your emotional tone, the bot provides different feedback.
    </p>
 
  <h2 align="left"  style="border-bottom: none;"><B>Project  Architecture<B>  </h2>
  <p>The Architecture of the project explains the development and the pilot environment.The project is developed using IBM Cloud Services(Bluemix + Watson) and Rest APIs.The application is deployed in the Local Cloud and Local Browser.AWS cloud service is used for deployment of the application in the hybrid cloud environment .The Vagrant ,Docker and Virtual box is used for deploying the app locally.The GitHub is used as the source code repository.The code is borrowed from github project https://github.com/watson-developer-cloud/food-coach.<br>
<B>APIs Specification :<B>Watson Assistant API , Data Handling and methode to get user response.
    </p>
    
  ![CCProj](https://github.com/Prabhleen9Kaur/marist-mscs621-prabhleen/blob/master/readme_images/CCProj.jpg?raw=true)
 
 <h2 align="left" style="border-bottom: none;"><B>Dependencies and Services used <B>  </h2>
 <p><ul>
    <li><a href="https://console.bluemix.net/docs/cli/index.html#overview">IBM Cloud Services</a></li>
    <li><a href="https://aws.amazon.com/console/">AWS Cloud Services</a></li>
    <li><a href="https://github.com/nodesource/distributions/blob/master/README.md#debinstall">Node.js</a></li>
    <li><a href="https://console.bluemix.net/docs/cli/index.html#overview">IBM Cloud CLI</a></li>
    <li><a href="https://docs.docker.com/install/linux/docker-ce/ubuntu/#install-docker-ce-1">Docker</a></li>
    <li><a href="https://docs.docker.com/compose/install/#install-compose">Docker-Composer</a></li><br>
    </P>
    
   

![app demo](https://github.com/Prabhleen9Kaur/marist-mscs621-prabhleen/blob/master/readme_images/app%20demo.gif?raw=true)
Demo: http://food-coach.ng.bluemix.net/


## Deploying the application
The Application acan be deployed by following the steps mentioned below.Here IBM Cloud and AWS cloud services are used .By following the steps it can be deployed in any cloud environment.Snips have been attached to help follow the steps.

## Prerequisites

1. Sign up for an [IBM Cloud account](https://console.bluemix.net/registration/).
1. Download the [IBM Cloud CLI](https://console.bluemix.net/docs/cli/index.html#overview).
1. Create an instance of the Watson Assistant service and get your credentials:
    - Go to the [Watson Assistant](https://console.bluemix.net/catalog/services/conversation) page in the IBM Cloud Catalog.
    - Log in to your IBM Cloud account.
    - Click <B>Create<B>.
    - Click <B>Show<B> to view the service credentials.
    - Copy the `apikey` value, or copy the `username` and `password` values if your service instance doesn't provide an `apikey`.
    - Copy the `url` value.
1. Create an instance of the Tone Analyzer service and get your credentials:
    - Go to the [Tone Analyzer](https://console.bluemix.net/catalog/services/tone-analyzer) page in the IBM Cloud Catalog.
    - Log in to your IBM Cloud account.
    - Click <B>Create<B>.
    - Click <B>Show<B>to view the service credentials.
    - Copy the `apikey` value, or copy the `username` and `password` values if your service instance doesn't provide an `apikey`.
    - Copy the `url` value.

![watsonapi](https://github.com/Prabhleen9Kaur/marist-mscs621-prabhleen/blob/master/readme_images/watsonapi.JPG?raw=true)

## Configuring the application

1. In your <B>IBM Cloud console<B>, open the Watson Assistant service instance

2. Click the <B>Import workspace<B> icon in the Watson Assistant service tool. Specify the location of the workspace JSON file in your local drive of the app project:

   `<project_root>/food-coach/training/food-coach-workspace.json`

3. Select <B>*Everything (Intents, Entities, and Dialog)<B> and then click <B>Import<B>. The skill dashboard workspace is created.

4. Click on the<B>Skills<B> from the header or from the homepage <Skill/Food Coach/Build> 

5. Click on the 3 dots of the skill in the upper-right corner of the workspace title, and then select <B>View API details<B>.

6. Copy the <B>*workspace ID<B>, <B>*Username<B> and <B>Password<B> to the clipboard.

    ![watson](https://github.com/Prabhleen9Kaur/marist-mscs621-prabhleen/blob/master/readme_images/watson.JPG?raw=true)

6. In the application folder, copy the *.env.example* file and create a file called *.env*

    ```
    cp .env.example .env
    ```

7. Open the *.env* file and add the service credentials that you obtained in the previous step.

    Example *.env* file that configures the `apikey` and `url` for a Watson Assistant service instance hosted in the US East region:

    ```
    ASSISTANT_IAM_APIKEY=X4rbi8vwZmKpXfowaS3GAsA7vdy17Qh7km5D6EzKLHL2
    ASSISTANT_URL=https://gateway-wdc.watsonplatform.net/assistant/api
    ```

    If your service instance uses `username` and `password` credentials, add the `ASSISTANT_USERNAME` and `ASSISTANT_PASSWORD` variables to the *.env* file.

    Example *.env* file that configures the `username`, `password`, and `url` for a Watson Assistant service instance hosted in the US South region:

    ```
    ASSISTANT_USERNAME=522be-7b41-ab44-dec3-g1eab2ha73c6
    ASSISTANT_PASSWORD=A4Z5BdGENrwu8
    ASSISTANT_URL=https://gateway.watsonplatform.net/assistant/api
    ```

8. Add the `WORKSPACE_ID` to the previous properties

    ```
    WORKSPACE_ID=522be-7b41-ab44-dec3-g1eab2ha73c6
    ```


9. Your `.env` file  should looks like:

    ```
    # Environment variables
    WORKSPACE_ID=1c464fa0-2b2f-4464-b2fb-af0ffebc3aab
    ASSISTANT_IAM_APIKEY=_5iLGHasd86t9NddddrbJPOFDdxrixnOJYvAATKi1
    ASSISTANT_URL=https://gateway-syd.watsonplatform.net/assistant/api

    TONE_ANALYZER_IAM_APIKEY=UdHqOFLzoOCFD2M50AbsasdYhOnLV6sd_C3ua5zah
    TONE_ANALYZER_URL=https://gateway-syd.watsonplatform.net/tone-analyzer/api
    ```

## Running locally

1. Install the dependencies

    ```
    npm install
    ```

1. Run the application

    ```
    npm start
    ```

1. View the application in a browser at `localhost:3000`

## Deploying to IBM Cloud as a Cloud Foundry Application

1. Login to IBM Cloud with the [IBM Cloud CLI](https://console.bluemix.net/docs/cli/index.html#overview)

    ```
    ibmcloud login
    ```

1. Target a Cloud Foundry organization and space.

    ```
    ibmcloud target --cf
    ```

1. Edit the *manifest.yml* file. Change the **name** field to something unique.  
  For example, `- name: my-app-name`.
1. Deploy the application

    ```
    ibmcloud app push
    ```

1. View the application online at the app URL.  
For example: https://my-app-name.mybluemix.net


# What to do next

After you have the application installed and running, experiment with it to see how it responds to your input.

## Modifying the application

After you have the application deployed and running, you can explore the source files and make changes. Try the following:

   * Modify the .js files to change the application logic.

   * Modify the .html file to change the appearance of the application page.

   * Use the Assistant tool to train the service for new intents, or to modify the dialog flow. For more information, see the [Assistant service documentation](https://console.bluemix.net/docs/services/conversation/index.html#about).

# What does the Food Coach application do?

The application interface is designed for chatting with a coaching bot. Based on the time of day, it asks you if you've had a particular meal (breakfast, lunch, or dinner) and what you ate for that meal.

The chat interface is in the left panel of the UI, and the JSON response object returned by the Assistant service in the right panel. Your input is run against a small set of sample data trained with the following intents:

    yes: acknowledgment that the specified meal was eaten
    no: the specified meal was not eaten
    help
    exit

The dialog is also trained on two types of entities:

    food items
    unhealthy food items

These intents and entities help the bot understand variations your input.

After asking you what you ate (if a meal was consumed), the bot asks you how you feel about it. Depending on your emotional tone, the bot provides different feedback.

Below you can find some sample interactions:

![Alt text](readme_images/examples.jpeg?raw=true)

In order to integrate the Tone Analyzer with the Assistant service, the following approach was taken:
   * Intercept the user's message. Before sending it to the Assistant service, invoke the Tone Analyzer Service. See the call to `toneDetection.invokeToneAsync` in the `invokeToneConversation` function in [app.js](./app.js).
   * Parse the JSON response object from the Tone Analyzer Service, and add appropriate variables to the context object of the JSON payload to be sent to the Assistant service. See the `updateUserTone` function in [tone_detection.js](./addons/tone_detection.js).
   * Send the user input, along with the updated context object in the payload to the Assistant service. See the call to `assistant.message` in the `invokeToneConversation` function in [app.js](./app.js).


You can see the JSON response object from the Assistant service in the right hand panel.

![Alt text](readme_images/tone_context.jpeg?raw=true)

In the conversation template, alternative bot responses were encoded based on the user's emotional tone. For example:

![Alt text](readme_images/rule.png?raw=true)


# License

  This sample code is licensed under Apache 2.0.
  Full license text is available in [LICENSE](LICENSE).

# Contributing

  See [CONTRIBUTING](CONTRIBUTING.md).

## Open Source @ IBM

  Find more open source projects on the
  [IBM Github Page](http://ibm.github.io/).
