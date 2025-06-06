component=$1
env=$2
ansible-playbook -i $component-$env.pdevops78.online, expense.yml -e component_name=$component -e env=$env -e ansible_user=ec2-user -e ansible_password=DevOps321

