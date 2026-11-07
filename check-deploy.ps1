# Verificación simple para GitHub Pages
Write-Host "🚀 Verificando Croatian Working Law Fact Checker para GitHub Pages..." -ForegroundColor Green

# Verificar archivos críticos
$RequiredFiles = @(
    "index.html",
    "assets/css/main.css", 
    "assets/js/main.js",
    "assets/data/croatian-working-law.json"
)

$AllFilesExist = $true
foreach ($file in $RequiredFiles) {
    if (Test-Path $file) {
        Write-Host "✅ $file" -ForegroundColor Green
    } else {
        Write-Host "❌ Falta: $file" -ForegroundColor Red
        $AllFilesExist = $false
    }
}

if ($AllFilesExist) {
    Write-Host "`n🎉 ¡Todo listo para GitHub Pages!" -ForegroundColor Green
    Write-Host "Próximos pasos:" -ForegroundColor Cyan
    Write-Host "1. Ve a: https://github.com/tyhrr/fact-checker/settings/pages" -ForegroundColor White
    Write-Host "2. Selecciona 'Deploy from a branch'" -ForegroundColor White
    Write-Host "3. Selecciona branch 'main' y folder '/ (root)'" -ForegroundColor White
    Write-Host "4. Haz clic en 'Save'" -ForegroundColor White
    Write-Host "`nTu aplicación estará disponible en:" -ForegroundColor Cyan
    Write-Host "https://tyhrr.github.io/fact-checker/" -ForegroundColor Yellow
} else {
    Write-Host "`n❌ Algunos archivos faltan. Verifica la estructura del proyecto." -ForegroundColor Red
}