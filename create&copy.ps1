# ceare folder pentru provider terraform
$pluginDirectory = Join-Path $env:APPDATA 'terraform.d/plugins/terraform-example.com/exampleprovider/example/1.0.0/windows_amd64'
New-Item -ItemType Directory -Force -Path $pluginDirectory

# copiere modul 
$sourceFilePath = "E:\munca_HTSS\CustomProviderTF/terraform-provider-example.exe"  
$destinationDirectory = Join-Path $env:APPDATA 'terraform.d/plugins/terraform-example.com/exampleprovider/example/1.0.0/windows_amd64'

# Asigură-te că directorul de destinație există
if (-not (Test-Path -Path $destinationDirectory)) {
    New-Item -ItemType Directory -Force -Path $destinationDirectory
}

# Copiază fișierul în directorul de destinație
Copy-Item -Path $sourceFilePath -Destination $destinationDirectory

