# Brebaje CLI Installation Script for PowerShell
# Requires PowerShell 5.1 or later

Write-Host "🚀 Brebaje CLI Installation" -ForegroundColor Cyan
Write-Host "==========================" -ForegroundColor Cyan
Write-Host ""

# Function to check if command exists
function Test-CommandExists {
    param($Command)
    $null -ne (Get-Command $Command -ErrorAction SilentlyContinue)
}

# Function to compare versions (returns $true if version1 >= version2)
function Test-VersionGreaterOrEqual {
    param(
        [string]$Version1,
        [string]$Version2
    )
    try {
        [version]$v1 = $Version1
        [version]$v2 = $Version2
        return $v1 -ge $v2
    }
    catch {
        # Fallback for complex version strings
        return $Version1 -ge $Version2
    }
}

# Function to exit with error
function Exit-WithError {
    param([string]$Message)
    Write-Host $Message -ForegroundColor Red
    exit 1
}

# Check Node.js
Write-Host "🔍 Checking Node.js..." -ForegroundColor Yellow
if (Test-CommandExists node) {
    $nodeVersionRaw = node --version
    $nodeVersion = $nodeVersionRaw -replace 'v', ''
    $requiredNode = "22.17.1"
    
    if (Test-VersionGreaterOrEqual $nodeVersion $requiredNode) {
        Write-Host "✅ Node.js $nodeVersion (>= $requiredNode required)" -ForegroundColor Green
    }
    else {
        Write-Host "❌ Node.js $nodeVersion found, but >= $requiredNode required" -ForegroundColor Red
        Write-Host "   Please upgrade Node.js: https://nodejs.org/" -ForegroundColor Yellow
        exit 1
    }
}
else {
    Write-Host "❌ Node.js not found" -ForegroundColor Red
    Write-Host "   Please install Node.js >= 22.17.1: https://nodejs.org/" -ForegroundColor Yellow
    exit 1
}

# Check pnpm
Write-Host "🔍 Checking pnpm..." -ForegroundColor Yellow
if (Test-CommandExists pnpm) {
    $pnpmVersion = pnpm --version
    $requiredPnpm = "9.0.0"
    
    if (Test-VersionGreaterOrEqual $pnpmVersion $requiredPnpm) {
        Write-Host "✅ pnpm $pnpmVersion (>= $requiredPnpm required)" -ForegroundColor Green
    }
    else {
        Write-Host "❌ pnpm $pnpmVersion found, but >= $requiredPnpm required" -ForegroundColor Red
        Write-Host "   Please upgrade pnpm: npm install -g pnpm@latest" -ForegroundColor Yellow
        exit 1
    }
}
else {
    Write-Host "❌ pnpm not found" -ForegroundColor Red
    Write-Host "   Please install pnpm: npm install -g pnpm" -ForegroundColor Yellow
    Write-Host "   Or visit: https://pnpm.io/installation" -ForegroundColor Yellow
    exit 1
}

# Check wget (check for actual wget.exe, not PowerShell alias)
Write-Host "🔍 Checking wget..." -ForegroundColor Yellow
try {
    # Try to find actual wget.exe executable
    $wgetPath = Get-Command wget.exe -ErrorAction SilentlyContinue
    if ($wgetPath) {
        # Test if it's the real wget by checking version
        $wgetOutput = & wget.exe --version 2>$null
        if ($wgetOutput -and $wgetOutput -match "GNU Wget") {
            Write-Host "✅ wget is available" -ForegroundColor Green
        }
        else {
            throw "Not GNU wget"
        }
    }
    else {
        throw "wget.exe not found"
    }
}
catch {
    Write-Host "❌ wget not found (PowerShell alias detected, but need actual wget)" -ForegroundColor Red
    Write-Host "   wget is required for downloading ceremony files" -ForegroundColor Yellow
    Write-Host "   Please install wget for Windows:" -ForegroundColor Yellow
    Write-Host "   - Using Chocolatey: choco install wget" -ForegroundColor Yellow
    Write-Host "   - Using Scoop: scoop install wget" -ForegroundColor Yellow
    Write-Host "   - Using winget: winget install GNU.Wget" -ForegroundColor Yellow
    Write-Host "   - Manual: https://eternallybored.org/misc/wget/" -ForegroundColor Yellow
    Write-Host "   Or use curl as an alternative (already available in PowerShell)" -ForegroundColor Yellow
    exit 1
}

# Check snarkjs
Write-Host "🔍 Checking snarkjs..." -ForegroundColor Yellow
if (Test-CommandExists snarkjs) {
    try {
        $snarkjsOutput = snarkjs --version 2>$null
        $snarkjsVersion = ($snarkjsOutput | Select-Object -First 1) -replace '.*snarkjs@', '' -replace '\s.*', ''
        if ([string]::IsNullOrEmpty($snarkjsVersion)) {
            $snarkjsVersion = "unknown"
        }
        Write-Host "✅ snarkjs $snarkjsVersion is available" -ForegroundColor Green
    }
    catch {
        Write-Host "✅ snarkjs is available" -ForegroundColor Green
    }
}
else {
    Write-Host "❌ snarkjs not found" -ForegroundColor Red
    Write-Host "   snarkjs is required for Powers of Tau ceremony operations" -ForegroundColor Yellow
    Write-Host "   Install snarkjs globally: npm install -g snarkjs" -ForegroundColor Yellow
    Write-Host "   Or with yarn: yarn global add snarkjs" -ForegroundColor Yellow
    Write-Host "   More info: https://github.com/iden3/snarkjs" -ForegroundColor Yellow
    exit 1
}

# Check and configure pnpm global bin directory
Write-Host "🔍 Checking pnpm global configuration..." -ForegroundColor Yellow
$pnpmGlobalBin = pnpm config get global-bin-dir 2>$null
$recommendedBinDir = Join-Path $env:USERPROFILE ".local\bin"

if ([string]::IsNullOrEmpty($pnpmGlobalBin) -or $pnpmGlobalBin -eq "undefined") {
    Write-Host "⚠️  pnpm global-bin-dir not configured" -ForegroundColor Yellow
    Write-Host "   Setting up global bin directory: $recommendedBinDir" -ForegroundColor Yellow
    
    # Create the directory if it doesn't exist
    if (-not (Test-Path $recommendedBinDir)) {
        New-Item -ItemType Directory -Path $recommendedBinDir -Force | Out-Null
    }
    
    # Configure pnpm to use this directory
    pnpm config set global-bin-dir $recommendedBinDir
    
    if ($LASTEXITCODE -eq 0) {
        Write-Host "✅ pnpm global-bin-dir configured successfully" -ForegroundColor Green
        $pnpmGlobalBin = $recommendedBinDir
    }
    else {
        Exit-WithError "❌ Failed to configure pnpm global-bin-dir"
    }
}
else {
    Write-Host "✅ pnpm global-bin-dir: $pnpmGlobalBin" -ForegroundColor Green
}

# Check if global bin directory is in PATH
$pathDirs = $env:PATH -split ';'
if ($pathDirs -contains $pnpmGlobalBin) {
    Write-Host "✅ Global bin directory is in PATH" -ForegroundColor Green
}
else {
    Write-Host "⚠️  Global bin directory not in PATH" -ForegroundColor Yellow
    Write-Host "   After installation, you may need to add this to your PATH:" -ForegroundColor Yellow
    Write-Host "   [Environment]::SetEnvironmentVariable('Path', `$env:Path + ';$pnpmGlobalBin', 'User')" -ForegroundColor Cyan
    Write-Host "   Then restart your terminal or run: `$env:PATH += ';$pnpmGlobalBin'" -ForegroundColor Cyan
}

Write-Host ""
Write-Host "📦 Installing dependencies..." -ForegroundColor Cyan
pnpm install

if ($LASTEXITCODE -ne 0) {
    Exit-WithError "❌ Dependency installation failed!"
}

Write-Host ""
Write-Host "🔨 Building Brebaje CLI..." -ForegroundColor Cyan
pnpm build

if ($LASTEXITCODE -ne 0) {
    Exit-WithError "❌ Build failed!"
}

Write-Host "🔗 Installing Brebaje CLI globally..." -ForegroundColor Cyan
pnpm link --global

if ($LASTEXITCODE -eq 0) {
    Write-Host "✅ Installation successful!" -ForegroundColor Green
    Write-Host ""
    
    # Verify CLI is accessible
    Write-Host "🔍 Verifying CLI accessibility..." -ForegroundColor Yellow
    if (Test-CommandExists brebaje-cli) {
        Write-Host "✅ brebaje-cli is accessible in PATH" -ForegroundColor Green
        Write-Host ""
        Write-Host "🎉 Installation completed successfully!" -ForegroundColor Green
        Write-Host ""
        brebaje-cli --help
    }
    else {
        Write-Host "⚠️  brebaje-cli not found in PATH" -ForegroundColor Yellow
        Write-Host ""
        Write-Host "The installation succeeded, but the CLI may not be accessible." -ForegroundColor Yellow
        Write-Host "This usually happens when the global bin directory is not in PATH." -ForegroundColor Yellow
        Write-Host ""
        Write-Host "To fix this, run the following command as Administrator:" -ForegroundColor Cyan
        Write-Host "  [Environment]::SetEnvironmentVariable('Path', `$env:Path + ';$pnpmGlobalBin', 'User')" -ForegroundColor White
        Write-Host ""
        Write-Host "Or add it to the current session:" -ForegroundColor Cyan
        Write-Host "  `$env:PATH += ';$pnpmGlobalBin'" -ForegroundColor White
        Write-Host ""
        Write-Host "Alternatively, you can run the CLI directly with:" -ForegroundColor Cyan
        Write-Host "  $pnpmGlobalBin\brebaje-cli.cmd --help" -ForegroundColor White
    }
}
else {
    Exit-WithError "❌ Installation failed!"
}

Write-Host ""
Write-Host "Creating input folder..." -ForegroundColor Cyan
if (-not (Test-Path "input")) {
    New-Item -ItemType Directory -Path "input" -Force | Out-Null
    Write-Host "✅ input folder created" -ForegroundColor Green
}
else {
    Write-Host "✅ input folder already exists" -ForegroundColor Green
}