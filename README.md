# EC2 Bind Secondary

A simple Bash script to bind a secondary IP address to the primary interface on an EC2 instance, fetching the information about the IP address from the EC2 metadata service.

This is designed to work with community Ubuntu LTS AMIs as documented [here](https://cloud-images.ubuntu.com/locator/ec2/).

Todo:
 * Support for multiple additional IPs
 * Support for multiple interfaces

## Usage

```
$ curl https://raw.githubusercontent.com/msh100/ec2-secondary-ip/master/ec2-bind-secondary.sh | sudo sh
```