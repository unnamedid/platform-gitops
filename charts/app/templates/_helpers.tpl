{{- define "app.name" -}}
{{- required "values.name is required" .Values.name -}}
{{- end -}}

{{/* TODO(ch06): the platform's standard labels are missing. Every workload must say who owns it. */}}
{{- define "app.labels" -}}
app.kubernetes.io/name: {{ include "app.name" . }}
{{- end -}}

{{- define "app.selectorLabels" -}}
app.kubernetes.io/name: {{ include "app.name" . }}
{{- end -}}
