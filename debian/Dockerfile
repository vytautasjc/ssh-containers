FROM debian

RUN apt update && \
    apt install -y wget

RUN wget https://raw.githubusercontent.com/vytautasjc/ssh-containers/main/debian/bootstrap.sh -P /tmp
RUN chmod +x /tmp/bootstrap.sh
RUN sh /tmp/bootstrap.sh
RUN rm /tmp/bootstrap.sh

RUN service ssh start

CMD ["/usr/sbin/sshd", "-D"]
