# BGLDevopsRubyK

**Exercise 4**
Approach # 3 – Wget
Wget https is another approach that helps to download a single file from a GitHub repository. Like a single file download using a URL, Wget is only applicable to download a file from a public repository. 

This method assumes that you need to write a wget command before the URL of the needed file. Moreover, you need to use -L flag to instruct wget to download only the file you want to retrieve. So, the command will look like this:

w-get -L https://raw.github.com/[user name]/[repositorty name]/ [branch]/[file].
