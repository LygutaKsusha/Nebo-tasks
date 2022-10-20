# Nebo-tasks

Public zone:

Pre-requisites:

- Existing public Route53 zone (example.com).
- EC2 instance in public subnet with Nginx with default settings.
- S3 bucket configured to host static website.
- IaaC tool must be used for infrastructure creation. (Terraform, CloudFormation, etc.)

Create and configure public sub-zone (sub.example.com)
In sub zone:
- Create a record www.sub.example.com to redirect traffic to sub.example.com
- Create TXT record sub.example.com with value “Sample text entry”
- Create A record ec2.sub.example.com to the public IP of EC2 instance with TTL 300.
- Create A record s3.sub.example.com to a static content hosted on s3.
- Create a health check for ec2.sub.example.com.
- Crate failover record site.sub.example.com with ec2.sub.example.com as a primary record and s3.sub.example.com as a failover target. Make sure health check for ec2.sub.example.com is used.

CDN:

Pre-requisites:

- Existing public Route53 zone (example.com).
- Two Amazon S3 buckets configured to host a website with a sample websites.
- ACM certificate for your domain
- IaaC tool must be used for infrastructure creation. (Terraform, CloudFormation, etc.)

- Create Origin access identity to allow access to S3 buckets
- Create an Amazon CloudFront distribution:
- Use OAI.
- Redirect HTTP to HTTPS.
- Use custom alias record with ACM certificate.
- Add custom behavior to route /two/* requests to second s3 bucket.
- Configure custom error page to redirect to index.html for 404 status codes.
