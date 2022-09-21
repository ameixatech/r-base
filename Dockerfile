FROM r-base:4.2.1

RUN apt-get update && apt-get install -y --no-install-recommends \
    sudo \
    libcurl4-gnutls-dev \
    libcairo2-dev \
    libxt-dev \
    libssl-dev \
    libxml2-dev \
    libpoppler-cpp-dev \
    openjdk-17-jdk \
    && rm -rf /var/lib/apt/lists/*

RUN R -e "options(warn = 2); install.packages('pdftools')"
RUN R -e "options(warn = 2); install.packages('rJava')"
RUN R -e "options(warn = 2); install.packages('RCurl')"
RUN R -e "options(warn = 2); install.packages('tidyverse')"
RUN R -e "options(warn = 2); install.packages('remotes')"
RUN R -e "options(warn = 2); install.packages('DBI')"
RUN R -e "options(warn = 2); install.packages('data.table')"
RUN R -e "options(warn = 2); install.packages('elastic')"
RUN R -e "options(warn = 2); install.packages('fst')"
RUN R -e "options(warn = 2); install.packages('fuzzyjoin')"
RUN R -e "options(warn = 2); install.packages('glue')"
RUN R -e "options(warn = 2); install.packages('httr')"
RUN R -e "options(warn = 2); install.packages('janitor')"
RUN R -e "options(warn = 2); install.packages('jsonlite')"
RUN R -e "options(warn = 2); install.packages('lubridate')"
RUN R -e "options(warn = 2); install.packages('rvest')"
RUN R -e "options(warn = 2); install.packages('tabulizer')"
RUN R -e "options(warn = 2); install.packages('textrecipes')"
RUN R -e "options(warn = 2); install.packages('tictoc')"
RUN R -e "options(warn = 2); install.packages('tidymodels')"
RUN R -e "options(warn = 2); install.packages('xgboost')"
RUN R -e "options(warn = 2); install.packages('xlsx')"
RUN R -e "options(warn = 2); install.packages('xml2')"
