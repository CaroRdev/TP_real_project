set -eu

echo "####################"
echo " Starting tests ..."
echo "####################"

sync
set -x

curl 'http://localhost:8080/TP_real_project' 2>/dev/null

set +x
sync

echo "####################"
echo " Tests done !"
echo "####################"