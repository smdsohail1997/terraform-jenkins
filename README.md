1. Install Jenkins on t2 large
2. Install terraform in the jenkins server
3. Create the USER in aws and provide the full access
4. Get the access_key and secret_key from the USER
5. Manage Jenkins  ----> Manage Credentials ---> Global credentials (unrestricted)---> Add Credentials -->SecretText
in the above add the access_key and secret_key , create seperately for both 
