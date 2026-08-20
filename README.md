# jeżeli to jest hostowane na innym URL to trzeba zmienić
to oryginalnie jest na tym URL:

https://github.com/Sebastian-Nowaczyk-Elektrorecykling/manual-bootstrap.

jeśli jest to teraz gdzie indziej to trzeba zmienić URL w infra/infra.yaml

# foldery 00-komponent
one są po to żeby wystawić dany komponent jako Application custom resource w ArgoCD
generalnie nie tykać

# infra
główny folder, instaluje podstawowe komponenty po kolei
używa ArgoCD sync waves żeby komponenty instalowały się po kolei
można zainstalować przez UI ArgoCD

# headlamp
po zainstalowaniu przez ArgoCD stawia serwis dashboardu admina

# external-dns
wystawia DNS na 192.168.3.87
pozwala komputerom odpytywać *.svc.cluster.local żeby uzyskać adresy wewnątrzklastrowe

# argocd
pozwala ArgoCD administrować samym sobą

# instalacja aplikacji ArgoCD przez UI
TODO
