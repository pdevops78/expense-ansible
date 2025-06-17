# expense-ansible
dnf module enable nodejs:20 -y && dnf install nodejs -y
nginx:
=======

NewRelic Licence key: NRAK-I82HRL9CVMG13MLKO0Y3JWQCV7W

curl -Ls https://download.newrelic.com/install/newrelic-cli/scripts/install.sh | bash && sudo NEW_RELIC_API_KEY=NRAK-I82HRL9CVMG13MLKO0Y3JWQCV7W NEW_RELIC_ACCOUNT_ID=4432802 /usr/local/bin/newrelic install -n infrastructure-agent-installer

* click on "Automatically answer "yes" to all install prompts. We'll stop the installer if there's an error."

nodejs:
=======
Licence key : 4131dee04aff51ec348848eaabaf7dfbFFFFNRAL
e324ceb877e7c1c9725b908cf35fe8a2FFFFNRAL
npm install newrelic
NEW_RELIC_APP_NAME=backend NEW_RELIC_LICENSE_KEY=4131dee04aff51ec348848eaabaf7dfbFFFFNRAL node -r newrelic YOUR_MAIN_FILENAME.js

NEW_RELIC_APP_NAME=backend NEW_RELIC_LICENSE_KEY={{ newrelic_licence_key}} node -r newrelic YOUR_MAIN_FILENAME.js


steps to follow:
===============
* install new relic under /app : npm install newrelic --save

NEW_RELIC_APP_NAME=backend 
NEW_RELIC_LICENSE_KEY={{newrelic_licence_key}} 
node -r newrelic YOUR_MAIN_FILENAME.js

Install Vault:
=============
sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo
sudo yum -y install vault

vault credentials:
==================
Initial root token 
hvs.T8WnPWmYmGZkPYlGAHXVmebk

hvs.T8WnPWmYmGZkPYlGAHXVmebk 
Key 1 eHVr7eLa14r8nlx98L5TD9MT3JqTTXypYfhLSJixz+g=

How to retrieve hashicorp vault data in ansible module?
=======================================================
prerequisties:
--------------
- Install the hvac Python library.
- Set environment variables like VAULT_ADDR and VAULT_TOKEN if you prefer not to hardcode them.

Using hashi_vault lookup plugin:
---------------------------------
- name: Set secret as a fact
  set_fact:
  my_secret: "{{ lookup('hashi_vault', 'secret=common/data/ssh  token={{ vault_token }} url=http://your-vault-server:8200') }}"

- name: Show secret
  debug:
  msg: "{{ my_secret }}"

how to retrieve hashicorp vault data in terraform ?
===================================================
provider "vault" {
address = "https://your-vault-server:8200"
token   = var.vault_token
}

data "vault_generic_secret" "example" {
path = "secret/data/myapp/config"
}


gocd envryption string:
=======================
https://api.gocd.org/current/#bearer-token-authentication
ex:
===
{
"a":10,
"b":20
}
cat /tmp/1.json | jq '.a'



# service host
#service port

/var/log/nginx/access.log

logstash.conf
-------------
input{
file{
path => /var/log/nginx/access.log
}

output{

}

rysylog
-------
rysyslog.conf
-------------
path=> /var/log/backend.log ,

chmod permissions:
-------------------
r-read(4)
w-write(2)
x-execute(1)

644: means 6---> read write combination for root user, 4----> means read for group and others.
700 means 7 ----> read,write and execute for root user, 0 means nothing for group and others.

$umask: ( permissions: 666)
=================================
666, umask permissions
644, user permissions
----
022, finally $umask:022
