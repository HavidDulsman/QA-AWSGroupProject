# QA Consulting: Amazon Web Services Group Project


This project was created in reference to the 'Final_project_brief'. This Project meets all of the specifications of said documents and fully displays the ability of all those who worked on this project.

This Project is due Week 12 of the QA Consultancy DevOps 17th February 2020 Intake.

## Contributors
+ Bailey Elson (https://github.com/Bailey-Elson)
+ David Hulsman(https://github.com/HavidDulsman)
+ Denzel Douglas(https://github.com/Denzaaaaal)
+ Thomas Cole(https://github.com/TDCole21)

## Table of Contents

1. [Brief]()
    + [Requirements]()
2. [Project Plan]()
    + [Kanban Board]()
    + [Feature Branch Model]()
3. [Sprint History]()
    + [Pre-Sprint (28/04/2020)]()
    + [Sprint 1 (29/04/2020)]()
    + [Sprint 2 (30/04/2020)]()
    + [Sprint 3 (01/05/2020)]()
    + [Sprint 4 (04/05/2020]()
    + [Sprint 5 (05/05/2020]()
4. [Architecture]()
5. [Risk Assessment]()
    + [Pre/Early Development]()
    + [After Project Completition]()
6. [Deployment]()
    + [List of techonologies used]()
7. [Testing]()
    + [Pytest]()
    + [Coverage]()
8.[Pricing]()
9. [Project retrospective]()
    + [Notable Achievements]()
    + [Project Shortcomings]()
    + [Future Improvements]()
10. [Installation Guide]()

## Brief

Usings the two following documented applications
- Front end client using AngualrJS (https://github.com/spring-petclinic/spring-petclinic-angular)
- Java API (https://github.com/spring-petclinic/spring-petclinic-rest)

We need to plan, design and implement a solution for automating the deployments and development workflows of these applications.

We must also take the following into consideration throughout the project:
* What tools we will use, being able to justify our decisions
* Multiple enviroment support, how can a developer test their new feature on an enviroment before merging their changes to the main branch
* Automatic builds, can changes to the Github repository automatically build and deploy to testing and live enviroments 
* Running costs, is the soloution cost effective and what are the monthly cost estimates

### Requirements

The requirements for this task are: 
* Continously updated Kanban Board with full expansion on tasks needed to complete the project
* An initial and then continously updated risk assessment with corresponding matrix
* Deployment pipeline
* Use of Amazon Web Service features 
* Use of Dev Ops tools 

## Project Plan
### Kanban Boards
As with the previous projects, we are using Trello as the host for our kanban boards. Kanban boards will be frequently updated and posted each day to highlight the progression of our project
![trello 1](https://i.imgur.com/kJoFrLK.png)
### Feature Branch Model
After two previous projects, we were all well acustomed to the feature branch model and the benefits it can bring. We have opted to expand again to seperate branchs from the developer. The first for **terraform and the project infrastructure** where all of the early development on the project would be done. The second is for **docker and ansbile** which will allow us to add functionality to the new instances made by the previous stages. When each is completed to a suitable standard it will the be pushed to developer then further to master
![fbm](https://i.imgur.com/td9GuZG.png)
### Collaboration on tasks
As this was our first group project, we looked to combine all of the experiences so far to effectively work together. We looked to use a **shared github repository** hosted by 1 person, but with the other 3 as collaborators and able to do any the owner can do. 
![statistics](https://i.imgur.com/NgjPU3N.png)
## Sprint History
### Pre-Sprint (28/04/2020)
We had the chance to look at the project brief 24 hours before our first meeting with our client for the first official standup and scrum. During this time we spoke in deep about the requirements of the project, as well as who would be responsible for deliverables, repositorys and the roles within our team. 

#### Roles and Responsibilities
As for a Scrum master, **David Hulsman** was nominated due to his healthy relationship with the other members of the team, as well as the fact he was already in contact with the client regarding light details about the project. With this role, we also opted to use his github account to create and host the repository for the project. Outside of this, **Bailey Elson** nominated himself to host the AWS Services and create the IAM roles for his account. It was his responsibility to create all of the roles and permissions for everyone based of who we decide is doing what.

#### Working Philosophy
Before we assigned tasks to people, we discussed the weak and strong areas of everyones previous projects, as well as the areas in which everyone wanted to work on. We found out that whilst everyone had strong areas, no one had major weaknesses which created the first problem. To counter this, we decided to work on tasks in **groups of two, with one shadowing another**. With this solution, not only could we give 2 unique perspectives on a task but it also allowed crutial information to be easily crossed over into other tasks that one of the two were working on after. We understood the negatives of this philosophy, with us only limited to a short time to complete the project, however we believe it would keep everyone happy and focused working in pairs.


### Sprint 1 (29/04/2020)
#### Sprint Planning
After our first daily standup, we had the chance to ask some questions to the client and fill in the little holes in the project brief. After establishing the scope and scale of the project, we conducted some light research into solutions and project infrastructure so we can design our tasks in a suitable order. **Denzel** voluteered to start with the **dockerisation of the front and backend services**, as he was already underway with the creation of the backend container. **David and Bailey** focused on compiling a **Risk Assessment** on the project and solutions to those risks found, whilst **Tom** conducted individual research into the project infrastructure ahead of the terraform creation.
#### Trello Board
![trello 1](https://i.imgur.com/kJoFrLK.png)
#### Sprint Review
As we began to get adjusted to the scope of our new project, progression was haltered due to some errors with the **frontend** and its containerisation. This was caused due to inexperience with both the language it is written in, as well as **Angular**, the framework used for the frontend. We decided to offer **Denzel** more support in the future with this tasks to hopefully solve this issue. **All team members** eventually joined back together to **discuss the project infrastructure** and thought of questions regarding it for our next daily standup.

### Sprint 2 (30/04/2020)
#### Sprint Planning
For our 2nd standup meeting, we opted to take this opportunity to discuss potenital platform architecture with our client. This allowed us to nail down some final ideas, as well as explore new areas which will be touched on later. The final architecture can be viewed further down in the **Architecture** section of the report. **Bailey** joined Denzel for additional support on the **containerisation** of the front end, as it was proving quite the challenge due to the unfamiliarity of tools such as **Angular**. **Tom and David** started work on the **terraform infrastructure** of the application as we now had new confidence thanks to our stand up meeting
#### Trello Board
![trello 2](https://i.imgur.com/OFKIPu7.png)

#### Sprint Review
Alot more work was conducted during this sprint as the team slowly started to get a feel for the tools and infrastructure of the project. Large areas of the **Terraform infrastructure** was completed, with only a few light parts suchs as the load balancer and security group adjustments needed. Progression was made on **developing containers for the testing enviroment**, however many hiccups meant that alot of other tasks where looking to get pushed back. A solution was thankfully applied later that evening, as well as **NGINX implementation onto the frontend services**.

We look to have a MVP functioning before the weekend, leaving us with some time next week to experiment with better alternatives to our current application.

### Sprint 3 (01/05/2020)
#### Sprint Planning
The main focus of this sprint was to have a **working minimal viable product** by the weekend. We had success late last night with a **breakthrough on the frontend dockerisation**, however this seemed to a meer blimp as it was no working again during the standup. **Denzel** would continue to focus with containerisation, as other tasks relied on its completion. **Tom and David** would also continue with new terraform developments, with bailey offering to start on **Jenkins** related tasks as well as overall continued support

#### Trello Board
![trello 3](https://i.imgur.com/IWThCp3.png)

#### Sprint Review
We originally planned to use **Docker Swarm** for orchestration due to shared confidence in the platform. However we shared a common interest to move to **Elastic Kubernetes Service on AWS**, as we can look to contain all management within the same AWS platform. This caused some confused at the start but we quickly adapted. **David** focused on completing Terraform with its new requirements, who had support from **Bailey** and **Tom**, of which both progressed with **documentation and infrastructure design**. What seemed like a disappointing sprint was inevitably saved in the later hours as a **solution to our everlasting frontend container issue** was uncovered. **Denzel** used additional out of hours to optimise the current docker solution, as well as implement a **NGINX container** that will be used for easy deployment once we are ready. 

Whilst a working MVP is still not available, we will look to finish up on the weekend, allowing us all of next week to focus on interesting ideas to improve the application infrastructure.

### Sprint 4 (04/05/2020)
#### Sprint Planning
After some light work on the weekend, we starting growing desperate to achieve a Minimal Viable Product, as we realised we not only had limited time, but we were quickly losing the time we wanted to experiment with. **More containerisation issues**  plagued the team further on the weekend, so we quickly looked for support for this issue. This was the day **Denzel** was unable to complete major work, so we had to focus on other elements, from ansible, kubenetes and documentation. **Bailey** would continue his work on **Jenkins**, whilst **Tom** had done previous research on **Kubernetes** and looked to apply that knowledge in his YAML Files.
#### Trello Board
![trello 4](https://i.imgur.com/oneFJtC.png)

#### Sprint Review
Alot of new issues where uncovered during the weekend and this sprint, that yet again had massive effects on the progress that can be made. We learnt alot about docker techniques this sprint and opted to change from **3 to 2 containers**. The requirements of the ansible and kubenetes required some additional work to the terraform architecture but was completed by the end of the day. The jenkins instance is now full operational and prepared for the later task, that we have now distributed and started. 

Due to the serverity of the delays we are facing, we are now looking to simply achieve the MVP, whilst leaving time to curate the best presentation possible
### Sprint 5 (05/05/2020)
#### Sprint Planning
With all other tasks completed or dependant on the containerisation of the frontend and backend, all of our efforts would join to discover a solution for our project. Once that problem was been solved, we can quickly look to add everything else and achieve the MVP. However there will be little time to optimise our solution after this as we have to prepare for our presentation

#### Trello Board
![trello 5](https://i.imgur.com/fO4dRcy.png)

#### Sprint Review
**A minimal viable product was finally achieved!** **Denzel** was finally able to fix the error with containerisation and thus allowed us to move forward with the project! **Tom** and **Bailey** had time to prep their solutions whilst waiting for the containers, meaning they where allowed to easily and effectively implement their task. This has meaned we now can access our application on the worker nodes of the cluster.

We will now look to implement light testing features, polish some of our solutions and prepare for our presentation on Thursday.

## Architecture
### Infrastructual Diagram
#### Initial Diagram
![infrastructual diagram](https://i.imgur.com/tY1iRY9.png) 
#### Final Diagram
![infrastructual diagram](https://i.imgur.com/DpQrw2P.png)
## Risk Assessment
### Pre/Early Development
A risk assessment was compiled to look and examine risk related to the project, its requirements and demands. Due to the complexity, detail and size of the risk assessment we have opted to include it as it's own file which can be accessed through the documentation folder in this repository or by using [this link](https://github.com/HavidDulsman/QA-AWSGroupProject/blob/master/Documentation/AWS_initial_RA.xlsx).
A **Risk Assessment Matrix** has been implemented into the document.

### After Project Completetion


## Deployment
### List of technologies used
#### Technologies Used in Applications Given to us
* TypeScript: Programnming Language
* JavaScript: Programming Language 
* HTML: Markup Language for Web Pages
* CSS: Style Sheet Language 
* Java: Programming Language
* TSQL: Transactional lanuage for SQL
* Docker: Containerisation Service
* DockerHub: Version Control for Docker Images and Containers

#### Technologies we used
* Github: Version Control System
* Jenkins: Continous Intergration Server
* Amazon Web Service: Cloud Service
* Trello: Kanban Board and Project Tracking
* Docker: Containerisation Service
* DockerHub: Version Control for Docker Images and Containers
* NGINX: Load Balancing 


## Testing
### Pytest
### Coverage

## Pricing
All the following pricing is taken from offical AWS documentation and is accurate as of 06/05/2020. The currency conversion between dollars and pounds is using the current conversion rate accurate on 06/05/2020. Total costs might be less if you are still within the AWS free tier usage.
![Pricing List](https://i.imgur.com/SiuNiCH.png)

## Project Retrospective
As part of the project retrospective, each member of the team will have time to explain how the project went for them, and include unique items and perspectives to certain tasks.
### Notable Achievements
#### David: Sharp Implementation of Jenkins and Kubernetes
![kubernetes on jenkins instance](https://i.imgur.com/vS7ywzY.png)
Whilst the team had continous issues with the earlier tasks, certainly with containerisation, the others who where responsible for **Jenkins** and **Kubenetes management** where quick to responde, allowing us to achieve a MVP the same day we achieve connectivity between the front and backend containers.

#### Denzel: Good teamworking dynamic
#### Bailey:
#### Thomas:
### Project Shortcomings
#### David: Negative impact of working in teams
Working in pairs allowed some of us to give multiple opinions on design choices as well as learn of others that where maybe more experienced. However many of the negatives of this where eventually felt when we **started losing time**, with calls that we **wernt spreading our workforce evenly enough**. Due to this, we lost alot of time to optimise our solution after the MVP.
#### Denzel: Unfamiliarity with resources used
#### Bailey:
#### Thomas:
### Future Improvements
#### David: More effective use of time
With more time to achieve, we could have implemented alot more of our ideas to optimise the project solution. To get more time, we could have got the dependant tasks out of the way early, as well as equally spread the workload evenly between each member of the team.
#### Denzel: Better testing in later projects
#### Bailey:
#### Thomas:
# Installation
## Pre-requisites
- AWS Root account
- Knowledge of AWS
- AWS CLI installed locally
- GIT installed locally (GitBASH if windows)
- Knowledge of Terraform
- Knowledge of the Command line
## Steps
### Forking the Github Project
1. Go to the Github repository located at 
	https://github.com/HavidDulsman/QA-AWSGroupProject.git
	
2. Click the **'Fork'** button in the upper right to fork the project to your own Github

3. Inside the forked project repository on your own Github profile, click the green **'Clone or Download'** button and copy the url link that is shown, you will need this later

### Creating the Jenkins user
1. On the AWS root account, go IAM > Users and click ‘Add User

We need to create a user for Jenkins to log into in order to take control of the deployment.

2. Fill in the details below

    ```Username: jenkins
    
    Access type: Programatic Access```

It will then ask you to ‘Set permissions’ for the jenkins user. 

3. Create a new group with EKS, VPC, EC2 Full Access and select that group for jenkins user to be added to it.

4. Click ‘Next: tags’ to proceed to adding tags for the user. We have opted not to add any tags.

5. Click ‘Next: review’ to review over the settings that have been created and click ‘Create User’

AWS will then prompt you to download a .CSV containing the jenkins user details. 

6. Download the file and open the file in a spreadsheet application. We will now use these details for the AWS CLI on your local machine.

### Applying Terraform

**This step requires you have installed AWS CLI and Terraform on your local machine.**

1. Open a terminal/GITbash and Type ‘AWS configure’ and enter the details of the jenkins user provided in the .csv in the same format of the example below. Replace jenkins-access-key and jenkins-secret-access-key with the ones provided in the .csv

    AWS access key ID: jenkins-access-key
    AWS Secret Access key: jenkins-secret-access-key 
    The Default region name is: eu-west-2 
    Default output format: json

2. Now that the AWS CLI has been configured, we need to clone down the repository.

	Type below in the terminal/gitbash,

    git clone (insert url from forking the Github Project step)

3. Now the project has been downloaded, navigate into the terraform directory,  

    `cd ./QA-AWSGroupProject/terraform/`

4. Type `Terraform plan` to verify if the infrastructure can be built.

5.  If no error messages are shown, type `terraform apply` to build your infrastructure on AWS.

6. The console will then prompt you to enter a value which you write `yes`

**Due to the size of the infrastructure, this will take about 15 mins to complete.**

### Setting up Jenkins
1. Now that the infrastructure has been created, go to the EC2 > Instances and select the only t2.medium instance and connect to it through SSH.

**NOTE: Due to AWS EC2 instance connect being buggy, it is recommended you use ‘A standalone SSH client’ to connect to the instance**

Once you have connected to the instance, edit the sudo configuration file to give jenkins elevated privileges. 

1. Type `sudo visudo` in your terminal

This should launch the nano text editor. 

2. Add the following line in the file

	`jenkins ALL=(ALL) NOPASSWD:ALL`

3. Once this is done, save the changes and type `sudo su jenkins`

This will change you to the Jenkins user. Next we need to get the password to unlock jenkins

4. Type `cat /var/lib/jenkins/secrets/initialAdminPassword`

5. Copy the output and go to the Public DNS address of the t2.medium instance at port 8080 in your web browsers URL.  See example below of what the server address will look like

	`ec2-0-0-0-0.eu-west-2.compute.amazonaws.com:8080`

	It will ask you to enter the administrator password into the box on the screen. Paste the output copied from the cat command and press **'Continue'**.

6.  If the password is correct, Jenkins will then ask you to install plugins. Select **'Install suggested plugins'** and the program will download the default plugins.

7. Once this is completed, Jenkins will prompt you to create the first admin user. Fill in the details as desired and select **'Save and Continue'**.

Jenkins will now ask you about the instance configuration, which it will ask you for the preferred URL to access the service.

8. Enter in the Public DNS at port 8080 like below

	`ec2-0-0-0-0.eu-west-2.compute.amazonaws.com:8080`. 

	Click **'Save and Finish'**.

If all has been set up correctly, you will see a page saying that Jenkins is ready.

9. Click **'Start using Jenkins'**.

Next we need to add IP addresses to the hosts file. 

10. Type in `vi /etc/hosts`

In here, you will see the IP address of the localhost and the domain which in this case localhost. 

11. Replace 0.0.0.0 with the external IPv4 addresses of the instance and add kubemaster as shown below

	`127.0.0.1 localhost`
	`0.0.0.0` `kubemaster`

12. Type **:wq** to Save the changes and log into your jenkins instance.

### Deploying application

1. Click on **'New Item'** on the left hand menu which will present you with a new page. 

2. In the item name, enter in **'Group2Live'** as the item name and select **'Pipeline'** as the build configuration. 
3. Click **'Ok'**.

Here we will be taken to a page which requires us to further configure our build configuration.

4. Scroll down until you see the **'Github project'** under **'General'** tab and enter in the url link (from the forking the Github project step) in the option
 

5. Click on the **'Pipeline'** tab and change the definition to **'Pipeline script from SCM'**. An option named **'SCM'** will appear, select **'Git'**.

6. Where it mentions the 'Repository URL', enter the url link (from the forking the Github project step).

You will now need to add your Github account to authorize the build. 

7. Click on the **'Add'** button and a drop down menu will appear. 
8. Click the option **'Jenkins'** and this will pop up a new window. 
9. Add your Github details of your username and password in the corresponding boxes and click **'Add'**.

10. Leave the branch as **'*/master'** and click **'Save'**. This will take you back to the **'Group2Live’** pipeline menu.

11. Select **'Build Now'** to pull the service from the Github master branch and build the application.

### Adding a webhook to Jenkins for automatic builds
1. Inside your forked Github repository, click the **'Settings'** button on the top navigation bar and then click the **'Webhook'** button on the left hand side navigation bar

2. Click **'Add Webhook'**

3. inside the **'Payload Url'** box enter your jenkins url with /github-webhook/ added at the end, example shown below

	`http://ec2-18-132-120-175.eu-west-2.compute.amazonaws.com:8080/github-webhook/`

4. Inside the **'Content Type'** drop down box select the **'application/x-www-form-urlencoded'** option

5. Select the **'Let me select individual events'** on for the **'Which events would you like to trigger this webhook?'** and check the **'Pushes'** and **'Pull request'** boxes

6. Inside your Jenkins Pipeline click the **'Configure'** button on the left hand side

7. Navigate to the **'Build Triggers'** Section and check the **'GitHub hook trigger for GITScm polling'** box


