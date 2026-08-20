#!/bin/bash

cat <<'EOF' | kubectl apply -f -
apiVersion: argoproj.io/v1alpha1
kind: Application
metadata:
  name: infra
spec:
  destination:
    namespace: argocd
    server: https://kubernetes.default.svc
  source:
    path: infra
    repoURL: >-
      https://github.com/Sebastian-Nowaczyk-Elektrorecykling/manual-bootstrap.git
    targetRevision: HEAD
  sources: []
  project: default
  syncPolicy:
    syncOptions: []
    automated:
      prune: true
      enabled: true
EOF
