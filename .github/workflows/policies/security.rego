package security

# Deny if container runs as root
deny[msg] {
  input.spec.containers[_].securityContext.runAsUser == 0
  msg := "Containers must not run as root"
}

# Deny if no resource limits set
deny[msg] {
  container := input.spec.containers[_]
  not container.resources.limits
  msg := sprintf("Container %v must have resource limits", [container.name])
}

# Deny if privileged mode enabled
deny[msg] {
  input.spec.containers[_].securityContext.privileged == true
  msg := "Containers must not run in privileged mode"
}

# Allow only if no deny rules triggered
allow {
  count(deny) == 0
}
