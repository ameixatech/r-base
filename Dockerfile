FROM r-base:4.2.1

RUN apt-get update && apt-get install -y --no-install-recommends \
    sudo \
    libcurl4-gnutls-dev \
    libcairo2-dev \
    libxt-dev \
    libssl-dev \
    libxml2-dev\
    && rm -rf /var/lib/apt/lists/*

RUN R -e "install.packages('RCurl')"
RUN R -e "install.packages('remotes')"
RUN R -e "install.packages('DBI')"
RUN R -e "install.packages('data.table')"
RUN R -e "install.packages('doParallel')"
RUN R -e "install.packages('dplyr')"
RUN R -e "install.packages('elastic')"
RUN R -e "install.packages('fst')"
RUN R -e "install.packages('furrr')"
RUN R -e "install.packages('fuzzyjoin')"
RUN R -e "install.packages('glue')"
RUN R -e "install.packages('httr')"
RUN R -e "install.packages('janitor')"
RUN R -e "install.packages('jsonlite')"
RUN R -e "install.packages('lubridate')"
RUN R -e "install.packages('pdftools')"
RUN R -e "install.packages('rJava')"
RUN R -e "install.packages('rvest')"
RUN R -e "install.packages('stringr')"
RUN R -e "install.packages('tabulizer')"
RUN R -e "install.packages('textrecipes')"
RUN R -e "install.packages('tictoc')"
RUN R -e "install.packages('tidymodels')"
RUN R -e "install.packages('tidyverse')"
RUN R -e "install.packages('xgboost')"
RUN R -e "install.packages('xlsx')"
RUN R -e "install.packages('xml2')"
