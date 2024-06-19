autoload -U load-extension
function load-nvmrc() {
  if [ -f ".nvmrc" ]; then
    if type "nvm" > /dev/null 2>&1; then
      nvm use > /dev/null 2>&1
    elif type "fnm" > /dev/null 2>&1; then
      fnm use > /dev/null 2>&1
    fi
  fi  
  echo "Node $(printf '\033[0;32m%s\033[0m' $(node -v))"
}

function load-pkgmanager() {
  package_json_content=$(cat package.json)
  package_manager_line=$(echo "$package_json_content" | grep '"packageManager"')

  if [ -n "$package_manager_line" ]; then
    package_manager_value=$(echo "$package_manager_line" | awk -F: '{gsub(/[",]/, "", $2); print $2}')
    package_name=$(echo "$package_manager_value" | sed 's/^\([^@]*\).*/\1/' | tr -d ' ')
  else
    package_name="npm"
  fi
  echo "📦 $(printf '\033[1;31m%s\033[0m' $package_name\ $($package_name -v))"
}

load-extension() {
  if [ -z "$COREPACK_ENABLED" ]; then
    COREPACK_ENABLED=true
    corepack enable
  fi

  if [ -f "package.json" ]; then
    echo "Using $(load-nvmrc) ($(load-pkgmanager))"
  fi
}
add-zsh-hook chpwd load-extension
load-extension
