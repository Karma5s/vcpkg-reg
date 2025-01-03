```
// Update git-tree with each new version
git rev-parse HEAD:ports/kitten

** Warning **
A baseline must not be modified once published.
If you want to change or update versions,
you need to create a new baseline in the baseline.json file.
{
  "2021-04-16": {
    "kitten": {
      "baseline": "2.6.2",
      "port-version": 0
    },
    "port-b": {
      "baseline": "19.00",
      "port-version": 2
    }
  },
  "2021-04-15": {
    "kitten": {
      "baseline": "2.6.2",
      "port-version": 0
    },
    "port-b": {
      "baseline": "19.00",
      "port-version": 1
    }
  }
}
See: https://learn.microsoft.com/en-us/vcpkg/maintainers/registries
Example vcpkg-registry: https://github.com/vcpkg/example-filesystem-registry
```