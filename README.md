<div align="center">

# 🐾 E621 Community

### Fast, self-hosted imageboard platform

An independent community-maintained project based on the open-source **e621ng** codebase.

<br>

![Ruby](https://img.shields.io/badge/Ruby-Rails-red?style=for-the-badge&logo=ruby&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-Ready-2496ED?style=for-the-badge&logo=docker&logoColor=white)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-Database-4169E1?style=for-the-badge&logo=postgresql&logoColor=white)
![OpenSearch](https://img.shields.io/badge/OpenSearch-Search-005EB8?style=for-the-badge)

<br>

**⚡ Quick setup · 🐳 Docker ready · 🛠️ Open source**

</div>

---

## 🚀 One-Command Installation

### 🪟 Windows CMD

Open **Command Prompt (`cmd.exe`)** and run:

```cmd
<YOUR_WINDOWS_CMD_INSTALL_COMMAND_HERE>
```

That's it. ✨

After installation, open:

```text
http://localhost:3000
```

---

## ✨ Features

- 🖼️ Imageboard platform
- 🔎 Advanced search
- 🏷️ Tagging system
- 👤 User accounts
- 💬 Comments
- ⭐ Favorites
- 📊 Post management
- 🛡️ Moderation tools
- 🐳 Docker-based environment
- 🗄️ PostgreSQL database
- 🔍 OpenSearch integration
- 💎 Ruby on Rails backend

---

## 🧰 Tech Stack

| Technology | Purpose |
|---|---|
| 💎 **Ruby on Rails** | Application backend |
| 🐘 **PostgreSQL** | Database |
| 🔎 **OpenSearch** | Search engine |
| 🐳 **Docker** | Containerized environment |
| 🌐 **JavaScript** | Frontend functionality |

---

## ⚙️ Requirements

The exact requirements depend on your installation method.

For a standard development environment, you may need:

- 🐳 Docker
- 🧩 Docker Compose
- 🌿 Git
- 💾 Sufficient disk space
- 🧠 At least several GB of available RAM

If your one-command installer handles these automatically, no additional setup is required.

---

## 🛠️ Development

Want to work on the project manually?

### 🐧 Linux / macOS

Clone the repository:

```bash
git clone <YOUR_REPOSITORY_URL>
```

Enter the project directory:

```bash
cd <YOUR_REPOSITORY_FOLDER>
```

Copy the environment configuration:

```bash
cp .env.sample .env
```

Run the setup:

```bash
docker compose run --rm e621 /app/bin/setup
```

Start the containers:

```bash
docker compose up
```

### 🪟 Windows CMD

Open **Command Prompt (`cmd.exe`)**.

Clone the repository:

```cmd
git clone <YOUR_REPOSITORY_URL>
```

Enter the project directory:

```cmd
cd <YOUR_REPOSITORY_FOLDER>
```

Copy the environment configuration:

```cmd
copy .env.sample .env
```

Run the initial setup:

```cmd
docker compose run --rm e621 /app/bin/setup
```

Start the project:

```cmd
docker compose up
```

To stop the containers, press:

```text
Ctrl + C
```

Then visit:

```text
http://localhost:3000
```

> 💡 **Windows note:** Docker Desktop includes Docker Compose. Make sure Docker Desktop is running before executing the commands above.

---

## 🪟 Windows CMD Troubleshooting

If the project does not start correctly from CMD, try:

```cmd
docker compose down -v
docker compose build --no-cache
docker compose run --rm e621 /app/bin/setup
docker compose up
```

If Git shows unexpected permission or file-mode changes:

```cmd
git config core.fileMode false
```

Check that Docker is available:

```cmd
docker --version
docker compose version
```

Check that Git is available:

```cmd
git --version
```

---

## 🧪 Testing

Run the test environment with Docker:

```bash
docker compose run --rm tests
```

### Ruby linting

```bash
docker compose run --rm rubocop
```

### JavaScript linting

```bash
docker compose run --rm linter
```

---

## 🔄 Updating

After updating the repository:

```bash
git pull
```

If Ruby gems or JavaScript packages have changed, rebuild the containers:

```bash
docker compose build
```

Then restart:

```bash
docker compose up
```

---

## 🌱 Project Origin

This project is an independent derivative of the open-source:

### e621ng

🔗 https://github.com/e621ng/e621ng

Huge thanks to the original developers and contributors who built and maintain the upstream project. ❤️

This repository is maintained independently and may contain modifications, alternative deployment tooling, documentation changes, and other improvements not present in the upstream project.

---

## ⚠️ Disclaimer

> This is an **independent community project**.
>
> It is **not affiliated with, endorsed by, sponsored by, or officially maintained by e621.net or the e621ng development team**.

Any third-party names, trademarks, logos, and branding belong to their respective owners.

---

## 📜 License

The original project permits redistribution and modification subject to its license terms.

When redistributing this project, retain the original:

- 📄 copyright notice
- 📋 license conditions
- ⚠️ disclaimer

Please see:

```text
LICENSE
```

for the complete license text.

---

## 🤝 Contributing

Contributions are welcome. 💙

You can help by:

- 🐛 reporting bugs
- 💡 suggesting improvements
- 🔧 submitting fixes
- 📖 improving documentation
- 🧪 testing new changes

---

## ⭐ Support

If you find the project useful, consider leaving a **⭐ Star**.

It helps other developers discover the project.

---

<div align="center">

### 🐾 Built by the community

**Open source · Self-hosted · Developer friendly**

</div>
