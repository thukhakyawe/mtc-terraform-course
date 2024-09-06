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

<span style="color: green;">For Show Terraform State Legacy option for the local backend only</span>

```
terraform console -state=path
```
Example Code 

```
@thukhakyawe ➜ /workspaces/mtc-terraform-course/terraform-code (main) $ terraform console -state="../state/terraform.tfstate"
> random_id.random
{
  "b64_std" = "PPI="
  "b64_url" = "PPI"
  "byte_length" = 2
  "dec" = "15602"
  "hex" = "3cf2"
  "id" = "PPI"
  "keepers" = tomap(null) /* of string */
  "prefix" = tostring(null)
}
> random_id.random.dec
"15602"
> "mtc-repo"
"mtc-repo"
> "mtc-repo-${random_id.random.dec}"
"mtc-repo-15602"
> "mtc-repo-${random_id.random.id}"
"mtc-repo-PPI"
> "mtc-repo-${random_id.random.hex}"
"mtc-repo-3cf2
```

<span style="color: green;">For Show Terraform Output Results</span>

```
terraform output
```

![alt text](image.png)

<span style="color: green;">For Show Terraform Output With Output Name</span>

```
terraform output -json repo-names
```
![alt text](image-1.png)

<span style="color: green;">For Show Terraform Output With Json Format</span>

```
terraform output -json
```


![alt text](image-2.png)