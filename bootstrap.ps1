# Check if Chocolatey exists, if not install
if (!(Get-Command "choco" -ErrorAction SilentlyContinue)) {
    iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
    & SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
}

# Install core software
Get-Content "software.list" | ForEach-Object -Process {
    choco install -y $_
}