Set-Alias ll ls
Set-Alias vim nvim

function touch {
	param ( $fileName )
	Write-Host "" >> $fileName
}
