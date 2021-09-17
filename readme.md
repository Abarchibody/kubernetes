# Authentication

To pull a private image, you need to authenticate with the registry.

    kubectl create secret docker-registry regcred --docker-server=826609325644.dkr.ecr.eu-west-1.amazonaws.com --docker-username=AWS --docker-password=$(aws ecr get-login-password)

Where:

- `AWS` is your AWS account name
- `regcred` is the name of the secret

```yaml
# To add to the deployment configuration
spec:
  containers:
    - image: image-name
      imagePullPolicy: Always
      ports:
        - containerPort: 80
  imagePullSecrets:
    - name: regcred
```

- `826609325644.dkr.ecr.eu-west-1.amazonaws.com` is the ECR registry

The command `aws ecr get-login-password` will return the password for the AWS account.

> Be sure to configure your aws cli first.
