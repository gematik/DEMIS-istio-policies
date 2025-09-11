<img align="right" width="250" height="47" src="media/Gematik_Logo_Flag.png"/> <br/>

# Istio-Policies

<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
	</li>
    <li>
      <a href="#getting-started">Getting Started</a>
    </li>
    <li><a href="#security-policy">Security Policy</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
  </ol>
</details>

## About The Project

Helm Chart defining the Istio policies for authorization & request authentications to services in a DEMIS cluster.

The Helm Chart supports the definition of authorization & request authentications and creates the following Kubernetes
resources:

- An `AuthorizationPolicy` object that allows a request to the specificied service only if it matches the rules. Default is no allowed communication between the services (whitelisting), which you can see at the [Allow Nothing Rule](deployment\helm\policies-authorizations-istio\templates\common\namespace-allow-nothing.yaml).
- A `RequestAuthentication` defines the request authentication methods supported by a workload. It will reject a request
  if it contains invalid authentication information based on the configured authentication rules.

### Release Notes

See [ReleaseNotes](ReleaseNotes.md) for all information regarding the (newest) releases.

## Getting Started

### Required Tools

If you want to use this chart directly from sources (for development purposese), you need the following tools:

* git
* helm (3.11+)

### Working with Helm

You can inspect the Helm Chart by issuing the command `helm template` as follows:

```sh
helm template authorization-policies ./deployment/helm/policies-authentications-istio
helm template request-authentications ./deployment/helm/policies-authorizations-istio

```

It will print out the Helm Chart with the default values.

### Using the Chart

It can also be deployed on Kubernetes by using the Helm Chart defined in the folder ./deployment/helm/:

```sh
helm upgrade --install authorization-policies ./deployment/helm/policies-authorization-istio
helm upgrade --install request-authentications ./deployment/helm/policies-authentications-istio
```

To test the changes against the local cluster the following commands can be used:

```sh
helm upgrade --install authentication-policies ./deployment/helm/policies-authentications-istio --namespace=demis
helm upgrade --install authorization-policies ./deployment/helm/policies-authorization-istio --namespace=demis
```

## Security Policy

If you want to see the security policy, please check our [SECURITY.md](.github/SECURITY.md).

## Contributing

If you want to contribute, please check our [CONTRIBUTING.md](.github/CONTRIBUTING.md).

## License

Copyright 2024-2025 gematik GmbH

EUROPEAN UNION PUBLIC LICENCE v. 1.2

EUPL © the European Union 2007, 2016

See the [LICENSE](./LICENSE.md) for the specific language governing permissions and limitations under the License

## Additional Notes and Disclaimer from gematik GmbH

1. Copyright notice: Each published work result is accompanied by an explicit statement of the license conditions for use. These are regularly typical conditions in connection with open source or free software. Programs described/provided/linked here are free software, unless otherwise stated.
2. Permission notice: Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
    1. The copyright notice (Item 1) and the permission notice (Item 2) shall be included in all copies or substantial portions of the Software.
    2. The software is provided "as is" without warranty of any kind, either express or implied, including, but not limited to, the warranties of fitness for a particular purpose, merchantability, and/or non-infringement. The authors or copyright holders shall not be liable in any manner whatsoever for any damages or other claims arising from, out of or in connection with the software or the use or other dealings with the software, whether in an action of contract, tort, or otherwise.
    3. We take open source license compliance very seriously. We are always striving to achieve compliance at all times and to improve our processes. If you find any issues or have any suggestions or comments, or if you see any other ways in which we can improve, please reach out to: ospo@gematik.de
3. Please note: Parts of this code may have been generated using AI-supported technology. Please take this into account, especially when troubleshooting, for security analyses and possible adjustments.

## Contact

E-Mail to [DEMIS Entwicklung](mailto:demis-entwicklung@gematik.de?subject=[GitHub]%20Istio-Policies)
