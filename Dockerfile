FROM java:7
ENV GRAILS_VERSION 2.4.4

WORKDIR /usr/lib/jvm
RUN wget https://github.com/grails/grails-core/releases/download/v$GRAILS_VERSION/grails-$GRAILS_VERSION.zip && \
    unzip grails-$GRAILS_VERSION.zip && \
    rm -rf grails-$GRAILS_VERSION.zip && \
    ln -s grails-$GRAILS_VERSION grails
ENV GRAILS_HOME /usr/lib/jvm/grails
ENV PATH $GRAILS_HOME/bin:$PATH


RUN mkdir /fiuba
WORKDIR /fiuba

RUN echo "Descargando codigo del servidor" \
	&& git clone https://github.com/ivanpatos/tp_prof.git \
	&& echo "fin descarga"

COPY grails-app/conf/DataSource.groovy /fiuba/tp_prof/HubinAdmin/grails-app/conf/DataSource.groovy
	
WORKDIR tp_prof/HubinAdmin
	
EXPOSE 8080
	
CMD grails run-app