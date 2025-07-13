 pip install hvac
 dnf list installed hvac
 if [ $? -ne 0 ]; then
    echo "hvac package not already installed"
    pip install hvac
  else
    echo "hvac package installed"
   fi
 component=$1
 env=$2
 name=$3

  ansible-playbook getsecrets.yml -e component_name=$component -e env=$env -e project_name=$name
  ansible-playbook -i $component-$env.pdevops78.online, expense.yml -e component_name=$component -e env=$env -e '@~/secrets.json'

# get all running instances from aws service
aws ec2 describe-instances --filters Name=tag:Name,Values=$component-$env" "Name=instance-state-name,Values=running --query 'Reservations[*].Instances[*].PrivateIpAddress' --output text >inv

ansible-playbook -i inv -e env=$env -e role_name=$component expense.yml -e '@~/secrets.json'
 rm -rf ~/*.json





