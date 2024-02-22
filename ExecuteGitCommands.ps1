#
# Git pull, add, commit and push
# Generated by: Raghunath Anne
# Generated on: 18/02/2024
#

<#
.SYNOPSIS

This command do the git pull on given $location

.DESCRIPTION

executes git pull

.PARAMETER location

git repository path

.OUTPUTS

No return
#>

function Invoke-GitPull{

	[CmdletBinding()]
	Param(
		[string] $Location
	)	
	Set-Location $Location
	& "$PSScriptRoot\commandLine\git-action.bat" pull 	
}

function Invoke-GitPush{

	[CmdletBinding()]
	Param(
		[string] $Location
	)	
	Set-Location $Location
	& "$PSScriptRoot\commandLine\git-action.bat" push
}

function Invoke-GitCommit{

	[CmdletBinding()]
	Param(
		[string] $Location,
		[string] $Message
	)	
	Set-Location $Location
	& "$PSScriptRoot\commandLine\git-action.bat" commit $Message
}

function Invoke-GitAdd{

	[CmdletBinding()]
	Param(
		[string] $Location,
		[string] $Path
	)	
	Set-Location $Location
	& "$PSScriptRoot\commandLine\git-action.bat" Add $path
}


