# Define remote variables
$remoteUser = "tester"
$remoteHost = "127.157.52.10"
$remoteFile = "/home/tester/hello.txt"
$remotePass = "Siemens.123"
$hostKey = "ssh-ed25519 255 SHA256:hXGKLMItTh2W2e8E3u+YnNFW+nPPOQe1aCnNzbEGcyw"

# The command to run remotely
$remoteCommand = "echo 'Hello World' > $remoteFile"

# Execute via SSH
plink.exe -batch -ssh "$remoteUser@$remoteHost" -pw "$remotePass" -hostkey "$hostKey" "$remoteCommand"

