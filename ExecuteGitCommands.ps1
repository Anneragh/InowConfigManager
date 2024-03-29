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
	& "$PSScriptRoot\commandLine\git-action.bat" pull 	
}

function Invoke-GitPush{
	& "$PSScriptRoot\commandLine\git-action.bat" push
}

function Invoke-GitCommit{
	& "$PSScriptRoot\commandLine\git-action.bat" $Message
}

function Invoke-GitAdd{

	[CmdletBinding()]
	Param(		
		[string] $Path
	)	
	
	& "$PSScriptRoot\commandLine\git-action.bat" Add $path
}



