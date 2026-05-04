# devsecops-pipeline

DevSecOps CI/CD pipeline with SAST/DAST, SonarQube quality gates,
OPA policy-as-code, and zero-trust IAM enforcement.
Built from real security automation patterns used at enterprise scale.

## What this solves
- Security scanning built directly into every pipeline run
- OPA policy-as-code preventing insecure deployments
- Container vulnerability scanning before production
- Zero-trust IAM enforcement across all environments
- Quality gates that block bad code from reaching production

## Pipeline Stages

| Stage | Tool | What it checks |
|---|---|---|
| SAST Scan | SonarQube | Source code vulnerabilities |
| OPA Policy Check | OPA + Rego | Infrastructure policy compliance |
| Container Scan | Trivy | Docker image vulnerabilities |
| Deploy | ArgoCD | Only runs if all gates pass |

## Structure

| Folder | What is inside |
|---|---|
| `.github/workflows/` | GitHub Actions pipeline definition |
| `policies/` | OPA Rego policy files |

## Prerequisites
- GitHub Actions enabled
- SonarQube instance running
- Docker installed

## Related resume projects
- Project ShieldPath — DevSecOps enforcement platform at Southwest Airlines
- Project IronWatch — zero-trust security and observability platform
- Project Sentinel — zero-trust security enforcement at Cognizant
