# casthighlight_wrapper
**CAST Highlight wrapper script**

The CAST Highlight wrapper script allows you to assess an application source code, and optionally upload the analysis (not the source code) to the CAST Highlight portal for assessment. 

## Script arguments 

**sourceDir (mandatory)**  
The absolute path to the directory that contains the source code to be scanned by Highlight.

**workingDir (mandatory)**  
This is the absolute path to the Highlight working directory. Within this directory, a Highlight temporary folder ("HLTemporary") will be created and will contain scan result files (CSVs). To make it short, this is the directory where you want to store scan results.

**technologies (optional)**  
Technologies you want to explicitly scan in your sources. Separated by "," and sorted by preferences (See --printTechnos option above).

**ignoreDirectories (optional)**  
Directory name patterns to ignore during the scan (e.g. test folders, .git, etc.). Separated by ",". Source code within directories matching with these patterns will be automatically excluded from the scan.

**analyzerDir (optional)**  
Alternate directory for Highlight's analyzer scripts.

**perlInstallDir (optional)**  
Directory of perl installation.

**keywordScan (optional)**  
Path and filename of your KeywordScan XML configuration file. 

**skipUpload (optional)**  
Will generate CSV results locally, no result upload will be performed.
 
**login (mandatory)**  
Login of an active Highlight user.

**password (mandatory)**  
Password for the login indicated above.

**companyId (mandatory)**  
Identifyer for the company (can be retrieved from the Highlight portal, it is the ID displayed in the url when clicking on the top-level domain in "MANAGE PORTFOLIO > MANAGE APPLICATIONS" from the menu).

**applicationId (mandatory)**  
Identifyer for the application (can be retried from the Highlight portal, it is the ID displayed in the url when editing an application in "MANAGE PORTFOLIO > MANAGE APPLICATIONS").

**snapshotDatetime (optional)**  
Time (epoch) to use for uploaded application snapshot.

**snapshotLabel (optional)**  
The application snapshot label you want to display on the application result page on the portal (e.g. release version, build number, etc.).

<!-- serverUrl is set by default to 'https://rpa.casthighlight.com' -->
serverUrl (no input necessary) -  Default set to 'https://rpa.casthighlight.com'
