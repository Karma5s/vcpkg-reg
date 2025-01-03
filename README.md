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


Steps to update ports:
1. commit changes for ports
2. git rev-parse HEAD:ports/<name>
3. copy hash and update git-tree hash inside versions/<name>.json
4. git add versions
5. git commit --amend
6. push
7. copy latest commit hash and update vcpkg-configuration.json baseline with hash

* portfile.cmake
See reference
- https://github.com/microsoft/vcpkg-docs/blob/vcpkg-registry/ports/beicode/portfile.cmake
- https://learn.microsoft.com/en-us/vcpkg/maintainers/functions/vcpkg_from_git
```

### Useful Links
- https://learn.microsoft.com/en-us/vcpkg/maintainers/functions/vcpkg_from_git
- See: https://learn.microsoft.com/en-us/vcpkg/maintainers/registries
- Example vcpkg-registry: https://github.com/vcpkg/example-filesystem-registry