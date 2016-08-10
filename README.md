# EC2 Bind Secondary

A simple Bash script to bind a secondary IP address to the primary interface on an EC2 instance, fetching the information about the IP address from the EC2 metadata service.

Todo:
 * Support for multiple additional IPs
 * Support for multiple interfaces

## Usage

```
$ sudo ./ec2-bind-secondary.sh
```