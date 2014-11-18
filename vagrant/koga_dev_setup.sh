sudo apt-get -y update 
sudo apt-get -y  install build-essential libncurses5-dev openssl libssl-dev fop xsltproc unixodbc-dev curl 

curl -o otp_src_17.3.tar.gz http://www.erlang.org/download/otp_src_17.3.tar.gz && tar xf otp_src_17.3.tar.gz && cd otp_src_17.3 && ./configure && make && sudo make install && sudo rm -rf otp_src_17.3.tar.gz 


