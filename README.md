# Simple Docker Node Container

I wanted a container with nothing but the simple element need for a node container.I do not have Nodejs installed on my host machine. Currently, the only softwares I have on my machine that are related to development:

## Setup

- VS Code
- Windows Terminal
- WSL is enable
- Git (and Bash with Zsh)
- Docker

After taking Bret Fishers Docker for Node.js, I am now starting courses on the JavaScript and working my way to advance Nodejs Apps, VueJs and ReactJS development.

---

### Steps need for my learning environment:

1. Clone Repo

```terminal
git clone <git-repo-url>
```

2. Docker Commands

```
docker-compose run web npm install
```

_Note: Since there is no NodeJS on this machine, this command is required so that the packages are installed and avaiable for the next step._

3. Start Node Container

```
docker-compose up
```

Check Port 3000 to see "Hello World"
