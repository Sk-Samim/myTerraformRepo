# # This data source will read the content of the local file named demo.txt
# # Here the "path.module" is used to automatically fetch the absolute path info for "/demo.txt"
# data "local_file" "readLocalFile" {
#   filename = "${path.module}/demo.txt"
# }

# # This will who the content of the text file in CLI
# output "data" {
#   value = data.local_file.readLocalFile.content
# }