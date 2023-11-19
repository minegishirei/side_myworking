FROM ubuntu

# add user mine
ARG USERNAME=mine
ARG GROUPNAME=mine
ARG UID=1000
ARG GID=1000
RUN groupadd -g $GID $GROUPNAME && \
    useradd -m -s /bin/bash -u $UID -g $GID $USERNAME
USER $USERNAME
WORKDIR /home/$USERNAME/
COPY ./home /home/$USERNAME/

ENTRYPOINT .entrypoint.sh