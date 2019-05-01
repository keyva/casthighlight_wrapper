#!/bin/sh

#Read the input parameters. Password captured without clear text

read -p "Enter workingDir: " workingdir
read -p "Enter sourceDir: " sourcedir
read -p "(optional) Enter technologies: " technologies
read -p "(optional) Enter ignoreDirectories: " ignoreDirectories
read -p "(optional) Enter analyzerDir: " analyzerDir
read -p "(optional) Enter perlInstallDir: " perlInstallDir
read -p "(optional) Enter keywordScan: " keywordScan
read -p "Enter username: " username
read -s -p "Enter password: " password
printf "\n"
read -p "Enter applicationId: " applicationId
read -p "Enter companyId: " companyId
read -p "(optional) Enter snapshotDatetime: " snapshotDatetime
read -p "(optional) Enter snapshotLabel: " snapshotLabel

#Check to see if the user wants to skip upload to the CAST Highlight portal
while :
 do
  read -p "Skip upload? [y/n]: " skip
   case $skip in
    "y")
     java -jar HighlightAutomation.jar --workingDir $workingdir --sourceDir $sourcedir --technologies $technologies --ignoreDirectories $ignoreDirectories --analyzerDir $analyzerDir --perlInstallDir $perlInstallDir --keywordScan $keywordScan --login $username --password $password --applicationId $applicationId --companyId $companyId --serverUrl "https://rpa.casthighlight.com" --snapshotDatetime $snapshotDatetime --snapshotLabel $snapshotLabel --skipUpload
     break
     ;;
    n)
     java -jar HighlightAutomation.jar --workingDir $workingdir --sourceDir $sourcedir --technologies $technologies --ignoreDirectories $ignoreDirectories --analyzerDir $analyzerDir --perlInstallDir $perlInstallDir --keywordScan $keywordScan  --login $username --password $password --applicationId $applicationId --companyId $companyId --serverUrl "https://rpa.casthighlight.com" --snapshotDatetime $snapshotDatetime --snapshotLabel $snapshotLabel
     break
     ;;
    *)
     echo "Please just enter y or n"
     ;;
   esac
 done
