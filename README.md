# ⚙️ Terraform Prepare CLI Tool

This tool helps prepare a Terraform folder by:

✅ Renaming all `.tf` files to `.tf.orig`  
✅ Creating a `default.auto.tfvars` with common variable template

Useful for testing, archiving, or setting up templates across multiple projects.

---

## 📦 Features

- 💻 Supports **Windows (PowerShell)** and **Linux/macOS (Bash)**
- 🔐 No installation required — just a one-liner
- 🛠 Hardcoded default variables added to `default.auto.tfvars`

---

## 🪟 Usage on **Windows**

```powershell
$target="$env:TEMP\tfprep.ps1"; `
Invoke-WebRequest "https://raw.githubusercontent.com/jhansiraobotsa/terraform-cli-tools/main/terraformprepare.ps1" -OutFile $target; `
powershell -ExecutionPolicy Bypass -File $target -folder "C:\path\to\terraform"
```

## 🪟 Usage on **Linux**
🐧 Usage on Linux / macOS

```
curl -o /tmp/tfprep.sh https://raw.githubusercontent.com/jhansiraobotsa/terraform-cli-tools/main/terraformprepare.sh && \
bash /tmp/tfprep.sh /path/to/terraform
```
📂 What It Does
1. Renames Files

main.tf         ➜  main.tf.orig  
variables.tf    ➜  variables.tf.orig  
1. Creates Template File
default.auto.tfvars will include:


environment    = "dev"
region         = "us-west-2"
instance_type  = "t2.micro"
🔐 Security & Safety
✅ This tool is safe and open-source.

📌 For maximum safety, pin to a specific version or commit:


https://github.com/jhansiraobotsa/terraform-cli-tools#

🤝 Contributions
Feel free to fork, improve, or open issues!
Pull requests are welcome.

🧠 Author
Jhansirao Botsa
🔗 GitHub Profile

📜 License
MIT License – free to use, modify, and distribute.



---

 ⚙️ Terraform Prepare CLI Tool

This CLI tool helps automate Terraform folder preparation by:

✅ Renaming all `.tf` files to `.tf.orig`  
✅ Creating a `default.auto.tfvars` file with a predefined template  

This is useful for backing up, testing, or initializing Terraform directories quickly.

---

 📦 Features

- 💻 Cross-platform support: Windows (PowerShell) & Linux/macOS (Bash)
- 🚀 No installation required — just run a single command
- 🔐 Publicly hosted via GitHub Raw links
- 📂 Useful for pre-deployment steps or template creation

---

