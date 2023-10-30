FROM ubuntu
RUN apt-get update
RUN apt-get -y install apache2
RUN service apache2 start
RUN apt-get -y install git
RUN git clone https://github.com/swetamishra123/ansible-jenkins-pipeline.git app
RUN cp /app/styles.css /var/www/html/
RUN cp /app/index.html /var/www/html/
ENTRYPOINT apachectl -D FOREGROUND
ENV name <Devops>
