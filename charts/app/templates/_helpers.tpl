{{- define "app.name" -}}
{{- required "values.name is required" .Values.name -}}
{{- end -}}

{{/* TODO(ch06): the platform's standard labels are missing. Every workload must say who owns it. */}}
{{- define "app.labels" -}}
app.kubernetes.io/name: {{ include "app.name" . }}
platform.lab/owner: {{ required "values.owner is required" .Values.owner | quote }}
{{- end -}}

{{- define "app.selectorLabels" -}}
app.kubernetes.io/name: {{ include "app.name" . }}
{{- end -}}
