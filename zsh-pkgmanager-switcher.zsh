_pkgmanager_switcher() {
  if [ -f "package.json" ]; then
    package_json_content=$(cat package.json)
    package_manager_line=$(echo "$package_json_content" | grep '"packageManager"')

    if [ -n "$package_manager_line" ]; then
      package_manager_value=$(echo "$package_manager_line" | awk -F: '{gsub(/[",]/, "", $2); print $2}')
      package_name=$(echo "$package_manager_value" | sed 's/^\([^@]*\).*/\1/' | tr -d ' ')
      corepack enable
    else
      package_name="npm"
    fi

    echo "Using Node $(node -v) and $package_name $($package_name -v)"
  fi
}
add-zsh-hook chpwd _pkgmanager_switcher