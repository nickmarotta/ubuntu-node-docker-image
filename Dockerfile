FROM ubuntu
RUN apt-get update -yq \
    && apt-get install curl gnupg -yq \
    && curl -sL https://deb.nodesource.com/setup_12.x | bash \
    && apt-get install nodejs -yq \
    && apt-get install make -yq \
    && apt-get install gcc -yq \
    && apt-get install g++ -yq

# Build and tag image as latest 
# docker build -t nickmarotta/ubuntu-node:latest . 

# Login to my repositories if needed
# docker login --username=nickmarotta

# Push to repository 
# docker push nickmarotta/ubuntu-node

# Discord js requires make, gcc and g++ - 
# could probably install them only on bonnie but I figured this might speed up bonnie build times
# https://stackoverflow.com/questions/14772508/npm-failed-to-install-time-with-make-not-found-error