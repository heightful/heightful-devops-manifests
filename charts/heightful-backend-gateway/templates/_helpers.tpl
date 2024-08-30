{{- define "heightful-backend-gateway.fullname" -}}
{{- printf "%s" "heightful-backend-gateway" -}}
{{- end -}}

{{- define "heightful-backend-gateway.labels" -}}
app.kubernetes.io/name: {{ include "heightful-backend-gateway.fullname" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}
