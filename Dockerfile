FROM swift:5.6

# Install CURL
RUN apt update && \
    apt -y upgrade && \
    apt -y install sudo curl clang libicu-dev libcurl4-openssl-dev libpython2.7 && \
    rm -rf /var/lib/apt/lists/*;

# Get Vapor repo including Swift
RUN git clone https://github.com/vapor/toolbox.git

WORKDIR toolbox

RUN git checkout 18.3.6 && \
    make install && \
    cd .. && \
    rm -r toolbox && \
    mkdir /vapor

WORKDIR /vapor

RUN ["vapor", "--help"]

