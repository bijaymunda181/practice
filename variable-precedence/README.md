Variable precedence determines which value Terraform uses when the same variable is defined in multiple places. The default value has the lowest priority, while values supplied using -var or -var-file have the highest priority.
```
                 HIGH PRIORITY
                       ↑
                  -var
                       ↑
                -var-file
                       ↑
                 *.auto.tfvars
                       ↑
                terraform.tfvars
                       ↑
                  TF_VAR_*
                       ↑
                   default
                       ↓
                 LOW PRIORITY
```