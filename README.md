# platform-gitops

Desired state of application workloads. Application teams propose changes here by pull request;
the platform team owns `charts/`.

| Folder | What lives here |
|---|---|
| `charts/app/` | The platform's golden Helm chart (secure defaults baked in) |
| `services/<name>/` | `values.yaml` + `values-dev.yaml` + `values-prod.yaml`. Nothing else. |
| `scratch/` | Hand-written manifests from the early chapters. Not part of the contract. |

Repository: https://github.com/__GH_USER__/platform-gitops
