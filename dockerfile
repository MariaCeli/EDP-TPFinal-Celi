FROM ubuntu

SHELL ["/bin/bash", "-c"]

RUN apt-get update

RUN apt-get install -y git
RUN git clone https://github.com/MariaCeli/EDP-TPFinal-Celi

ENTRYPOINT [ "bash", "EDP-TPFinal-Celi/main.sh" ]

