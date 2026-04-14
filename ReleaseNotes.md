<img align="right" width="250" height="47" src="https://raw.githubusercontent.com/gematik/gematik.github.io/master/Gematik_Logo_Flag_With_Background.png" /> <br />   
 
# Release notes Istio-Policies
## Release 2.10.0
- fix release Notes generation
- added policies for futs split
- Add policies for ARE-services to access redis and ces and cleanup
- removed flags for enable or disable dls service access
- disable ARE policy deployment in the default case
- making are Namespaces in idm configurable
- simplify Release Pipeline and cleanup project

## Release 2.9.1
- fix release pipeline 

## Release 2.9.0
- added policy for new keycloak "request access" endpoint 
- added are authorization policies

## Release 2.8.1
- added new authorization policy for bulk inbound service in dmz namespace
- allow access to pgbouncer for ars-service
- allow new batch endpoints in ars-service from external

## Release 2.8.0
- fixed release Pipeline 
- added new policies for prometheus in dmz namespace 
- added roles for rki to get encrypted excerpts
- split flag for internal and external access on dls
- added policies for bulk inbound service (bulk management and upload)
- added policies for waf and secure-message-gateway
- removed feature flag 'newApiEndpoints'

## Release 2.7.0
- added new policies for new namespace

## Release 2.6.0
- add new policies for package-registry

## Release 2.5.0
- add new policies for destination-lookup-service
- add information to contributing and readme
- update internal publish pipelines
- preparations for publishing source code on github
- allow surveillance-pseudo-purger to pgbouncer

## Release 2.4.0
- allow routing service to call futs
- adding principal based policies for pgbouncer and postgres to get rid of the ip based ones
- add support for new api endpoints
- allow surveillance-pseudo-service to pgbouncer
- add policy for service-demo in ekm-template

## Release 2.3.1
- remove conceptmap access on futs-core for ingress

## Release 2.3.0
- Added option to allow external access from ingress to all validation services
- Added internal authorization policy for DEMIS FHIR Terminology Server
- Remove NCAPI policies

## Release 2.2.0
- Added new roles for §7.3/§7.4 Notifications
- Removed old HAPI-FHIR Authorization Policy
- Renamed Endpoints for ingress access to notification gateway
    - from **/api/ng/pathogen/7_1** to **/api/ng/pathogen/7.1**
    - from **/api/ng/pathogen/7_3/non_nominal** to **/api/ng/pathogen/7.3/non_nominal**
    - from **/api/ng/pathogen/7_3/anonymous** to **/api/ng/pathogen/7.3/anonymous**

## Release 2.1.0
- Added authorization policy for ARS and added ars-data-fetcher to fss-reader
- Added authorization policy for ARS-Validationservice
- Added recipient header value for Testuser

## Release 1.0.0

### added

- Initial Release