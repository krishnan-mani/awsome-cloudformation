
### Story-1
As an account owner,
I want to create an IAM group with privileges to administer the account,
To ensure administrative operations on the account are performed only by users in such group.

Templates:
* [create-admin-group]

### Story-2
As an account owner,
I want to create user(s) in the group with administrative privileges,
To ensure any further operations on the account are no longer performed using account owner credentials.

### Story-3
As an administrator,
I want to setup a secure IAM password policy,
To ensure any passwords used to access the AWS Management Console are not vulnerable.

### Story-4
As an administrator,
I want to generate the access credentials needed to act on the AWS account for the user,
To ensure authentication and authorization are in place to perform administrative actions.

Templates:
* [iam-password-policy]
* [create-admin-user]

### Story-5
As an administrator, 
I want to create a version control repository (or repositories),
To use source control for automation and other resources, that will be used to maintain the environments.

### Story-6
As a contributor,
I want to obtain access to the version control repositories,
To collaborate via source artifacts published to the repository.

Templates:
* [collaborate-on-repositories]

### Story-7
As an administrator,
I want to setup Continuous Integration (using Jenkins)
To ensure changes are executed in a controlled fashion.

Templates:
* [jenkins-instance-profile]
* [jenkins]

### Story-8
As collaborators,
We want to deliver changes in a controlled fashion to resources on the AWS account,
So we can multiply our efforts!
  - setup DNS domains, so DNS names can be setup.
  - setup application environment(s), to deploy applications.

Templates:
* [public-dns]
* [dns-names]
* [app-01]
* [app-01-environments]

### Story-9 

As an administrator,
I want to create certain resources in a production-like environment, 
To deliver services to our customers.
  
END-OF-FILE
