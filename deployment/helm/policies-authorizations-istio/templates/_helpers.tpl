{{/*
create list of service accounts to be allowed
*/}}
{{- define "policies-authorization-chart.gateway_service_accounts" -}}
{{- with .namespace }}
{{- range $.services }}
- "cluster.local/ns/{{ $.namespace }}/sa/{{ . }}*"
{{- end }}
{{- end }}
{{- end -}}

{{ define "policies-authorization-chart.allow_all_operations_for_ips" -}}
{{- if and (or (eq .Values.demis.allowList.enabled true) (eq .Values.idm.keycloak.allowList.enabled true)) (gt (len .Values.idm.keycloak.allowList.ips) 0) }}
- from:
    - source:
        principals: [
          "cluster.local/ns/istio-system/sa/istio-ingressgateway"
        ]
  to:
    - operation:
        methods: ["DELETE", "GET", "POST", "PUT"]
        paths: [ "/" ]
  when:
    - key: request.headers[x-real-ip]
      values:
      {{- range .Values.idm.keycloak.allowList.ips }}
        - {{ . }}
      {{- end }}
{{- end -}}
{{- end -}}