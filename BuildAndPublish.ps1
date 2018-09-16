param(
	[string]$version = "",
	[string]$deployUrl = "",
	[string]$apiKey = ""
)

$ErrorActionPreference = "Stop"

& msbuild techo.sln /p:Configuration=Release /p:Platform=x64 /p:RunCodeAnalysis=false
if ($lastexitcode -ne 0) {
	exit $lastexitcode
}

if ($version -ne "") {
	& choco pack techo.nuspec --version $version
	if ($lastexitcode -ne 0) {
		exit $lastexitcode
	}
}

if ($deployUrl -ne "") {
	& dotnet nuget push techo.$version.nupkg -s $deployUrl -k $apiKey
	if ($lastexitcode -ne 0) {
		exit $lastexitcode
	}
}
