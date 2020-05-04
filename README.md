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
4. [Architecture]()
5. [Risk Assessment]()
    + [Pre/Early Development]()
    + [After Project Completition]()
6. [Deployment]()
    + [List of techonologies used]()
7. [Testing]()
    + [Pytest]()
    + [Coverage]()
8. [Project retrospective]()
    + [Notable Achievements]()
    + [Project Shortcomings]()
    + [Future Improvements]()
9. [Installation Guide]()

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

### Sprint (04/05/2020)
#### Sprint Planning
After some light work on the weekend, we starting growing desperate to achieve a Minimal Viable Product, as we realised we not only had limited time, but we were quickly losing the time we wanted to experiment with. **More containerisation issues**  plagued the team further on the weekend, so we quickly looked for support for this issue. This was the day **Denzel** was unable to complete major work, so we had to focus on other elements, from ansible, kubenetes and documentation. **Bailey** would continue his work on **Jenkins**, whilst **Tom** had done previous research on **Kubernetes** and looked to apply that knowledge in his YAML Files.
#### Trello Board
![trello 4](https://i.imgur.com/oneFJtC.png)

#### Sprint Review
Alot of new issues where uncovered during the weekend and this sprint, that yet again had massive effects on the progress that can be made. We learnt alot about docker techniques this sprint and opted to change from **3 to 2 containers**. The requirements of the ansible and kubenetes required some additional work to the terraform architecture but was completed by the end of the day. The jenkins instance is now full operational and prepared for the later task, that we have now distributed and started. 

Due to the serverity of the delays we are facing, we are now looking to simply achieve the MVP, whilst leaving time to curate the best presentation possible

## Architecture
### Infrastructual Diagram
![infrastructual diagram](https://i.imgur.com/tY1iRY9.png)
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
## Project Retrospective
As part of the project retrospective, each member of the team will have time to explain how the project went for them, and include unique items and perspectives to certain tasks.
### Notable Achievements
#### David: 
#### Denzel:
#### Bailey:
#### Thomas:
### Project Shortcomings
#### David: 
#### Denzel:
#### Bailey:
#### Thomas:
### Future Improvements
#### David: 
#### Denzel:
#### Bailey:
#### Thomas:
## Installation Guide
