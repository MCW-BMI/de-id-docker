# ACK: https://www.digitalocean.com/community/tutorials/how-to-install-java-on-centos-and-fedora

JRE_ARCHIVE=jre-7u71-linux-x64.tar.gz
JDK_ARCHIVE=jdk-8u91-linux-x64.tar.gz

cd /root/archive

tar xvf $JDK_ARCHIVE -C /opt
alternatives --install /usr/bin/java java /opt/jdk1.8.0_91/bin/java 1
alternatives --install /usr/bin/javac javac /opt/jdk1.8.0_91/bin/javac 1
alternatives --install /usr/bin/jar jar /opt/jdk1.8.0_91/bin/jar 1

