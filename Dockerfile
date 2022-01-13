FROM  selenium/standalone-chrome

PORT 9515
RUN rm /etc/supervisor/conf.d/selenium.conf
COPY chromedriver.conf /etc/supervisor/conf.d/chromedriver.conf
COPY start-selenium-standalone.sh /opt/bin/start-chromedriver.sh
RUN sudo chmod +x /opt/bin/start-chromedriver.sh
