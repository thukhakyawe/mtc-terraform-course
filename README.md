# mtc-terraform-course
More Than Certified Terraform

Commands List

<span style="color: green;">For Github Token Remove and Access</span>

```
unset GITHUB_TOKEN && gh auth login -h github.com -p https -s delete_repo -w
```

<span style="color: green;">For Terraform File Format</span>

```
terraform fmt
```

<span style="color: green;">For Download Terraform Configuration Files</span>

```
terraform init
```

<span style="color: green;">For Deploy Terraform Configuration</span>

```
terraform apply
```

<span style="color: green;">For Deploy Terraform Configuration Without Confirmation</span>

```

terraform apply -auto-approve  
```

<span style="color: green;">For Show Terraform Configuration Details</span>

```
terraform show
```

<span style="color: green;">For Show Terraform Configuration Details as Json Format</span>

```
terraform show -json | jq
```

<span style="color: green;">For Destroy Terraform Configuration</span>

```
terraform destroy
```

<span style="color: green;">For Destroy Terraform Configuration without confirmation</span>

```
terraform destroy -auto-approve
```

<span style="color: green;">For Show Terraform State Files Without Any Other Information</span>

```
terraform state list
```