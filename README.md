# Overview

This [custom resource](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-custom-resources.html) for an [AWS CloudFormation](https://aws.amazon.com/cloudformation/) template allows you to attach an [Amazon Elastic Inference](https://aws.amazon.com/machine-learning/elastic-inference/) accelerator to an Amazon EC2 Auto Scaling [Launch Template](https://docs.aws.amazon.com/autoscaling/ec2/userguide/LaunchTemplates.html). This is a temporary solution until the [AWS::EC2::LaunchTemplate](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-launchtemplate.html) resource type supports this functionality.

The custom resource Lambda function creates a new Launch Template version for the entry defined the CloudFormation template (with the additional Elastic Inference configuration), and then updates the default version for the Launch Template.


