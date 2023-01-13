# Author: Scott Grivner
# Website: scottgrivner.dev

# Configure
$EmailFrom = "from_email@your_domain.com"
$EmailTo = "to_email@your_domain.com"  
$Subject = "Test Subject"
$Body = "Test Body"
$SMTPServer = "smtp.your_domain.com"
$SMTPPort = 465
$SMTPUser = $EmailFrom
$SMTPPassword "your_password"

# Send Email
$SMTPClient = New-Object Net.Mail.SmtpClient($SMTPServer, $SMTPPort)   
$SMTPClient.EnableSsl = $true    
$SMTPClient.Credentials = New-Object System.Net.NetworkCredential($SMTPUser, $SMTPPassword)    
$SMTPClient.Send($EmailFrom, $EmailTo, $Subject, $Body)
