
# 🔄 GitHub Repo Downloader

This is a simple Bash script to **download all public repositories** from any GitHub user.
It uses the GitHub API and optionally supports authentication via personal access token (PAT) to avoid rate limits.

---

## 🚀 Features

- 🔎 Prompts for any GitHub username
- 🔐 Optional GitHub token support to avoid API rate limits
- 📂 Downloads all public repositories using `git`
- 🔁 Handles paginated results (supports 100+ repos)
- 🧩 Lightweight, clean, and easy to use

---

## 🛠️ Requirements

- `bash`
- `git`
- `curl`
- `grep` with PCRE support (`grep -P`)

---

## 📥 Installation

1. **Clone the repository**:

   ```bash
   git clone https://github.com/nemocyberworld/Github-Repo-Downloader.git
   ```

2. **Navigate into the project folder**:

   ```bash
   cd Github-Repo-Downloader
   ```

3. **Make the script executable**:

   ```bash
   chmod +x download_github_repos.sh
   ```

4. **Run the script**:

   ```bash
   ./download_github_repos.sh
   ```
---

## 📌 Usage

Just run the script and follow the prompts:

```bash
Enter GitHub username: johndoe
Enter GitHub token (optional, press Enter to skip):
```

All repositories will be downloaded into a folder named:

```
./johndoe-repos/
```

---

## 🔐 GitHub Token (Optional)

To avoid GitHub’s rate limiting (60 unauthenticated API requests/hour), you can use a **personal access token**:

1. Go to: [https://github.com/settings/tokens](https://github.com/settings/tokens)
2. Click **"Generate new token (classic)"**
3. Select the `public_repo` scope
4. Copy and paste the token into the script when prompted

---

## 📦 Example Output

```
Enter GitHub username: johndoe
Enter GitHub token (optional, press Enter to skip):
[*] Fetching repositories for user: johndoe
[+] Cloning https://github.com/johndoe/project-one.git
[+] Cloning https://github.com/johndoe/project-two.git
[✔] All public repositories for 'johndoe' downloaded.
```

---

## 🎓 Developed by Hacktolive Academy

This tool was created and maintained by **[Hacktolive Academy](https://hacktolive.com)**.
We are committed to building open-source security tools and delivering real-world ethical hacking education.

👉 Visit us: [https://hacktolive.com](https://hacktolive.net)
📢 Follow us: [https://www.facebook.com/h4k2liv3](https://www.facebook.com/h4k2liv3/)

---

## 📃 License

This script is open-source and licensed under the [MIT License](LICENSE).

---

## 🙌 Support Us

If you find this tool helpful, consider sharing it or supporting us through:

* Contributions
* Feedback
* Community engagement

Stay curious. Stay ethical. Hack to learn. ✊

