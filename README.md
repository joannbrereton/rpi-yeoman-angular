## yeoman and angular for Raspberry Pi [Hypriot build] (http://blog.hypriot.com/post/get-your-all-in-one-docker-playground-now-hypriotos-reloaded/)

Forked from [silarsis/yeoman project](https://github.com/silarsis/yeoman)

**Dockerfile** for base yeoman install, with a few generators pre-installed.

### Installation

1. [Download and Install Hypriot](http://blog.hypriot.com/getting-started-with-docker-on-your-arm-device/)

2. `docker run -i -t brereton/rpi-yeoman-angular`

    (alternatively, build from github: `docker build -t="brereton/rpi-yeoman-angular" github.com/brereton/yeoman`)

### Usage

`docker run -i -t brereton/rpi-yeoman-angular`

This will run the container and log you in as the "yeoman" user, ready to "yo".

### Notes

"sudo" works - if you need root, `sudo -s` will get you there.

The default grunt port (9000) is exposed by default.

Docker hints:

  - `docker start -a -i <containerid>` will restart a stopped container and re-attach you to the bash process
  - `docker inspect -format '{{ .NetworkSettings.IPAddress }}' <containerid>` will give you the IP address of the currently running container
  - `docker run -P -i -t brereton/rpi-yeoman-angular` will map port 9000 to a port on the host, and `docker port <containerid> 9000` will show you what port that ends up on
