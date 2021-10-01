{{/* vim: set filetype=mustache: */}}
{{/*
Create a name stem for resource names
When pods for deployments are created they have an additional 16 character
suffix appended, e.g. "-957c9d6ff-pkzgw". Given that Kubernetes allows 63
characters for resource names, the stem is truncated to 47 characters to leave
room for such suffix.
*/}}
{{- define "resource.default.name" -}}
{{- .Release.Name | replace "." "-" | trunc 47 | trimSuffix "-" -}}
{{- end -}}

{{- define "resource.cert.name" -}}
{{- include "resource.default.name" . -}}-cert
{{- end -}}

{{- define "resource.metrics.name" -}}
{{- include "resource.default.name" . -}}-metrics
{{- end -}}

{{- define "resource.webhook.name" -}}
{{- include "resource.default.name" . -}}-webhook
{{- end -}}

{{- define "resource.default.namespace" -}}
giantswarm
{{- end -}}

{{- define "resource.app.version" -}}
0.0.0
{{- end -}}
