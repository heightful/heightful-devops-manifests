{{- define "heightful-gateway.fullname" -}}
{{- printf "%s" "heightful-gateway" -}}
{{- end -}}

{{- define "heightful-gateway.labels" -}}
app.kubernetes.io/name: {{ include "heightful-gateway.fullname" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}