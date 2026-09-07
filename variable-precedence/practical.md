## Step 1 — Create vars.tf
```
variable "instance_type" {
  default = "t3.micro"
}  
```
This is the lowest-priority value.

## Step 2 — Create terraform.tfvars
```
instance_type = "t3.small" 
```
Now we have two values:

```
vars.tf          → t3.micro
terraform.tfvars → t3.small
```
Terraform will use:

```t3.small```

because ```terraform.tfvars``` has higher precedence than ```default```.

## Step 3 — Set an environment variable

Run:

```export TF_VAR_instance_type="t3.medium"```

Now we have:

```
default              → t3.micro
environment variable → t3.medium
terr`aform.tfvars     → t3.small
```

Terraform uses:

```t3.small```

because ```terraform.tfvars``` has higher precedence.

## Step 4 — Create prod.tfvars

Create:

```instance_type = "t3.large"```

Then run:

```terraform plan -var-file=prod.tfvars```

Now:

```
default              → t3.micro
TF_VAR_               → t3.medium
terraform.tfvars      → t3.small
prod.tfvars           → t3.large
```

Terraform uses:

```t3.large```

because ```-var-file``` has higher precedence.

## Step 5 — Highest priority

Now run:

```terraform plan -var-file=prod.tfvars -var="instance_type=t3.xlarge"```

Now Terraform sees:
```
default              → t3.micro
TF_VAR_               → t3.medium
terraform.tfvars      → t3.small
prod.tfvars           → t3.large
-var                   → t3.xlarge
Final value:
t3.xlarge
```

Because ```-var``` has the highest precedence.