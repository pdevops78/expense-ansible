 pip install hvac
 component=$1
 env=$2
 name=$3
 ansible-playbook getsecrets.yml -e component_name=$component -e env=$env -e project_name=$name
 ansible-playbook -i $component-$env.pdevops78.online, expense.yml -e component_name=$component -e env=$env -e @secrets.json -e @app.json
 if [ $? -ne 0 ]; then
   echo "not already installed"
   pip install hvac
   exit 1;
 else
   echo "installed"
   exit 0;
  fi


