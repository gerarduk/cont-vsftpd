# VSFTPD podman Container

## Installation

- Clone the files.
- Run *build* to create the container image
- Run *runftp* to start the container

*build* creates an image named vsftpd.  Each time you run build, the existing vsftpd image is removed before creating the new image.  You will need access to sudo to build and run the container.  The image will be built as root so when you list your images, list them as root (use sudo podman images)

*runftp* creates a directory (rootdir) used to hold the run time files used by the container. It will contain the vsftpd.conf vsftpd.log and the ftp-root directory.


