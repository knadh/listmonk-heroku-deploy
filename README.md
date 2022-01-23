# listmonk Heroku installer

This repository is a Heroku Buildpack + button installer for [listmonk](https://github.com/knadh/listmonk). It downloads and installs the latest binary release from the listmonk releases page.

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy?template=https://github.com/knadh/listmonk-heroku-deploy)

Licensed under the MIT license.

## To Upgrade to the Latest Listmonk version

To check your current version, go to your Listmonk Heroku app. Click on the settings. The version should be at the top, on the left. Check to see if this corresponds to the [latest Listmonk release](https://github.com/knadh/listmonk/releases). If not, follow the next steps:

- Fork this repository to your own GitHub account
- In Heroku, go to your app and click on the "Deploy" tab.
- In the "Deployment method" section of this page, select GitHub.
- In the "Connect to GitHub" section, search for your forked Listmonk-Heroku repo. Connect to it.
![image](https://user-images.githubusercontent.com/55474996/135002032-0a7dce9c-548f-4edd-8db2-575708b490b4.png)

- In the "Automatic deploys" page, select "Enable Automatic Deploys"
![image](https://user-images.githubusercontent.com/55474996/135002226-bded2405-1bd4-40e4-834b-5f5def07215a.png)

- Head back to your forked Listmonk-Heroku repository on your GitHub account. Edit one of your files and make a simple modification (example, add some random characters to the readme.md) and commit the change directly to the main branch.
- This will trigger the Heroku deployment. Your app should now be updated to the latest release of Listmonk.
