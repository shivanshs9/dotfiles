ping=$(ping -c 1 networkcheck.kde.org | tail -1| awk '{print $4}' | cut -d '/' -f 2 | cut -d '.' -f 1)
if [[ -z "$ping" ]]; then
	echo "--"
else
	echo "$ping ms"
fi
