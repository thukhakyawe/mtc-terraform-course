# mtc-terraform-course
More Than Certified Terraform

Commands List

Explanation:

docker_image.nodered_image.image_id: which is the ID of the pulled Docker image.

network_data[0].ip_address: This accesses the first network interface data of the container and retrieves its IP address.

## To show sensitive output of instances

```
terraform output -json | jq '."instances"."value"'
```
![alt text](image-1.png)

![alt text](image.png)