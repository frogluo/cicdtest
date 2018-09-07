#=========================================================
# php项目，官网、企业平台、通行证相关，打成一个包
# 执行镜像制作命令: docker  build -t registry.kingdee.com/sme-web:$tag .
#===========================================================

FROM swr.cn-north-1.myhuaweicloud.com/k8stest/php:5.6

MAINTAINER lihui_luo@kingdee <lihui_luo@kingdee.com>

ADD .www.conf /etc/httpd/conf.d/www.conf
ADD .run-httpd.sh /run-httpd.sh

RUN chmod u+x /run-httpd.sh && mkdir -p /var/www/cicdtest && chown -R apache:apache /var/www
ADD ./ /var/www/cicdtest/