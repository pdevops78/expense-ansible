 pip install hvac
 if [ $? -eq 0 ]; then
   echo "already installed"
   exit 1;
 else
   echo "not installed"
    pip install hvac
 fi
component=$1
env=$2
name=$3
ansible-playbook getsecrets.yml -e component_name=$component -e env=$env -e project_name=$name
ansible-playbook -i $component-$env.pdevops78.online, expense.yml -e component_name=$component -e env=$env -e @secrets.json -e @app.json

