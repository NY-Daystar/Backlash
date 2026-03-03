<h1 style="text-align:center;" > Backlash</h1>

[![PowerShell](https://custom-icon-badges.demolab.com/badge/PowerShell-5391FE?logo=powershell-white&logoColor=fff)](#)  
[![Codacy Badge](https://app.codacy.com/project/badge/Grade/9e4c46db42c84f5ebb7f7da845a29a43)](https://app.codacy.com/gh/NY-Daystar/Backlash/dashboard?utm_source=gh&utm_medium=referral&utm_content=&utm_campaign=Badge_grade) [![License](https://img.shields.io/badge/License-Apache_2.0-orange.svg)](https://opensource.org/licenses/Apache-2.0) [![Version](https://img.shields.io/github/tag/NY-Daystar/backlash.svg)](https://github.com/NY-Daystar/backlash/releases)

![GitHub repo size](https://img.shields.io/github/repo-size/ny-daystar/Backlash) ![GitHub language count](https://img.shields.io/github/languages/count/ny-daystar/backlash) ![GitHub top language](https://img.shields.io/github/languages/top/ny-daystar/backlash)

![GitHub issues](https://img.shields.io/github/issues/ny-daystar/backlash) ![GitHub closed issues](https://img.shields.io/github/issues-closed-raw/ny-daystar/backlash) ![GitHub commit activity (branch)](https://img.shields.io/github/commit-activity/m/ny-daystar/backlash/main) ![All Contributors](https://img.shields.io/badge/all_contributors-1-blue.svg?style=circular)

![GitHub watchers](https://img.shields.io/github/watchers/ny-daystar/backlash) ![GitHub forks](https://img.shields.io/github/forks/ny-daystar/backlash) ![GitHub Repo stars](https://img.shields.io/github/stars/ny-daystar/backlash)

Source code analysed with [Codacy](https://app.codacy.com)

## Summary

- [Requirements](#requirements)
- [User Guide](#user-guide)
- [Contact](#contact)
- [Credits](#credits)

## Requirements

- [Powershell](https://learn.microsoft.com/en-us/powershell/scripting/install/install-powershell-on-windows?view=powershell-7.5) >= 5.1

## User guide

1. Clone repository

```bash
git clone git@github.com:NY-Daystar/Backlash.git
```

2. Open Powershell terminal
3. Setup folders and files

```ps
mv Projects_Samples Projects
```

```ps
mv sources_samples.csv sources.csv
```

4. Execute this command

```ps
.\main.ps1
```

5. Your projects extracted will be found in `Output/` folder

![Application view](Docs/result.png)

You can activate git hooks with this command

```bash
git config --global core.hooksPath .githooks
```

### How it works

The project read the csv file in `sources.csv`.  
For each line, it will found a zip in `Projects/` folder and try to extract the zip in `Output` folder with the name and the version.

## Contact

- To make a pull request: https://github.com/NY-Daystar/backlash/pulls
- To summon an issue: https://github.com/NY-Daystar/backlash/issues
- For any specific demand by mail: [luc4snoga@gmail.com](mailto:luc4snoga@gmail.com?subject=[GitHub]%backlash%20Project)

## Credits

Made by Lucas Noga.  
Licensed under Apache.
