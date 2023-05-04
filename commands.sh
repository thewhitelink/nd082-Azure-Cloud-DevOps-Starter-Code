git clone https://github.com/thewhitelink/project2.git
cd project2

python3 -m venv ~/.project2
source ~/.project2/bin/activate
make install
python -m flask run

az webapp up --name project2app --resource-group Azuredevops --runtime "PYTHON:3.7"

git pull
./make_predict_azure_app.sh