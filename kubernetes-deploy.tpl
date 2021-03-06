apiVersion: apps/v1
kind: Deployment
metadata:
  name: moj-prototype
spec:
  replicas: 1
  selector:
    matchLabels:
      app: prototype
  template:
    metadata:
      labels:
        app: prototype
    spec:
      containers:
      - name: nginx
        image: 754256621582.dkr.ecr.eu-west-2.amazonaws.com/${ECR_NAME}:${IMAGE_TAG}
        ports:
        - containerPort: 3000
---
apiVersion: v1
kind: Service
metadata:
  name: nginx-service
  labels:
    app: nginx-service
spec:
  ports:
  - port: 3000
    name: http
    targetPort: 3000
  selector:
    app: prototype
---
apiVersion: networking.k8s.io/v1beta1
kind: Ingress
metadata:
  name: prototype-ingress
  annotations:
    kubernetes.io/ingress.class: nginx
    external-dns.alpha.kubernetes.io/set-identifier: prototype-ingress-${PROTOTYPE_NAME}-green
    external-dns.alpha.kubernetes.io/aws-weight: "100"
spec:
  tls:
  - hosts:
    - ${PROTOTYPE_NAME}.apps.live.cloud-platform.service.justice.gov.uk
  rules:
  - host: ${PROTOTYPE_NAME}.apps.live.cloud-platform.service.justice.gov.uk
    http:
      paths:
      - path: /
        backend:
          serviceName: nginx-service
          servicePort: 3000
