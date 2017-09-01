set -e

CURRENT_DIR=$(pwd)

if grep "github.com" < ~/.ssh/config > /dev/null 2>&1; then
  GITHUB_URL="git@github.com:"
else
  GITHUB_URL="https://github.com/"
fi

[ ! -e "${CURRENT_DIR}/mdocs-infra" ] && git clone "${GITHUB_URL}pyar6329/mdocs-infra.git" "${CURRENT_DIR}/mdocs-infra"
[ ! -e "${CURRENT_DIR}/mdocs-infra/docker/mdocs-api" ] && git clone "${GITHUB_URL}pyar6329/mdocs-api.git" "${CURRENT_DIR}/mdocs-infra/docker/mdocs-api"
[ ! -e "${CURRENT_DIR}/mdocs-infra/docker/mdocs-front" ] && git clone "${GITHUB_URL}pyar6329/mdocs-front.git" "${CURRENT_DIR}/mdocs-infra/docker/mdocs-front"

if ! grep -e '^127.0.0.1\texample.com$' < /etc/hosts > /dev/null 2>&1; then
  echo -e "127.0.0.1\texample.com" | sudo tee -a /etc/hosts > /dev/null 2>&1
fi

if ! grep -e '^127.0.0.1\tapi.example.com$' < /etc/hosts > /dev/null 2>&1; then
  echo -e "127.0.0.1\tapi.example.com" | sudo tee -a /etc/hosts > /dev/null 2>&1
fi

if ! grep -e '^127.0.0.1\tpg.example.com$' < /etc/hosts > /dev/null 2>&1; then
  echo -e "127.0.0.1\tpg.example.com" | sudo tee -a /etc/hosts > /dev/null 2>&1
fi

cd "${CURRENT_DIR}/mdocs-infra/docker"

if ! docker-compose ps | grep 'mdocs-api' > /dev/null 2>&1; then
  docker-compose up -d
fi

cd "${CURRENT_DIR}"

