#functions
function prompt{
	" "
	$currUser = [Security.Principal.WindowsIdentity]::GetCurrent().Name.Split('\')[-1]
	$IsAdmin = (New-Object Security.Principal.WindowsPrincipal ([Security.Principal.WindowsIdentity]::GetCurrent())).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)

	$currDir = ($pwd).ProviderPath.Split('\')[-1]
	
	Write-Host "[" -ForegroundColor White -NoNewLine
	if($isAdmin){
		Write-Host "$currUser@dellap" -BackgroundColor Red -ForegroundColor DarkGreen -NoNewLine
	}else{
		Write-Host "$currUser@dellap" -ForegroundColor Darkgreen -NoNewLine
	}
	Write-Host "]" -ForegroundColor White -NoNewLine

	Write-Host ":" -ForegroundColor Yellow -NoNewLine
	
	if($pwd -like "$HOME*"){
		if($pwd.ProviderPath -eq $HOME){
			Write-Host "~\" -ForegroundColor DarkCyan -NoNewLine
		}else{
			Write-Host "~\$currDir" -ForegroundColor DarkCyan -NoNewLine
		}
	}else{
		Write-Host "\$currDir" -ForegroundColor DarkCyan -NoNewLine
	}
	Write-Host "$" -ForegroundColor White -NoNewLine
}

function whatsmyipfunc{
	echo (Invoke-RestMethod ipinfo.io -method GET).ip
}

function subl{
	param($file)
	C:\"Program Files"\"Sublime Text"\sublime_text.exe $file 
}

function Set-ShellTitle{
	param($title)
	#if($title -eq $null -and $title -eq "-default"){
	#	$host.ui.RawUI.WindowTitle="Windows PowerShell"
	#}else{
		$host.ui.RawUI.WindowTitle=$title
	#}
}

function dailees{
    [void](touch dailees.txt -Force)
    $template_txt="~~~~~~~~~~~~~~~ToDo~~~~~~~~~~~~~~~~~`n-"
    $template_txt | out-file ./dailees.txt
    vim ./dailees.txt
}

function getdiff{
    param($c1,$c2)
    Compare-Object (cat $c1) (cat $c2)
}

function lsunix{
#    param(
#        [switch]$l
#    )
#    if($l){
#        get-childitem
#    }else{
        get-childitem | format-wide -autosize -Property Name
#    }
}

#aliases
Set-Alias whatsmyip whatsmyipfunc 
Set-Alias touch New-Item
Set-Alias unzip Expand-Archive
Set-Alias -name lsu -value lsunix -option AllScope

#main
prompt
