 pip install hvac
component=$1
env=$2
ansible-playbook getsecrets.yml -e component_name=$component -e env=$env
ansible-playbook -i $component-$env.pdevops78.online, expense.yml -e component_name=$component -e env=$env -e @secrets.json -e @app.json

