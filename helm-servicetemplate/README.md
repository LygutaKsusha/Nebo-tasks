# helm-servicetemplate
Helm Service Template - tested on Python and Go apps but should work pretty much with anything.

# Usage

## Package the helm chart
`helm package ./service_template` and commit the new version into your remote chart repo. 

## Releases

Install a new release or upgrade:

```
helm install <release_name> <repo url> -f <path to values file>

helm upgrade <release name> <repo url> -f <path to values file>
```

You can also let helm detect if release already exists otherwise install it with 

```
helm upgrade --install <release name> ...
```
