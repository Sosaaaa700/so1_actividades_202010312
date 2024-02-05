script_dir=$(dirname "$(readlink -f "$0")")


fecha=$(date +"%Y%m%d")

GITHUB_USER="sosaaaa700"

if [ -z "$GITHUB_USER" ]; then
    echo "La variable GITHUB_USER no está definida. Por favor, establezca el nombre de usuario de GitHub."
    exit 1
fi

response=$(curl -s "https://api.github.com/users/$GITHUB_USER")

github_user=$(echo "$response" | jq -r '.login')
id=$(echo "$response" | jq -r '.id')
created_at=$(echo "$response" | jq -r '.created_at')

echo "Hola $github_user. User ID: $id. Cuenta fue creada el: $created_at."

mkdir -p "/tmp/$fecha"

echo "Hola $github_user. User ID: $id. Cuenta fue creada el: $created_at." >> "/tmp/$fecha/saludos.log"
