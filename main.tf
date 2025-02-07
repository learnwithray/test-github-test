provider "google" {
  project = "your-gcp-project-id"
  region  = "us-central1"
}


module "cloud-run" {
  source  = "GoogleCloudPlatform/cloud-run/google"
  version = "0.16.2"
  name       = "your-service-name"
  image      = "gcr.io/your-gcp-project-id/your-image-name"
  region     = "us-central1"
  max_scaling = 10  # Example parameter, adjust as needed

  # Add any additional parameters required by your Cloud Run module
}

output "service_url" {
  value = module.cloud_run_service.url
}
