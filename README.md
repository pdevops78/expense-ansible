# expense-ansible

nginx:
=======

NewRelic Licence key: NRAK-I82HRL9CVMG13MLKO0Y3JWQCV7W

curl -Ls https://download.newrelic.com/install/newrelic-cli/scripts/install.sh | bash && sudo NEW_RELIC_API_KEY=NRAK-I82HRL9CVMG13MLKO0Y3JWQCV7W NEW_RELIC_ACCOUNT_ID=4432802 /usr/local/bin/newrelic install -n infrastructure-agent-installer

* click on "Automatically answer "yes" to all install prompts. We'll stop the installer if there's an error."

nodejs:
=======
Licence key : 4131dee04aff51ec348848eaabaf7dfbFFFFNRAL
npm install newrelic
NEW_RELIC_APP_NAME=backend NEW_RELIC_LICENSE_KEY=4131dee04aff51ec348848eaabaf7dfbFFFFNRAL node -r newrelic YOUR_MAIN_FILENAME.js

NEW_RELIC_APP_NAME=backend NEW_RELIC_LICENSE_KEY={{ newrelic_licence_key}} node -r newrelic YOUR_MAIN_FILENAME.js
