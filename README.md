# Terraform with CodePipeline

Are you tired of running Jenkins?

Do you want git-driven infra?

The welcome friend, to the World of Tomorrow

# Usage

Recommended to fork this repo for yourself, point the CodePipeline to that, so
you have control over it!

`make deploy` will deploy basic CodePipeline

CodePipeline consists of 
- one GitHub source repo (by default, [rdkls/terraform-codebuild-demo](https://github.com/rdkls/terraform-codebuild-demo))
- one CodeBuild step running `terraform apply tf` (i.e. will run with templates
    in the 'tf' directory)


# References

https://ruempler.eu/2017/02/26/continuous-infrastructure-delivery-pipeline-aws-codepipeline-codebuild-terraform/
