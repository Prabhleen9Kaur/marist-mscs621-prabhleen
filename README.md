<h1 align="center" style="border-bottom: none;"><B>MSCS-621 Fall 2018 : Cloud ComputingProject<B> </h1>
<h4 align="left" border-style:none >Prabhleen Kaur<br>MS Software Development  </h4>

<h1 align="center" style="border-bottom: none;"><B>Watson Assisstant Food Coach App<B> </h1>
<h4 align="left" style="border-bottom: none;">The Project is an application based on Watson Assistant and the purpose of this project is to deploy the application into hybrid cloud  environment and configure and run in two different cloud environment.This application demonstrates how the Watson Assistant (formerly Conversation) service can be adapted to use Tone Analyzer's tone along with intents and entities in a simple chat interface.</h4>

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
<B>APIs Specification :</B>Watson Assistant API , Data Handling and methode to get user response.
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


## Developing the application
The Application acan be deployed by following the steps mentioned below.Here IBM Cloud and AWS cloud services are used .By following the steps it can be deployed in any cloud environment.Snips have been attached to help follow the steps.

## Prerequisites

1. Sign up for an [IBM Cloud account](https://console.bluemix.net/registration/).
1. Download the [IBM Cloud CLI](https://console.bluemix.net/docs/cli/index.html#overview).
1. Create an instance of the Watson Assistant service and get your credentials:
    - Go to the [Watson Assistant](https://console.bluemix.net/catalog/services/conversation) page in the IBM Cloud Catalog.
    - Log in to your IBM Cloud account.
    - Click <B>Create</B>.
    - Click <B>Show</B> to view the service credentials.
    - Copy the `apikey` value, or copy the `username` and `password` values if your service instance doesn't provide an `apikey`.
    - Copy the `url` value.
1. Create an instance of the Tone Analyzer service and get your credentials:
    - Go to the [Tone Analyzer](https://console.bluemix.net/catalog/services/tone-analyzer) page in the IBM Cloud Catalog.
    - Log in to your IBM Cloud account.
    - Click <B>Create</B>.
    - Click <B>Show</B>to view the service credentials.
    - Copy the `apikey` value, or copy the `username` and `password` values if your service instance doesn't provide an `apikey`.
    - Copy the `url` value.

![watsonapi](https://github.com/Prabhleen9Kaur/marist-mscs621-prabhleen/blob/master/readme_images/watsonapi.JPG?raw=true)

## Configuring the application

1. In your <B>IBM Cloud console</B>, open the Watson Assistant service instance

2. Click the <B>Import workspace</B> icon in the Watson Assistant service tool. Specify the location of the workspace JSON file in your local drive of the app project:

   `<project_root>/food-coach/training/food-coach-workspace.json`

3. Select <B>Everything (Intents, Entities, and Dialog)</B> and then click <B>Import</B>. The skill dashboard workspace is created.

4. Click on the<B>Skills</B> from the header or from the homepage <Skill/Food Coach/Build> 

5. Click on the 3 dots of the skill in the upper-right corner of the workspace title, and then select <B>View API details</B>.

6. Copy the <B>workspace ID</B>, <B>Username</B> and <B>Password</B> to the clipboard.

    ![watson](https://github.com/Prabhleen9Kaur/marist-mscs621-prabhleen/blob/master/readme_images/watson.JPG?raw=true)

<h2 align="left"  style="border-bottom: none;"><B>Deploying the Application</B>  </h2>

## Running locally

1. In the Terminal, Run `vagrant up`
2. Run `vagrant ssh` <br>

![Ibm_vagrantup](https://github.com/Prabhleen9Kaur/marist-mscs621-prabhleen/blob/master/readme_images/Ibm_vagrantup.JPG?raw=true)<br>

![ibm_vagrantssh](https://github.com/Prabhleen9Kaur/marist-mscs621-prabhleen/blob/master/readme_images/ibm_vagrantssh.JPG?raw=true)

3. Clone the repo into the vagrant machine <br>
   `git clone https://github.com/Prabhleen9Kaur/marist-mscs621-prabhleen.git`<br>
4. In the application folder, copy the *.env.example* file and create a file called <B>.env</B> 

    ```
     cp .env.example .env
    ```
5. Open the *.env* file and add the service credentials that you obtained in the previous step.

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

6. Add the `WORKSPACE_ID` to the previous properties

    ```
    WORKSPACE_ID=522be-7b41-ab44-dec3-g1eab2ha73c6
    ```

7. Your `.env` file  should looks like:

    ```
    # Environment variables
    WORKSPACE_ID=1c464fa0-2b2f-4464-b2fb-af0ffebc3aab
    ASSISTANT_IAM_APIKEY=_5iLGHasd86t9NddddrbJPOFDdxrixnOJYvAATKi1
    ASSISTANT_URL=https://gateway-syd.watsonplatform.net/assistant/api

    TONE_ANALYZER_IAM_APIKEY=UdHqOFLzoOCFD2M50AbsasdYhOnLV6sd_C3ua5zah
    TONE_ANALYZER_URL=https://gateway-syd.watsonplatform.net/tone-analyzer/api
    ```

![ibm_nanoNode](https://github.com/Prabhleen9Kaur/marist-mscs621-prabhleen/blob/master/readme_images/ibm_nanoNode.JPG?raw=true)

8. Install the dependencies <a href="https://github.com/nodesource/distributions/blob/master/README.md#debinstall"> Node.js </a> ,<a href="https://github.com/nodesource/distributions/blob/master/README.md#debinstall">IBM Cloud CLI</a> ,<a href="https://docs.docker.com/install/linux/docker-ce/ubuntu/#install-docker-ce-1">Docker </a>  &<a href="https://docs.docker.com/compose/install/#install-composel"> Docker-Compose </a>

9. Create Dockerfile and docker-compose.yml :
 'vi Dockerfile'
 'vi docker-compose.yml'
10. Run
   ```
    sudo docker-compose up
   ```
 ![ibm_dockercomposeup](https://github.com/Prabhleen9Kaur/marist-mscs621-prabhleen/blob/master/readme_images/ibm_dockercomposeup.JPG?raw=true)


11. Run the application

    ```
    npm start
    ```

12. View the application in a browser at `localhost:3000`

## Deploying to AWS Cloud Services

1. Sign up for an AWS Cloud Account.
2. Login to AWS Cloud with the [AWS Cloud Console](https://us-east-2.console.aws.amazon.com)

    ```
    awscloud login
    ```

![aws_instance](https://github.com/Prabhleen9Kaur/marist-mscs621-prabhleen/blob/master/readme_images/aws.gif?raw=true)<br>

3. Create an Instance of AWS EC2 <B>Ubuntu</B><br>

4. Go to the AWS sevices EC2 page in the AWS Cloud Services.<br>

5. Click EC2 under compute to create an instance.<br>

6. Click Launch Instance<br>

7. Choose an AMI (eg: Ubuntu Server 16.04 LTS (HVM), SSD Volume Type - ami-0f9cf087c1f27d9b1 (64-bit x86) / ami-036ede09922dadc9b (64-bit Arm) I have used this for my project)

8. Click select and choose a instance type (t2 micro is used in this project).<br>

9. Create a new key pair with your name and download it to your local folder
10. Navigate to Running Instances on your EC2 Dashboard


 ![aws_instance](https://github.com/Prabhleen9Kaur/marist-mscs621-prabhleen/blob/master/readme_images/aws_instance.JPG?raw=true)
 
11. Copy the Public DNS (IPv4) and IPv4 Public IP
12. Under the Menu in top left corner ,Navigate to Security Groups
13. Select the newly created security group and select Inbound below
14. Click Edit and Add Rule
15. Change the Port Range to 3000 and Source to Anywhere and Save
16. Open up a terminal and navigate to folder with downloaded key file
17. Run
   ```
     chmod 400 <Your key file>
   ```
18. Run 
  ```
    ssh -i <key file> ubuntu@<Public DNS (IPv4)>
   ```
Public DNS (IPv4) can be found in your AWS EC2 Dashboard Running Instances

19. Clone the repo into the vagrant machine <br>
   'git clone https://github.com/Prabhleen9Kaur/marist-mscs621-prabhleen.git'<br>
20. In the application folder, copy the *.env.example* file and create a file called *.env* 

    ```
    cp .env.example .env
    ```

15. Open the *.env* file and add the service credentials that you obtained in the previous step.
16. Add the `WORKSPACE_ID` to the previous properties
17. Your `.env` file  should looks like:

   ![AWS_nano](https://github.com/Prabhleen9Kaur/marist-mscs621-prabhleen/blob/master/readme_images/AWS_nano.JPG?raw=true)

18. Install the dependencies <a href="https://github.com/nodesource/distributions/blob/master/README.md#debinstall"> Node.js </a> ,<a href="https://github.com/nodesource/distributions/blob/master/README.md#debinstall">IBM Cloud CLI</a> ,<a href="https://docs.docker.com/install/linux/docker-ce/ubuntu/#install-docker-ce-1">Docker </a>  &<a href="https://docs.docker.com/compose/install/#install-composel"> Docker-Compose </a>

19. Create Dockerfilr and docker-compose.yml :
 'vi Dockerfile'
 'vi docker-compose.yml'
 20. Run
   ```
    sudo docker-compose up
   ```
 ![aws_dockercompose](https://github.com/Prabhleen9Kaur/marist-mscs621-prabhleen/blob/master/readme_images/aws_dockercompose.JPG?raw=true)


21. Run the application

    ```
    npm start
    ```

22. View the application in a browser at `localhost:3000`

![demo](https://github.com/Prabhleen9Kaur/marist-mscs621-prabhleen/blob/master/readme_images/demo.gif?raw=true) <br>

<a href="https://github.com/Prabhleen9Kaur/marist-mscs621-prabhleen/blob/master/Cloud%20Final%20Project%20ppt.ppt"> Final Project ppt</a>

# License

  This sample code is licensed under Apache 2.0.
  Full license text is available in [LICENSE](LICENSE).


## Open Source @ IBM

  Find more open source projects on the
  [IBM Github Page](http://ibm.github.io/).
