<img src="https://github.com/kichkiro/42/blob/assets/banner_inception.jpg?raw=true" width="100%"/>

# Inception 

This project aims to broaden your knowledge of system administration by using Docker.

You will virtualize several Docker images, creating them in your new personal virtual machine.

#### <i>[subject](_subject/en.subject.pdf) v.2</i>

<details>
<summary><i><b>Project Structure  📂</b></i></summary>

```js
├── README.md
├── LICENSE
├── project
│   ├── Makefile
│   └── srcs
│       ├── docker-compose.yml
│       └── requirements
│           ├── mariadb
│           │   ├── conf
│           │   │   └── 50-server.cnf
│           │   ├── Dockerfile
│           │   └── tools
│           │       └── init_mariadb.sh
│           ├── nginx
│           │   ├── conf
│           │   │   └── kichkiro.42.fr.conf
│           │   ├── Dockerfile
│           │   └── tools
│           │       └── init_nginx.sh
│           └── wordpress
│               ├── conf
│               │   └── www.conf
│               ├── Dockerfile
│               └── tools
│                   └── init_wordpress.sh
└── _subject
    └── en.subject.pdf
```
</details>

## 📌 - Key Topics

### Docker
Docker is an open-source platform that automates the deployment, scaling, and management of applications within lightweight, portable containers. 

Containers package an application along with all its dependencies, libraries, and configuration files, ensuring consistent behavior across different environments, such as development, testing, and production. 

Unlike virtual machines, Docker containers share the host operating system's kernel, making them more resource-efficient and faster to start. 

Docker provides tools for building, distributing, and running containers, allowing developers to streamline workflows, enhance collaboration, and simplify the deployment process in complex, distributed systems.


## 🛠️ - Usage

```sh
git clone https://github.com/kichkiro/Inception.git
cd Inception/project
make
```
Now, with __docker ps -a__, is possible to view the created containers.

## 📚 - References
- [Docker Docs](https://docs.docker.com/)
- [Docker Compose Introduction](https://www.baeldung.com/ops/docker-compose)
- [What is the difference between "expose" and "publish" in Docker?](https://stackoverflow.com/questions/22111060/what-is-the-difference-between-expose-and-publish-in-docker)

## ⚖️ - License

See [LICENSE](LICENSE)
