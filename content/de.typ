// Deutscher Lebenslauf. Struktur identisch zu content/en.typ halten —
// main.typ liest aus beiden Dateien dieselben Namen.

#import "../style.typ": tech

#let name = "Milosh Davidovski"
#let headline = [Senior Platform & DevOps Engineer #h(6pt)·#h(6pt) CKA]
#let email = "milos.davidovski@gmail.com"
#let linkedin = "https://www.linkedin.com/in/milosh-davidovski-ab032113a/"
#let location = "Wien, Österreich"

#let labels = (
  doc-title: "Lebenslauf",
  contact: "KONTAKT",
  skills: "FÄHIGKEITEN",
  languages: "SPRACHEN",
  education: "AUSBILDUNG",
  certifications: "ZERTIFIKATE",
  profile: "PROFIL",
  experience: "BERUFSERFAHRUNG",
  earlier: "FRÜHERE STATIONEN",
  qr-caption: "Online-Version (DE / EN)",
)

#let profile = [
  Senior DevOps Engineer und Platform Engineer mit über 10 Jahren Erfahrung im Aufbau,
  Betrieb und der Optimierung von Kubernetes und Red Hat OpenShift Plattformen. Schwerpunkt
  meiner Tätigkeit sind Platform Engineering, CI/CD, GitOps, Automatisierung sowie der
  Betrieb geschäftskritischer Cloud-Native-Anwendungen in Enterprise- und Behördenumgebungen.

  #v(4pt)
  Ich verfüge über mehr als 6 Jahre praktische OpenShift-Erfahrung und unterstütze
  Organisationen bei der Einführung moderner Plattform- und DevOps-Konzepte, von der
  Architektur über die Automatisierung bis hin zum sicheren und stabilen Betrieb
  produktiver Systeme.
]

#let skills = (
  ("Container & Orchestrierung", ("Kubernetes", "Red Hat OpenShift", "Docker", "Helm", "Kustomize")),
  ("Cloud", ("Google Cloud", "GKE", "Cloud SQL", "AWS", "EC2", "ECS / ECR", "S3", "RDS", "VPC", "IAM")),
  ("CI/CD & GitOps", ("GitHub Actions", "GitLab CI", "Tekton", "Jenkins", "ArgoCD", "Config Sync", "Harbor", "Nexus")),
  ("Service Mesh & Netzwerk", ("Istio", "mTLS", "AuthorizationPolicies", "Traffic Management", "Ingress")),
  ("Sicherheit & Secrets", ("HashiCorp Vault", "External Secrets", "Sealed Secrets", "RBAC", "SSO", "Workload Identity")),
  ("Monitoring & Logging", ("Prometheus", "Grafana", "Elastic Stack (ELK)")),
  ("Programmierung & Daten", ("Java", "Kotlin", "Python", "Spring Boot", "TypeScript", "Angular", "Kafka", "PostgreSQL", "Redis", "MongoDB")),
)

#let languages = (
  ("Deutsch", "Fließend in Wort und Schrift"),
  ("Englisch", "Fließend in Wort und Schrift"),
)

#let education = (
  (title: "Masterstudium Business Informatics", place: "Technische Universität Wien"),
  (title: "Bachelor of Software Engineering", place: "Universität „Hl. Kyrill und Method“, Skopje"),
)

#let certifications = (
  ("Certified Kubernetes Administrator (CKA)", "CNCF / Linux Foundation"),
  ("Google Cloud Digital Leader", "Google Cloud"),
  ("Certified Scrum Developer (CSD)", "Scrum Alliance, inkl. Training"),
)

#let jobs = (
  (
    title: "Senior Platform Engineer",
    place: "twinformatics GmbH · Versicherung",
    date: "seit 05.2026",
    body: [
      Teil des Plattform-Teams für ein großes Multi-Cluster-Ökosystem in der Google Cloud mit
      rund 10 GKE-Clustern, verantwortlich für die gemeinsame Infrastruktur (Cloud SQL, Redis,
      Kafka, Ingress) sowie die Befähigung der Entwicklungsteams zu deren Nutzung.
      - Bereitstellung, Konfiguration und Lifecycle-Management von Cloud SQL, Redis, Kafka und Ingress-Controllern über mehrere GKE-Cluster hinweg
      - Secret Management mit External Secrets Operator und Google Secret Manager, inkl. Zugriffssteuerung über Workload Identity und IAM-Rollenbindungen
      - CI/CD-Pipelines mit GitHub Actions für automatisierte Build-, Test- und Deployment-Workflows
      - GitOps-Workflows mit Google Cloud Config Sync für deklaratives Konfigurationsmanagement
      - Helm Charts für neue Projekte sowie Migration bestehender Deployments von kpt-Paketen zu Helm
      - Istio Service Mesh: mTLS und AuthorizationPolicies für sichere Service-zu-Service-Kommunikation; Traffic Management (VirtualServices, DestinationRules, Gateways) für Canary Deployments, Retries, Timeouts und Resilienztests mittels Fault Injection
      - Befähigung der Entwicklungsteams durch Onboarding, Dokumentation und Support
      #tech("Technologien", "GCP (GKE), Kubernetes, Helm, kpt, Istio, Config Sync, GitHub Actions, External Secrets Operator, Google Secret Manager, Cloud IAM, Workload Identity, Kafka, Redis, Cloud SQL")
    ],
  ),
  (
    title: "Senior DevOps Engineer (OpenShift)",
    place: "Worldline · Gesundheitswesen",
    date: "06.2025 – 04.2026",
    body: [
      Konzeption, Aufbau und Betrieb einer zentralen Kubernetes/OpenShift-Plattform für über
      30 Projekte im Gesundheitswesen – von der Plattformarchitektur über Deployments und
      CI/CD bis zur Plattformsicherheit.
      - Implementierung und laufende Wartung von OpenShift-Clustern für Performance und Zuverlässigkeit
      - Helm-basierte Deployments für über 30 Projekte und GitLab-CI-Pipelines für automatisierte Builds, Updates und Deployments
      - Einführung und Betrieb von HashiCorp Vault als zentrales, auditierbares Secrets Management für über 30 Projekte
      - Identity & Access Management mit RBAC und SSO
      - Einführung und Betrieb von Istio mit mTLS, AuthorizationPolicies und Traffic Management für Canary Deployments
      - Verwaltung der Artifact Repositories Harbor und Nexus für Docker Images und übergeordnete Helm Charts
      - Kundensupport, Dokumentation und Schulung der Teams zu OpenShift Best Practices
      #tech("Technologien", "OpenShift, Kubernetes, Helm, GitLab CI, Istio, HashiCorp Vault, RBAC, SSO, Harbor, Nexus, Java, Spring Boot, MongoDB, Elasticsearch")
    ],
  ),
  (
    title: "Senior DevOps Engineer",
    place: "Takeda · Pharma",
    date: "06.2024 – 05.2025",
    body: [
      Aufbau und Betrieb der TetraScience Scientific Data Platform auf AWS zur Erfassung und
      Harmonisierung von Labor- und Gerätedaten in einer GxP-regulierten Umgebung, mit starkem
      Fokus auf Sicherheit, Compliance und nachvollziehbare Softwareauslieferung.
      - Aufbau, Konfiguration und Betrieb der Plattform über die Stages Entwicklung, Test und Produktion
      - Bereitstellung und Härtung von EC2-Instanzen: VPC- und Subnet-Design, Security Groups, IAM-Rollen und Least-Privilege-Zugriff
      - Storage und Datenbanken mit Amazon S3 (Bucket Policies, Verschlüsselung, Versionierung, Lifecycle-Regeln) und Amazon RDS (Backups, Hochverfügbarkeit)
      - Betrieb von Amazon-ECS-Clustern und ECR für containerisierte Anwendungen über alle Stages
      - CI/CD-Pipelines mit GitHub Actions für Container-Images und Infrastrukturänderungen
      - GxP-konforme Auslieferung: Change Control, nachvollziehbare und reproduzierbare Deployments, auditfähige Dokumentation
      - Enge Zusammenarbeit mit IT, Qualitätssicherung/Compliance, Fachbereich und dem Plattformanbieter TetraScience
      #tech("Technologien", "AWS (EC2, ECS, ECR, S3, RDS, VPC, IAM), TetraScience Data Platform, Docker, GitHub Actions, Git, Linux, GxP")
    ],
  ),
  (
    title: "Senior Full-Stack-Entwickler und DevOps Engineer",
    place: "SECO (Staatssekretariat für Wirtschaft) · Öffentlicher Sektor",
    date: "2020 – 05.2024",
    body: [
      Entwicklung und Betrieb eines öffentlichen Jobportals aus über 20 Backend- und
      Frontend-Microservices, die über REST und Kafka kommunizieren. Neben der
      Full-Stack-Entwicklung leitete ich die Migration auf OpenShift und verantwortete CI/CD,
      GitOps, Service Mesh, Monitoring und den Umgang mit Applikationsgeheimnissen.
      - Full-Stack-Softwareentwicklung mit Java/Spring Boot und TypeScript/Angular
      - Leitung der Migration auf OpenShift sowie Implementierung und Wartung des Clusters
      - CI/CD-Pipelines mit Tekton und GitOps-Anwendungsdesign mit ArgoCD
      - Istio Service Mesh für über 20 Microservices: mTLS und Traffic Management für schrittweise Rollouts
      - Monitoring und Logging mit Prometheus, Grafana und Elastic Stack (ELK)
      - Absicherung sensibler Konfigurationsdaten mit Kubernetes/OpenShift Secrets und Sealed Secrets
      - OpenShift-Workshops und Schulung des Teams
      #tech("Technologien", "OpenShift, Kubernetes, Helm, Kustomize, Tekton, ArgoCD, Istio, Sealed Secrets, Prometheus, Grafana, ELK, Java, Spring Boot, TypeScript, Angular, Apache Kafka, PostgreSQL, Spring Cloud Data Flow")
    ],
  ),
)

#let earlier = (
  (
    title: "Senior Full-Stack-Entwickler",
    place: "PRODYNA SE · IT-Dienstleistungen",
    date: "2020 – 2023",
    summary: [Internes Projekt-Schätzungstool mit Arbeitspaketen, Aufgaben und Versionshistorie. Mentoring von Junior-Mitarbeitern in Java und Spring Boot sowie Mitwirkung im Bewerbungsprozess neuer Berater.],
    tech: "Kotlin, Spring Boot, Docker, PostgreSQL, JPA/Hibernate, Liquibase, JUnit, Angular",
  ),
  (
    title: "Full-Stack-Entwickler",
    place: "Klar & Leiter GesbR (SAMERA) · Tourismus",
    date: "2018 – 2020",
    summary: [SaaS-Preismanagement-Software für Hotels: regelbasierte Preisberechnung und ein als JavaScript-Bibliothek eingebundenes Overlay mit REST-Backend. Jenkins-Pipelines und Mitarbeit an der Produktplanung.],
    tech: "Kotlin, Java, Spring Boot, JPA/Hibernate, EclipseLink, Jenkins, Docker, PostgreSQL, React, Redux",
  ),
  (
    title: "Full-Stack-Entwickler",
    place: "Specific-Group Austria · Versicherung",
    date: "2018",
    summary: [Vergleichsplattform für mehrere Versicherungsunternehmen. Angular-Frontend, Schnittstellendesign mit dem Backend-Team und Geschäftsregeln mit Drools.],
    tech: "Java 8, Drools, Angular",
  ),
  (
    title: "Qualitätssicherung des Kernbankensystems",
    place: "Sberbank Europe AG, Wien · Banking",
    date: "2017",
    summary: [Testmanagement des Kernbankensystems: automatisierte JUnit- und Selenium-Tests, SonarQube-Analysen und Anforderungsanalyse.],
    tech: "JUnit, Selenium, SonarQube, Eclipse",
  ),
  (
    title: "Fitnessanwendung (Universitätsprojekt)",
    place: "Technische Universität Wien",
    date: "2016",
    summary: [Fitness-App mit individuellen Trainingsplänen, Gruppenwettbewerben, 3D-Muskelmodell und Bewegungserkennung. Full-Stack-Entwicklung, Projektmanagement und Pitching.],
    tech: "Java 8, Spring Boot, Angular 4, JavaScript, PostgreSQL, Maven, Jenkins, SonarQube",
  ),
)
