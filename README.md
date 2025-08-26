# planning 

Decide on the tech stack & OS

Build and test the init foothole

Build and test priv esc

Deploy the box

Set up services and configs

Testing

Cleanup

# Foothold

wordpress

Custom plugin

# Priv esc

Script suid bit

Move files around

Abuse this by moving sensitive files like /root/.ssh or /etc/shadow

###

From there, we are going to create a WordPress plugin and test that it works, since we do not want to deploy WordPress and go through the effort of configuring it and realize that it is not working.

We shall run this locally, and first let's check [Alex's from TCM security notes](https://appsecexplained.gitbook.io/appsecexplained/). We can see from the notes that there is are Docker Compose file for WordPress.

We shall use it to develop the plugin, and if it works, we shall deploy it and install WordPress on the server. Copy the WordPress file and paste it into a notebook of your choice, save it, and then run

```bash
sudo docker-compose up --build

#if there is an error, command not found, install docker-compose.
```

# What is a Docker Compose file, you may ask:
```
A Docker Compose file is just a text file (written in YAML format) that tells Docker how to run multiple containers together.

Here’s the simple idea:

Normally, Docker runs one container at a time (e.g., just a database or just a web server).

But real projects often need several containers working together (e.g., a web app + a database + a cache).

Instead of starting each one by hand, you write a Docker Compose file (docker-compose.yml) that describes:

Which containers  you need

What images they use

What ports they open

How they connect to each other

Then, with one command (docker compose up), Docker sets up everything at once.
```









