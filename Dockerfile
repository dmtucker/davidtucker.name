FROM httpd:2.4-trixie
RUN apt update && apt install --assume-yes gnupg
RUN gpg --keyserver keyserver.ubuntu.com --recv-keys A3E0EF6CECB33C342AA6EC7C5508153A6E7FC5FB
WORKDIR /usr/local/apache2/htdocs
COPY . .
RUN gpg --verify index.html.asc index.html
