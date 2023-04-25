FROM archlinux:latest

RUN pacman -Syu --noconfirm && pacman -S curl cargo vim python3 --noconfirm  
RUN cargo install agate
WORKDIR /root/
RUN curl -O https://youshitsune.envs.net/start
RUN chmod +x start
RUN cp start /bin/
RUN echo "To start just run start." >> README.md
WORKDIR /root/
