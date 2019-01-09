FROM amazonlinux:2.0.20181114

ARG version
ARG target_version
ARG target_version_minor

RUN amazon-linux-extras install -y epel
RUN yum -y update
RUN yum -y install \
  alien \
  rpmbuild

RUN curl -LO https://typora.io/linux/typora_${target_version}_amd64.deb
RUN alien -rcg typora_${target_version}_amd64.deb
RUN sed -i "/^%dir /d" /typora-${target_version}/*.spec > /dev/null
RUN rpmbuild --buildroot /typora-${target_version} --bb /typora-${target_version}/*.spec
