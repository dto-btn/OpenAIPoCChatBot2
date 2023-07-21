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

These are the instructions to manually build and release the bot so it can be used as part of the `chatbot-infra` project when deploying to the cloud.

`dotnet publish -c Release -r win-x64 .\OpenAIPoCChatBot2.csproj` and then `compress-archive '.\bin\Release\netcoreapp3.1\win-x64\publish' deploy.zip`