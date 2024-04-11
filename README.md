# AppCenter GitHub Action
## Table of Contents

- [Installation](#installation)
  - [Docker](#docker)
  - [GitHub Actions](#github-action)

This library is transparent CLI wrapper for official Node AppCenter library
### [Docker](https://github.com/Vacxe/appcenter/pkgs/container/appcenter)

```
ghcr.io/vacxe/appcenter:<VERSION>
```

### [GitHub Action](https://github.com/marketplace/actions/appcenter)

[GitHub Action](https://github.com/marketplace/actions/appcenter-ms) `vacxe/appcenter` is transparent wrapper over [Docker](https://github.com/Vacxe/appcenter/pkgs/container/appcenter) `appcenter`, what contains transparent CLI warapper for AppCenter Node library. It can provide for you possibility to write any custom scripts in depends on you needs.

*Example of file distribution template:*
```yaml
- uses: vacxe/appcenter@master
  with:
    template: distribute-release
    token: ${{ secrets.TOKEN }}
    app: "my-app-name"
    group: "tester-group"
```

## License

-------

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
