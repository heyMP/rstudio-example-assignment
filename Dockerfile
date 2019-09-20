FROM rocker/tidyverse

# Install Packages
RUN R -e "install.packages('mosaic')"

# Rstudio
WORKDIR /home/rstudio

# Copy Files
COPY . .