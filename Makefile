cfn-create-or-update:
	# Used to allow idempotent CFN creation/update
	npm install cfn-create-or-update

deploy: cfn-create-or-update
	#aws cloudformation create-stack  # switched to cfn-create-or-update to allow idempotent
	npx cfn-create-or-update \
		--profile saml \
		--region ap-southeast-2 \
		--stack-name test-tf-codebuild \
		--template-body file://cfn/pipeline.yml \
		--parameters \
			ParameterKey=GithubOauthToken,ParameterValue=XXX_CHANGE_THIS_XXX \
			ParameterKey=GithubRepoOwner,ParameterValue=rdkls \
			ParameterKey=GithubRepoName,ParameterValue=terraform-codebuild-demo \
			ParameterKey=GithubRepoBranch,ParameterValue=master \
		--capabilities CAPABILITY_IAM

destroy:
	aws cloudformation delete-stack \
		--profile saml \
		--stack-name test-tf-codebuild \
		--region ap-southeast-2
	aws s3 rb --profile saml s3://npd-test-tf-created-no2
	aws s3 rb --profile saml s3://npd-test-tf-created-no3
