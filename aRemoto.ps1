$hostName= Read-Host "Informe o IP ou Host Ex. jbhost.myddns.me ou 192.168.88.108"
$winrmPort = Read-Host "Informe a Porta de coenxão Ex. 45986, 5986 ou 5985"
$cred = Get-Credential
$soptions = New-PSSessionOption -SkipCACheck
Enter-PSSession -ComputerName $hostName -Port $winrmPort -Credential $cred -SessionOption $soptions -UseSSL