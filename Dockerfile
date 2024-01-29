FROM clojure:temurin-21-tools-deps-jammy

# Update apt package list
RUN apt-get update

# Install unzip
RUN apt-get install -y unzip

# Install bun/bunx
RUN curl -fsSL https://bun.sh/install | bash
RUN mv ~/.bun/bin/bun /usr/local/bin/bun
RUN ln -s /usr/local/bin/bun /usr/local/bin/bunx
RUN chmod +x /usr/local/bin/bunx

# Install Babashka
RUN curl -fsSL https://raw.githubusercontent.com/babashka/babashka/master/install | bash
