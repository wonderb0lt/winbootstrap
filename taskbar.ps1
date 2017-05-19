Import-Module (Resolve-Path('PinnedApplications.psm1'))

# Unpin trash
@(
  "C:\Program Files (x86)\Internet Explorer\iexplore.exe",
  "C:\Program Files\Windows Media Player\wmplayer.exe"
) | ForEach-Object -Process {
  Set-PinnedApplication -Action UnPinFromTaskbar -FilePath $_ -ErrorAction SilentlyContinue
}

# Pin awesomeness
@(
  "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe",
  "%LOCALAPPDATA%/Atom/atom.exe"
  "C:\Program Files\Git\git-cmd.exe",
  "C:\Program Files\Git\git-bash.exe"
) | ForEach-Object -Process {
  Set-PinnedApplication -Action PinToTaskbar -FilePath $_ -ErrorAction SilentlyContinue
}
