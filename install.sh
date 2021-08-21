echo "Creating traefik network..."
docker network create --driver bridge traefik-local-network || true
touch ./acme.json && chmod 600 ./acme.json
test -f ./traefik.yml || cp ./traefik.example.yml ./traefik.yml
test -f ./dynamic.yml || cp ./dynamic.example.yml ./dynamic.yml
