# Welcome to your new bot

This bot project was created using the Empty Bot template, and contains a minimal set of files necessary to have a working bot.

## publish bot

before publishing this bot you need to update `settings/appsettings.json` with this content, I have no idea why it doesn't work
while running composer atm. I am also unable to create a profile in composer atm.

Replace:

```json
"MicrosoftAppId": "",
```

with:

```json
  "MicrosoftAppType": "UserAssignedMSI",
  "MicrosoftAppId": "c6bc6953-f1f1-406b-a6ef-4d4282bb6ddf",
  "MicrosoftAppTenantId": "d05bc194-94bf-4ad6-ae2e-1db0f2e38f5e",
```

## Build (todo)

This should be automated in a github ci flow.

As of now this project is pulled directly from github via terraform and deployed to the windows App Service app.
