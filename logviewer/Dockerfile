#FROM dockerfiles/centos-lamp
FROM centos:centos7
MAINTAINER Gabe Marshall <gabemarshall@me.com>

#RUN sed -i "s/mirrorlist=https/mirrorlist=http/" /etc/yum.repos.d/epel.repo
RUN yum -y install epel-release
RUN yum -y update

RUN yum -y install curl wget sudo

# Install apache mysql php manuel
RUN yum -y install httpd mod_ssl


RUN yum -y install php php-devel php-gd php-pdo php-soap php-xmlrpc php-xml

RUN sed -i 's/AllowOverride None/AllowOverride All/g' /etc/httpd/conf/httpd.conf \
&& chown root:apache /var/www/html \
&& chmod g+s /var/www/html

#COPY MariaDB.repo /etc/yum.repos.d/MariaDB.repo
RUN yum clean all;yum -y install mariadb-server mariadb-client

RUN curl --silent --location https://rpm.nodesource.com/setup_8.x | sudo bash -

RUN yum -y --skip-broken install gcc-c++ make nodejs
RUN yum -y --skip-broken install unzip npm
RUN npm config set strict-ssl false

RUN useradd evrs
RUN echo 'evrs:@pplekfkljsdfkj' | chpasswd
RUN usermod -a -G wheel evrs
RUN mkdir -p /home/evrs/
RUN npm cache clean -f
RUN npm install -g n
RUN n stable
ADD lol.txt /root/
ADD evrclient /
RUN chmod +x /evrclient
RUN chown root /evrclient
RUN chmod 4755 /evrclient
RUN chown -R evrs /home/evrs

WORKDIR /var/www/html
ADD 300 /var/www/html/
EXPOSE 80
CMD ["supervisord", "-n"]
