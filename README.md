# BGLDevopsRubyK
### Exercise 1: 
'awk' used to read the columns with comman separataion -F,  and a variable is passed using -v

```bash
curl -s $CSV_URL | awk -F, -v cutoff="$cutoff_timestamp" 
```

###How to run

```bash
sh ec2instanceid.sh

```

### Exercise 2: Flattening a List and Converting it to a Set for Unique Values

```hcl
groups_lists = [for user in local.users : user.groups]
flat_groups  = flatten(local.groups_lists)
groups = toset(local.flat_groups)
```

###How to run

```bash
terraform init
terraform plan
terraform apply

terraform destroy

```

### Exercise 3: Run Nginx in Foreground   : using "daemon off"

```bash
CMD echo "starting nginx" && nginx -g 'daemon off;'
```



### Exercise 4: Approach #3 – Wget** from github site.

Approach # 3 – Wget
Wget https is another approach that helps to download a single file from a GitHub repository. Like a single file download using a URL, Wget is only applicable to download a file from a public repository. 

This method assumes that you need to write a wget command before the URL of the needed file. Moreover, you need to use -L flag to instruct wget to download only the file you want to retrieve. So, the command will look like this:

```bash
wget -L https://raw.githubusercontent.com/[user_name]/[repository_name]/[branch]/[file]
```

