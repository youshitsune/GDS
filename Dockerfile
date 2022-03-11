FROM archlinux

RUN pacman -Syu --noconfirm && pacman -S cargo vim --noconfirm
RUN mkdir /home/gemini/
RUN cd /home/gemini/
RUN echo "# Welcome" >> index.gmi

CMD ["cd /home/gemini/"]
