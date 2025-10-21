<img align="right" width="200" height="37" src="media/Gematik_Logo_Flag.png"/> <br/> 
 
# Release notes Istio-Policies

## 2.6.0
- add new policies for package-registry

## 2.5.0
- add new policies for destination-lookup-service
- add information to contributing and readme
- update internal publish pipelines
- preparations for publishing source code on github
- allow surveillance-pseudo-purger to pgbouncer

## 2.4.0
- allow routing service to call futs
- adding principal based policies for pgbouncer and postgres to get rid of the ip based ones
- add support for new api endpoints
- allow surveillance-pseudo-service to pgbouncer
- add policy for service-demo in ekm-template

## 2.3.1
- remove conceptmap access on futs-core for ingress

## 2.3.0
- Added option to allow external access from ingress to all validation services
- Added internal authorization policy for DEMIS FHIR Terminology Server
- Remove NCAPI policies

## 2.2.0
- Added new roles for §7.3/§7.4 Notifications
- Removed old HAPI-FHIR Authorization Policy
- Renamed Endpoints for ingress access to notification gateway
    - from **/api/ng/pathogen/7_1** to **/api/ng/pathogen/7.1**
    - from **/api/ng/pathogen/7_3/non_nominal** to **/api/ng/pathogen/7.3/non_nominal**
    - from **/api/ng/pathogen/7_3/anonymous** to **/api/ng/pathogen/7.3/anonymous**

## 2.1.0
- Added authorization policy for ARS and added ars-data-fetcher to fss-reader
- Added authorization policy for ARS-Validationservice
- Added recipient header value for Testuser

## Release 1.0.0

### added

- Initial Release
