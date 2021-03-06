#!/usr/bin/env bash
set -e
rm -f -r ./CoverageResults
dotnet test ./Tests/NotifyPropertyChanged.Verifier.Tests/NotifyPropertyChanged.Verifier.Tests.csproj --configuration Release /p:CollectCoverage=true /p:Exclude="[ViewModels]*" /p:CoverletOutput="../CoverageResults/"
dotnet test ./Tests/NotifyPropertyChanged.Verifier.AdditionalTests/NotifyPropertyChanged.Verifier.AdditionalTests.csproj --configuration Release /p:CollectCoverage=true /p:Exclude="[ViewModels]*" /p:CoverletOutput="../CoverageResults/" /p:MergeWith="../CoverageResults/coverage.json" /p:CoverletOutputFormat=opencover /p:Threshold=94.44 
