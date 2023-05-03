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

   ![1682955161135](Images/1682955161135.png)
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

   ![1682956578670](Images/1682956578670.png)
6. Modify to make fail, run:

   ```
   make test
   ```

   ![1682956898023](Images/1682956898023.png)

## Python -

1. Navigate to needed working directory
2. Create python venv:

```
python3 -m venv ~/.pyvenv-project_2
```

3. Source the venv:

   ```
   source ~/.pyvenv-project_2/bin/activate
   ```

   ![1683126946552](image/README/1683126946552.png)
4. Install/Upgrade PIP:

   ```
   python -m pip install --upgrade pip
   ```

   ![1683126888754](image/README/1683126888754.png)
5. Install the required python modules using the predefined txt file:

   ```
   pip install -r requirements.txt
   ```

   ![1683126826974](image/README/1683126826974.png)

## Azure -

1. Run your web-app:

```
az webapp up --name project2app --resource-group Azuredevops --runtime "PYTHON:3.7"
```

![1683126805541](image/README/1683126805541.png)

3. Make a prediction with the prediction file:

```
./make_predict_azure_app.sh
```

Each time I tried this, I got an internal server error.

```
odl_user [ ~/project2/C2-AgileDevelopmentwithAzure/azure_pipelines_exercise/starter_files ]$ ./make_predict_azure_app.sh 
Port: 443
<!doctype html>
<html lang=en>
<title>500 Internal Server Error</title>
<h1>Internal Server Error</h1>
<p>The server encountered an internal error and was unable to complete your request. Either the server is overloaded or there is an error in the application.</p>
```

![1683126786950](image/README/1683126786950.png)

Display webapp logs:

3. ```
   az webapp log tail
   ```

![1683126770569](image/README/1683126770569.png)

## Locust

1. Start locust on your local host
2. Go to the web page http://localhost:8089
3. Enter your test setup with required number of users

## Enhancements

Would be ideal to not require a screencast if you're also providing all of the instructions and screenshots

To keep things more consistent with a "production" environment, you could require branches be merged into a "master" branch for submission

## Demo
