set -eu

echo "####################"
echo " Starting tests ..."
echo "####################"

sync
set -x

curl 'http://localhost:8080/TP_real_project' 2>/dev/null

for page in (Annulation Formateur Formation FusionFormation Remboursement RemplacementFormateur) do 
	url="http://localhost:8080/TP_real_project/$page"
	echo "Testing url : "$url
	curl $url 2>/dev/null
done






set +x
sync

echo "####################"
echo " Tests done !"
echo "####################"