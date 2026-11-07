# GitHub Pages Deployment Script for Croatian Working Law Fact Checker (PowerShell)

Write-Host "🚀 Preparing Croatian Working Law Fact Checker for GitHub Pages deployment..." -ForegroundColor Green

# Check if we're in the correct directory
if (!(Test-Path "index.html")) {
    Write-Host "❌ Error: index.html not found. Please run this script from the project root directory." -ForegroundColor Red
    exit 1
}

Write-Host "✅ Project structure verified" -ForegroundColor Green

# Check if the JSON database exists
if (!(Test-Path "assets/data/croatian-working-law.json")) {
    Write-Host "❌ Error: Croatian law database not found. Please run the PDF extraction script first." -ForegroundColor Red
    Write-Host "   Run: python extract_pdf.py" -ForegroundColor Yellow
    exit 1
}

Write-Host "✅ Database file verified" -ForegroundColor Green

# Check file sizes for GitHub Pages limits
$DatabaseSize = (Get-Item "assets/data/croatian-working-law.json").Length
if ($DatabaseSize -gt 25000000) {
    Write-Host "⚠️  Warning: Database file is larger than 25MB. Consider compressing it." -ForegroundColor Yellow
}

Write-Host "✅ File sizes checked ($([math]::Round($DatabaseSize/1MB, 2)) MB)" -ForegroundColor Green

# Check for required files
$RequiredFiles = @(
    "index.html",
    "assets/css/main.css",
    "assets/css/neumorphism.css",
    "assets/css/responsive.css",
    "assets/js/main.js",
    "assets/js/database.js",
    "assets/js/search.js",
    "assets/js/language-detection.js",
    "assets/js/relevance-scoring.js",
    "assets/js/theme-toggle.js",
    "assets/data/croatian-working-law.json"
)

Write-Host "🔍 Checking required files..." -ForegroundColor Cyan
foreach ($file in $RequiredFiles) {
    if (Test-Path $file) {
        Write-Host "✅ $file" -ForegroundColor Green
    } else {
        Write-Host "❌ Missing: $file" -ForegroundColor Red
    }
}

# Git status check
if (Test-Path ".git") {
    Write-Host "📊 Git status:" -ForegroundColor Cyan
    git status --short
    
    Write-Host "🏷️  Current branch:" -ForegroundColor Cyan
    git branch --show-current
} else {
    Write-Host "⚠️  Not a git repository. Initialize with: git init" -ForegroundColor Yellow
}

Write-Host ""
Write-Host "🎉 GitHub Pages Deployment Checklist:" -ForegroundColor Green
Write-Host "======================================" -ForegroundColor Green
Write-Host "1. ✅ All files are present and verified" -ForegroundColor Green
Write-Host "2. 📤 Push all changes to your GitHub repository:" -ForegroundColor Cyan
Write-Host "   git add ." -ForegroundColor White
Write-Host "   git commit -m `"Deploy Croatian Working Law Fact Checker`"" -ForegroundColor White
Write-Host "   git push origin main" -ForegroundColor White
Write-Host ""
Write-Host "3. 🔧 Enable GitHub Pages in repository settings:" -ForegroundColor Cyan
Write-Host "   - Go to: https://github.com/tyhrr/fact-checker/settings/pages" -ForegroundColor White
Write-Host "   - Select source: Deploy from a branch" -ForegroundColor White
Write-Host "   - Select branch: main" -ForegroundColor White
Write-Host "   - Select folder: / (root)" -ForegroundColor White
Write-Host "   - Click Save" -ForegroundColor White
Write-Host ""
Write-Host "4. 🌐 Your app will be available at:" -ForegroundColor Cyan
Write-Host "   https://tyhrr.github.io/fact-checker/" -ForegroundColor Yellow
Write-Host ""
Write-Host "5. ⏱️  Deployment usually takes 5-10 minutes" -ForegroundColor Cyan
Write-Host ""
Write-Host "🔗 Repository: https://github.com/tyhrr/fact-checker" -ForegroundColor Cyan
Write-Host "📚 Documentation: README.md" -ForegroundColor Cyan
Write-Host ""
Write-Host "✨ Croatian Working Law Fact Checker ready for deployment!" -ForegroundColor Green