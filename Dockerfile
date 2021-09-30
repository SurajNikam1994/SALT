FROM centos:latest


RUN rpm --import https://repo.saltproject.io/py3/redhat/8/x86_64/latest/SALTSTACK-GPG-KEY.pub
RUN curl -fsSL https://repo.saltproject.io/py3/redhat/8/x86_64/latest.repo | tee /etc/yum.repos.d/salt.repo
RUN yum clean expire-cache
RUN yum install -y salt-minion

ADD ./master.conf /etc/salt/minion.d/master.conf

CMD /usr/bin/salt-minion