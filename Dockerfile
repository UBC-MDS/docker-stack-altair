FROM continuumio/anaconda3

RUN apt-get update && apt install -y chromium && apt-get install -y libnss3 && apt-get install unzip

# Install chromedriver
RUN wget -q "https://chromedriver.storage.googleapis.com/79.0.3945.36/chromedriver_linux64.zip" -O /tmp/chromedriver.zip \
    && unzip /tmp/chromedriver.zip -d /usr/bin/ \
    && rm /tmp/chromedriver.zip && chown root:root /usr/bin/chromedriver && chmod +x /usr/bin/chromedriver

RUN conda install -y -c conda-forge altair && conda install -y vega_datasets && conda install -y selenium
