FROM archlinux

RUN pacman -Syu --noconfirm && pacman -S cargo vim --noconfirm 
RUN cargo install agate
WORKDIR /root/
RUN echo "To start agate server: /root/.cargo/bin/agate --content <path_to_content> --addr [::]:1965 --addr 0.0.0.0:1965 --hostname <your_domain.com> --lang en-US" >> README.md
WORKDIR /root/
