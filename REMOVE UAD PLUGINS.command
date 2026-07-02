# function to remove from certain folders

function removePluginCompany
{
	echo "Directory: $1"
	echo "Company: $2"
	cd "$1"
	for item in *; do
		if [[ $item == *"$2"*  ]]; then
			echo "removing $item"
			sudo rm -rf "$item"
		fi
	done
}



echo "Removing those nosy, annoying, forcefully installed UAD plugins"
removePluginCompany /Library/Audio/Plug-Ins/Components "UAD"
removePluginCompany /Library/Audio/Plug-Ins/VST3 "Universal Audio"
removePluginCompany /Library/Application\ Support/Avid/Audio/Plug-Ins  "Universal Audio"



