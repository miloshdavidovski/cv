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
      Teil des Plattform-Teams für ein großes Multi-Cluster Ökosystem in der Google Cloud mit
      rund 10 Kubernetes Clustern (GKE), verantwortlich für den Aufbau und Betrieb der
      gemeinsamen Infrastruktur (Cloud SQL, Redis, Kafka, Ingress) sowie die Befähigung der
      Entwicklungsteams zu deren Nutzung. Schwerpunkte sind CI/CD Pipelines und
      Automatisierung, GitOps basiertes Konfigurationsmanagement, Secret und
      Zugriffsmanagement sowie die sichere Service-zu-Service Kommunikation mit Istio.
      - Bereitstellung, Konfiguration und Lifecycle-Management von Infrastrukturkomponenten wie Cloud SQL, Redis, Kafka und Ingress Controllern über mehrere GKE Cluster hinweg.
      - Secret Management mit External Secrets Operator und Google Secret Manager, inklusive Zugriffssteuerung über Workload Identity und IAM-Rollenbindungen für Workloads und Teams.
      - Design und Implementierung von CI/CD Pipelines mit GitHub Actions für automatisierte Build, Test und Deployment Workflows.
      - Implementierung von GitOps-Workflows mit Google Cloud Config Sync für deklaratives Konfigurationsmanagement.
      - Erstellung und Wartung von Helm Charts für neue Projekte sowie Migration bestehender Deployments von kpt Paketen zu Helm.
      - Betrieb und Weiterentwicklung von Istio als Service Mesh zur Absicherung der Service-zu-Service Kommunikation über gegenseitiges TLS (mTLS) sowie zur Durchsetzung feingranularer Zugriffsrichtlinien (AuthorizationPolicies).
      - Konfiguration des Traffic Managements mit Istio (VirtualServices, DestinationRules, Gateways) für kontrolliertes Routing und Canary Deployments, Resilienz durch Retries und Timeouts sowie Resilienztests mittels Fault Injection.
      - Befähigung der Entwicklungsteams zur Nutzung der Plattform durch Onboarding, Dokumentation und Support.
      #tech("Technologien", "Google Cloud Platform (GKE), Kubernetes, Helm, kpt, Istio, Config Sync, GitHub Actions, External Secrets Operator, Google Secret Manager, Cloud IAM, Workload Identity, Kafka, Redis, Cloud SQL")
    ],
  ),
  (
    title: "Senior DevOps Engineer (OpenShift)",
    place: "Worldline · Gesundheitswesen",
    date: "06.2025 – 04.2026",
    body: [
      Konzeption, Aufbau und Betrieb einer zentralen Kubernetes/OpenShift Plattform für über
      30 Projekte im Gesundheitswesen. Die Verantwortung umfasste die Plattformarchitektur,
      Helm basierte Deployments und GitLab CI Pipelines für automatisierte Builds, Updates und
      Deployments sowie die Plattformsicherheit: Identity & Access Management (RBAC, SSO), ein
      Service Mesh mit Istio für mTLS gesicherte Service-zu-Service-Kommunikation,
      feingranulare Zugriffsrichtlinien und kontrolliertes Traffic Management sowie ein
      zentrales, auditierbares Secrets Management mit HashiCorp Vault.
      - Einrichtung und Verwaltung von Deployments für über 30 Projekte mit Helm und Kubernetes/OpenShift.
      - Entwicklung von CI/CD Pipelines mit GitLab CI für automatisierte Builds, Updates und Deployments.
      - Verwaltung von Artifact Repositories (Harbor und Nexus) für Docker Images und übergeordnete Helm Charts.
      - Design und Implementierung von Identity & Access Management Lösungen einschließlich RBAC und SSO.
      - Einführung von Istio als Service Mesh der Plattform, mit gegenseitigem TLS (mTLS) zwischen allen Services und feingranularer Zugriffskontrolle über AuthorizationPolicies.
      - Definition von Routing-Regeln (VirtualServices, DestinationRules, Gateways) für Canary Releases, ergänzt durch Retries, Timeouts und Fault-Injection-Tests zur Stärkung der Resilienz.
      - Einführung und Betrieb von HashiCorp Vault als zentrales, auditierbares Secrets Management für über 30 Projekte.
      - Direkter Kundensupport.
      - Erstellung umfassender Dokumentation.
      - Schulung der Teams zu OpenShift Best Practices für einen reibungslosen Betrieb und Wissenstransfer zwischen Entwicklungs- und DevOps-Teams.
      - Implementierung und laufende Wartung von OpenShift Clustern für optimale Performance und Zuverlässigkeit.
      #tech("Technologien", "OpenShift, Kubernetes, Helm, GitLab CI, Istio, HashiCorp Vault, RBAC, SSO, Harbor, Nexus, Java, Spring Boot, MongoDB, Elasticsearch")
    ],
  ),
  (
    title: "Senior DevOps Engineer",
    place: "Takeda · Pharma",
    date: "06.2024 – 05.2025",
    body: [
      Aufbau und Betrieb der TetraScience Scientific Data Platform auf AWS zur Erfassung,
      Harmonisierung und Bereitstellung von Labor und Gerätedaten in einer GxP-regulierten
      Umgebung. Verantwortlich für die Plattforminfrastruktur über mehrere Cluster und Stages
      (Entwicklung, Test und Produktion) hinweg, einschließlich der gemeinsamen
      Netzwerkinfrastruktur, Compute (EC2, ECS), Storage (S3, RDS) und CI/CD, mit starkem
      Fokus auf Sicherheit, Compliance sowie validierte und nachvollziehbare
      Softwareauslieferung.
      - Aufbau, Konfiguration und Betrieb der neuen TetraScience Data Platform auf AWS über mehrere Cluster und Stages (Entwicklung, Test und Produktion).
      - Bereitstellung und Härtung von EC2 Instanzen nach AWS Best Practices für Sicherheit und Netzwerk, einschließlich VPC und Subnet-Design, Security Groups, IAM Rollen und Least-Privilege Zugriff.
      - Einrichtung und Verwaltung von Storage und Datenbankdiensten mit Amazon S3 (Bucket Policies, Verschlüsselung, Versionierung, Lifecycle Regeln) und Amazon RDS (automatisierte Backups, Hochverfügbarkeit).
      - Verwaltung und Wartung von Amazon ECS Clustern und Amazon ECR für den konsistenten Betrieb containerisierter (Docker) Anwendungen über alle Stages hinweg.
      - Automatisierter Build, Test und Release von Container-Images und Infrastrukturänderungen über GitHub Actions Pipelines.
      - Unterstützung GxP-konformer Softwareauslieferungs- und Deployment Prozesse, einschließlich Change Control, nachvollziehbarer und reproduzierbarer Deployments sowie auditfähiger Dokumentation gemäß den pharmazeutischen Qualitätsanforderungen.
      - Erstellung und Pflege technischer Dokumentation (Architektur, Runbooks, Betriebsverfahren) sowie enge Zusammenarbeit mit Stakeholdern aus IT, Qualitätssicherung/Compliance, Fachbereich und dem Plattformanbieter TetraScience.
      #tech("Technologien", "AWS (EC2, ECS, ECR, S3, RDS, VPC, IAM), TetraScience Data Platform, Docker, GitHub Actions, Git, Linux, GxP")
    ],
  ),
  (
    title: "Senior Full-Stack-Entwickler und DevOps Engineer",
    place: "SECO (Staatssekretariat für Wirtschaft) · Öffentlicher Sektor",
    date: "2020 – 05.2024",
    body: [
      Entwicklung und Betrieb eines öffentlichen Jobportals, auf dem Jobsuchende und
      Arbeitgeber sich finden und miteinander kommunizieren: Arbeitgeber veröffentlichen
      Stellenangebote und suchen passende Kandidaten, während Jobsuchende sich auf Stellen
      bewerben. Die Plattform basiert auf einer Microservice-Architektur (über 20 Backend und
      Frontend Microservices), die über REST und Events (Kafka) kommunizieren. Neben der
      Full-Stack-Entwicklung leitete ich die Migration der Plattform auf OpenShift und war
      verantwortlich für CI/CD (Tekton) und GitOps (ArgoCD), das Istio Service Mesh,
      Monitoring und Logging sowie den sicheren Umgang mit Applikationsgeheimnissen.
      - Full-Stack Softwareentwicklung mit Java/Spring Boot und TypeScript/Angular.
      - Einführung und Migration des Projekts zu OpenShift sowie Implementierung und Wartung des Clusters.
      - Design und Implementierung von Pipelines mit Tekton.
      - GitOps Anwendungsdesign mit ArgoCD.
      - Workshops zu OpenShift und Schulung des Teams.
      - Betrieb von Istio als Service Mesh für die über 20 Microservices zur Verschlüsselung und Absicherung der internen Kommunikation mittels mTLS.
      - Schrittweise Rollouts und Request-Routing der Services über Istio VirtualServices, DestinationRules und Ingress Gateways.
      - Aufbau und Betrieb von Monitoring und Logging Lösungen mit Prometheus, Grafana und Elastic Stack (ELK).
      - Verwaltung und Absicherung sensibler Konfigurationsdaten mittels Kubernetes Secrets, OpenShift Secrets und Sealed Secrets für die sichere Ablage und Bereitstellung von Applikationsgeheimnissen.
      #tech("Technologien", "OpenShift, Kubernetes, Helm, Kustomize, Tekton, ArgoCD, Istio, Sealed Secrets, Prometheus, Grafana, Elastic Stack (ELK), Java, Spring Boot, TypeScript, Angular, Apache Kafka, Postgres, Spring Cloud Dataflow")
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
