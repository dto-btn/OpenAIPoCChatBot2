Import-Module MicrosoftTeams
Import-Module ExchangeOnlineManagement

Connect-MicrosoftTeams
Connect-ExchangeOnline

$DL = "cio-dtoemployees-dpi-btnemployes@ssc-spc.gc.ca"
$PolicyName = "OpenAI Poc Chatbot"

$Users = Get-DistributionGroupMember -Identity $DL | Select-Object DisplayName, PrimarySmtpAddress, ExternalEmailAddress, Alias

foreach($user in $Users){
    Write-Host $user.PrimarySmtpAddress #for debug
    # create policy for application
   Grant-CsTeamsMeetingPolicy -Identity $user -PolicyName $PolicyName
}