# Test custom provider terraform

This custom provider can be used with Terraform to manage "example_server" resources, generating UUIDs based on user input.

## main.go

"main.go" is the entry point for the custom Terraform provider. It imports the necessary Terraform plugin SDK libraries and sets up the provider for use.

* The main function initializes the Terraform plugin server.
* It configures the provider by defining a function that returns the custom provider, which is implemented in provider.go.

## provider.go

"provider.go" defines the custom Terraform provider and specifies the resources it manages. In this case, it manages a single resource called "example_server."

* The Provider function creates and returns an instance of the custom provider.
* The provider's ResourcesMap associates the name "example_server" with the resource definition provided by resourceServer() defined in resource_server.go.

## resource_server.go

"resource_server.go" defines the behavior and schema of the "example_server" resource.

* The resourceServer function defines the schema and behavior of the "example_server" resource.
* It specifies the CRUD operations (Create, Read, Update, Delete) and their corresponding functions.
* The resource has a single attribute, "uuid_count," which is of type schema.TypeString and is marked as required.
* resourceServerCreate is responsible for creating the resource and generating UUIDs based on the specified count.
* resourceServerRead is a placeholder function for reading and syncing resource state.
* resourceServerUpdate is a placeholder function for handling updates to the resource.
* resourceServerDelete marks the resource as deleted by setting its ID to empty.

## Remarks

For runing the cod you will use this commands in terminal:

* go mod init --> creating a module --> obs if you run in another directory than the one where go is installed you have to name the module
* go fmt
* go mod tidy
* go build -o terraform-provider-example --> if you run on windows you need to use extension .exe from the file

After, you will create the directory where you save the porvider and copy the file in the directory