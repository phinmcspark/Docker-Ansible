FROM debian:8
RUN  apt-get update && apt-get install -y --no-install-recommends git=* \
python-pip=* \
     && git clone git://github.com/ansible/ansible.git --recursive \
     && mkdir /root/.ssh \
     && rm -rf /var/lib/apt/lists/*
WORKDIR /etc/ansible
ENV ANSIBLE_HOST_KEY_CHECKING = False
ENTRYPOINT ["ansible"]
