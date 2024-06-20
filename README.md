# Ber Mission Control

## High level goals
Ber is a framework for infrastructure development and deployment.

## Goals
 - DRY code
   - Config inheritance
   - Env specific overrides
   - Fast environment cloning
 - Generate terraform module calls, k8s manifests, kubeconfig, atlantis config, etc.
 - Transparently expose inputs and outputs for __any__ component (eg.: terraform module vars and outputs)
 - Secret management
 - CI/CD integration
 - Pre/Post Hooks
 - Deployment contracts

## System components
### Component
The atomic unit of the systems are __Components__, these are terraform modules, helm charts, or applications (web, cronjob, job).

### Stack
__Stacks__ are a collection of componenets defining a deployment. Supported types will be:
- aws
- gcp
- azure
- k8s


## CLI commands:

Create new stack:
```
ber stack create --name dev-euw1 --type aws
```

List available stacks:
```
ber stack list
```

Switch stack context
```
ber stack select dev-euw1
```

Create new component
```
ber component create --name my_first_vpc --source berbyte/vpc
```

Add componenet to stack
```
ber stack attach-component --name my_first_vpc
ber stack attach-component --name my_first_vpc --stack dev-euw1
```

Validator
```
ber validate
```

