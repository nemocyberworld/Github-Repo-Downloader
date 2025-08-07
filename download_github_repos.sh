#!/bin/bash

function banner() {
  echo -e "\033[1;32m
█░█ ▄▀█ █▀▀ █▄▀ ▀█▀ █▀█ █░░ █ █░█ █▀▀   ▄▀█ █▀▀ ▄▀█ █▀▄ █▀▀ █▀▄▀█ █▄█
█▀█ █▀█ █▄▄ █░█ ░█░ █▄█ █▄▄ █ ▀▄▀ ██▄   █▀█ █▄▄ █▀█ █▄▀ ██▄ █░▀░█ ░█░
\033[0m"
  echo -e "\033[1;34mCreated by Hacktolive Academy  •  Visit: https://hacktolive.net\033[0m"
  echo -e "\033[0;36mThis script allows you to download all public repositories from any GitHub user.\033[0m"
  echo
}

banner


# Prompt for GitHub username
read -p "Enter GitHub username: " username

# Check for empty username
if [ -z "$username" ]; then
    echo "❌ No username provided. Exiting."
    exit 1
fi

# Prompt for optional GitHub token
read -p "Enter GitHub token (optional, press Enter to skip): " token

# Create and enter directory
mkdir -p "${username}-repos"
cd "${username}-repos"

# Page count for paginated API
page=1

echo "[*] Fetching repositories for user: $username"

while :; do
    # Build the API URL
    url="https://api.github.com/users/$username/repos?per_page=100&page=$page"

    # Use token if provided
    if [ -z "$token" ]; then
        repos=$(curl -s "$url" | grep -oP '"clone_url": "\K.*?(?=")')
    else
        repos=$(curl -s -H "Authorization: token $token" "$url" | grep -oP '"clone_url": "\K.*?(?=")')
    fi

    # Exit if no more repos found
    if [ -z "$repos" ]; then
        break
    fi

    # Clone each repo
    echo "$repos" | while read repo; do
        echo "[+] Cloning $repo"
        git clone "$repo"
    done

    ((page++))
done

echo "[✔] All public repositories for '$username' downloaded."
