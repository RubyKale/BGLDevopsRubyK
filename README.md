# BGLDevopsRubyK
### Exercise 1: 
   'awk' used to read the columns with comma separataion -F,  and a variable is passed using -v

   ```bash
   curl -s $CSV_URL | awk -F, -v cutoff="$cutoff_timestamp" 
   ```
   
   ### How to run
   
   ```bash
   sh ec2instanceid.sh
   
   ```

### Exercise 2: Flattening a Nested List and Converting it to a Set for Unique Values

   ```hcl
   groups_lists = [for user in local.users : user.groups]
   flat_groups  = flatten(local.groups_lists)
   groups = toset(local.flat_groups)
   ```
   
   ### How to run
   
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
   
   ### How to run
   Check the container name using "docker ps" cmd.
   ```bash
   docker build -t my-nginx-image .
   docker ps
   docker run -d -p 8080:80 --name my-nginx-container my-nginx-image
   ```
   ### Access the application at http://localhost:8080.

### Exercise 4: Approach #3 – Wget** from github site.

   Approach 3 – Wget
   Wget https is another approach that helps to download a single file from a GitHub repository. Like a single file download using a URL, Wget is only applicable to download a file from a public repository. 
   
   This method assumes that you need to write a wget command before the URL of the needed file. Moreover, you need to use -L flag to instruct wget to download only the file you want to retrieve. So, the command will look like this:
   
   ```bash
   wget -L https://raw.githubusercontent.com/[user_name]/[repository_name]/[branch]/[file]
   ```
 ### How to run 

   ```bash 
  kubectl apply -f initPod.yml
  kubectl logs myapp-pod
  kubectl get pods -o wide 
  ```

###Glosory

https://stackoverflow.com/questions/18861300/how-to-run-nginx-within-a-docker-container-without-halting

https://developer.hashicorp.com/terraform/language/functions/toset

https://developer.hashicorp.com/terraform/language/functions/flatten

https://www.theunixschool.com/2012/06/awk-10-examples-to-group-data-in-csv-or.html

https://stackoverflow.com/questions/58627542/remove-quotes-from-all-columns-with-awk

https://stackoverflow.com/questions/4604663/download-single-files-from-github


  
