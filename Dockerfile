FROM centos:latest

#RUN rpm -Uvh http://ftp.linux.ncsu.edu/pub/epel/6/i386/epel-release-6-8.noarch.rpm
#RUN rpm -ihv https://archives.fedoraproject.org/pub/archive/epel/6/x86_64/epel-release-6-8.noarch.rpm
RUN rpm --import https://repo.saltproject.io/py3/redhat/8/x86_64/latest/SALTSTACK-GPG-KEY.pub
RUN curl -fsSL https://repo.saltproject.io/py3/redhat/8/x86_64/latest.repo | tee /etc/yum.repos.d/salt.repo
RUN yum clean expire-cache
RUN yum install -y salt-minion
#RUN [ ! -d /etc/salt/minion.d ] && mkdir /etc/salt/minion.d
ADD ./master.conf /etc/salt/minion.d/master.conf

CMD /usr/bin/salt-minion