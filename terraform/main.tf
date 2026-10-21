terraform {
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.30"
    }
  }
}

provider "kubernetes" {
  config_path    = "~/.kube/config"
  config_context = "minikube"
}

variable "replicas" {
  type    = number
  default = 3
}

resource "kubernetes_deployment_v1" "api" {
  metadata {
    name = "practice-api-tf"
  }
  spec {
    replicas = var.replicas
    selector {
      match_labels = { app = "practice-api-tf" }
    }
    template {
      metadata {
        labels = { app = "practice-api-tf" }
      }
      spec {
        container {
          name              = "practice-api"
          image             = "practice-api:1.0"
          image_pull_policy = "Never"
          port {
            container_port = 8000
          }
          readiness_probe {
            http_get {
              path = "/health"
              port = 8000
            }
            initial_delay_seconds = 3
            period_seconds        = 5
          }
        }
      }
    }
  }
}

resource "kubernetes_service_v1" "api" {
  metadata {
    name = "practice-api-tf"
  }
  spec {
    type     = "NodePort"
    selector = { app = "practice-api-tf" }
    port {
      port        = 80
      target_port = 8000
    }
  }
}
