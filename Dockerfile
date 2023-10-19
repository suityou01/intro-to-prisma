FROM mcr.microsoft.com/mssql/server:2019-latest
USER root
RUN apt update && apt install -y curl sudo
RUN curl https://packages.microsoft.com/keys/microsoft.asc | sudo tee /etc/apt/trusted.gpg.d/microsoft.asc
RUN curl https://packages.microsoft.com/config/ubuntu/20.04/prod.list > /etc/apt/sources.list.d/mssql-release.list
RUN apt update && ACCEPT_EULA=Y apt install -y mssql-tools18
RUN echo 'export PATH="$PATH:/opt/mssql-tools18/bin"' >> ~/.bash_profile
RUN echo 'export PATH="$PATH:/opt/mssql-tools18/bin"' >> ~/.bashrc
ENV ACCEPT_EULA=Y
ENV SA_PASSWORD=pa55w0rd!
EXPOSE 1434:1433
VOLUME ["mssql:/var/opt/mssql"]
