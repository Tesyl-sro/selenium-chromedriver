FROM  selenium/standalone-chrome

EXPOSE 9515
EXPOSE 8888

RUN sudo rm /etc/supervisor/conf.d/selenium.conf
COPY chromedriver.conf /etc/supervisor/conf.d/chromedriver.conf
COPY start-chromedriver.sh /opt/bin/start-chromedriver.sh
RUN sudo chmod +x /opt/bin/start-chromedriver.sh
