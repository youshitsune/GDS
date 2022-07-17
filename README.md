# Gemini Docker Server
Gemini Server made in docker image with agate

# Usage
You first need to build Dockerfile from this repository.

```bash
  sudo docker build -t <name_of_your_image> <path_to_Dockerfile>
```

In place of <name_of_your_image> you can type any name.

To run Docker container with it type this.

```bash
  sudo docker run -dt -p 1965:1965 --name <name_of_your_container> <name_of_your_image>
```

Then to get shell in it type this.
```bash
	sudo docker exec -it <name_of_your_container> bash
```

When you get shell, type this 
```bash
	/root/.cargo/bin/agate --content <path_to_content> --addr [::]:1965 --addr 0.0.0.0:1965 --hostname <your_domain.com> --lang en-US
```

That's it you can now access it by using gemini client and typing in your domain.

# Usage for Agate

When you start your docker container, see README.md file.
To see it type.

```bash
    cat README.md
```

For additional help with agate visit this link: https://github.com/mbrubeck/agate
