FROM alpine:latest

# Install vsftpd
RUN apk add --no-cache vsftpd

# Create FTP user and set up directory
RUN adduser -D ftpuser && \
    echo "ftpuser:password" | chpasswd && \
    mkdir /home/ftpuser/ftp

# Copy the vsftpd configuration file
COPY vsftpd.conf /etc/vsftpd/vsftpd.conf

# Expose FTP ports
EXPOSE 21 30000-30010

# Start vsftpd
CMD ["/usr/sbin/vsftpd", "/etc/vsftpd/vsftpd.conf"]
