# Overview

For this project, we created a Continuous Integration and Continuous Delivery Chain from a provided "pre-set" code. We also reverse engineered it to work with our hand-created code, after cloning the provided templates.

Using GitHub Actions with a makefile, requirements, and python code, we performed an initial lint, test, and install cycle to verify deployment and functionality. 

After finalizing the above step, we integrated the Github actions with Azure DevOps Pipelines, replacing the initial code with a pre-created sklearn code that will predict housing prices in Boston. 

## Project Plan

* [Trello Board](https://trello.com/b/qT4hBPf3/project-management) for Project Planning
* [Project Plan](Documents/ProjectPlan.xlsx) 

## Instructions

* Architectural Diagram located in Screenshots folder
* Screenshots/ArchitectureOverview.png (Image sourced from Udacity Course "DevOps Engineer for Microsoft Azure")

Please follow the following steps to setup the project

## Initial Setup:

1. Clone the repository from github: `https://github.com/thewhitelink/project2.git`

   ![1682955161135](image/README/1682955161135.png)
2. Change working directory to the scaffold folder:

   ```
   cd scaffold
   ```
3. Create Python virtual environment using the following command:

   ```
   python3 -m venv ~/.pyvenv-project_2
   ```
4. Source Virtual Environment using the following command:

   ```
   source ~/.pyvenv-project_2/bin/activate
   ```
5. Run

   ```
   make all
   ```

   ![1682956578670](image/README/1682956578670.png)
6. Modify to make fail, run:

   ```
   make test
   ```

   ![1682956898023](image/README/1682956898023.png)

## Python -

1. Navicate to flask-sklearn directory
2. Create python venv

```
python3 -m venv ~/.pyvenv-cicd_project
```

3. Source the venv
   ```
   source ~/.pyvenv-cicd_project/bin/activate
   ```
4. Upgrade PIP
   ```
   python -m pip install --upgrade pip
   ```
5. Install the required python modules
   ```
   pip install -r requirements.txt
   ```
6. Run your web-app
   ```
   az webapp up --sku F1 -n
   ```
7. Make a prediction with the prediction file
   ```
   ./make_predict_azure_app.sh
   ```

## Azure -

## Locust -

## Enhancements


## Demo

<TODO: Add link Screencast on YouTube>
