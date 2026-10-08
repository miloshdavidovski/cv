// English CV content. Keep the structure identical to content/de.typ —
// main.typ reads the same names from both files.

#import "../style.typ": tech

#let name = "Milosh Davidovski"
#let headline = [Senior Platform & DevOps Engineer #h(6pt)·#h(6pt) CKA]
#let email = "milos.davidovski@gmail.com"
#let linkedin = "https://www.linkedin.com/in/milosh-davidovski-ab032113a/"
#let location = "Vienna, Austria"

#let labels = (
  doc-title: "CV",
  contact: "CONTACT",
  skills: "SKILLS",
  languages: "LANGUAGES",
  education: "EDUCATION",
  certifications: "CERTIFICATIONS",
  profile: "PROFILE",
  experience: "WORK EXPERIENCE",
  earlier: "EARLIER EXPERIENCE",
  qr-caption: "Online version (EN / DE)",
)

#let profile = [
  Senior DevOps Engineer and Platform Engineer with over 10 years of experience in
  building, operating and optimizing Kubernetes and Red Hat OpenShift platforms. My work
  focuses on platform engineering, CI/CD, GitOps, automation and the operation of
  business-critical cloud-native applications in enterprise and public-sector environments.

  #v(4pt)
  I have more than 6 years of hands-on OpenShift experience and help organizations adopt
  modern platform and DevOps practices, from architecture and automation through to the
  secure and stable operation of production systems.
]

#let skills = (
  ("Containers & Orchestration", ("Kubernetes", "Red Hat OpenShift", "Docker", "Helm", "Kustomize")),
  ("Cloud", ("Google Cloud", "GKE", "Cloud SQL", "AWS", "EC2", "ECS / ECR", "S3", "RDS", "VPC", "IAM")),
  ("CI/CD & GitOps", ("GitHub Actions", "GitLab CI", "Tekton", "Jenkins", "ArgoCD", "Config Sync", "Harbor", "Nexus")),
  ("Service Mesh & Networking", ("Istio", "mTLS", "AuthorizationPolicies", "Traffic Management", "Ingress")),
  ("Security & Secrets", ("HashiCorp Vault", "External Secrets", "Sealed Secrets", "RBAC", "SSO", "Workload Identity")),
  ("Observability", ("Prometheus", "Grafana", "Elastic Stack (ELK)")),
  ("Programming & Data", ("Java", "Kotlin", "Python", "Spring Boot", "TypeScript", "Angular", "Kafka", "PostgreSQL", "Redis", "MongoDB")),
)

#let languages = (
  ("English", "Full professional proficiency"),
  ("German", "Full professional proficiency"),
)

#let education = (
  (title: "Master Studies \"Business Informatics\"", place: "Vienna University of Technology (TU Wien)"),
  (title: "Bachelor of Software Engineering", place: "Ss. Cyril and Methodius University, Skopje"),
)

#let certifications = (
  ("Certified Kubernetes Administrator (CKA)", "CNCF / Linux Foundation"),
  ("Google Cloud Digital Leader", "Google Cloud"),
  ("Certified Scrum Developer (CSD)", "Scrum Alliance, incl. training"),
)

#let jobs = (
  (
    title: "Senior Platform Engineer",
    place: "twinformatics GmbH · Insurance",
    date: "05.2026 – Present",
    body: [
      Member of the platform team for a large multi-cluster Google Cloud ecosystem of
      around 10 GKE clusters, responsible for the shared infrastructure (Cloud SQL, Redis,
      Kafka, ingress) and for enabling development teams to use it.

      - Provisioning, configuration and lifecycle management of Cloud SQL, Redis, Kafka and ingress controllers across multiple GKE clusters
      - Secret management with External Secrets Operator and Google Secret Manager, with access control via Workload Identity and IAM role bindings
      - CI/CD pipelines with GitHub Actions for automated build, test and deployment workflows
      - GitOps workflows with Google Cloud Config Sync for declarative configuration management
      - Helm charts for new projects and migration of existing deployments from kpt packages to Helm
      - Istio service mesh: mTLS and AuthorizationPolicies for secure service-to-service communication; traffic management (VirtualServices, DestinationRules, Gateways) for canary deployments, retries, timeouts and fault-injection testing
      - Onboarding, documentation and support to enable development teams on the platform

      #tech("Technologies", "GCP (GKE), Kubernetes, Helm, kpt, Istio, Config Sync, GitHub Actions, External Secrets Operator, Google Secret Manager, Cloud IAM, Workload Identity, Kafka, Redis, Cloud SQL")
    ],
  ),
  (
    title: "Senior DevOps Engineer (OpenShift)",
    place: "Worldline · Healthcare",
    date: "06.2025 – 04.2026",
    body: [
      Design, setup and operation of a central Kubernetes/OpenShift platform hosting 30+
      healthcare projects, covering platform architecture, deployments, CI/CD and platform
      security.

      - Implementation and ongoing maintenance of OpenShift clusters for performance and reliability
      - Helm-based deployments for 30+ projects and GitLab CI pipelines for automated builds, updates and deployments
      - Introduction and operation of HashiCorp Vault as central, auditable secrets management for 30+ projects
      - Identity & access management with RBAC and SSO
      - Introduction and operation of Istio with mTLS, AuthorizationPolicies and traffic management for canary deployments
      - Artifact management with Harbor and Nexus for Docker images and parent Helm charts
      - Client support, documentation and team training on OpenShift best practices

      #tech("Technologies", "OpenShift, Kubernetes, Helm, GitLab CI, Istio, HashiCorp Vault, RBAC, SSO, Harbor, Nexus, Java, Spring Boot, MongoDB, Elasticsearch")
    ],
  ),
  (
    title: "Senior DevOps Engineer",
    place: "Takeda · Pharmaceuticals",
    date: "06.2024 – 05.2025",
    body: [
      Setup and operation of the TetraScience Scientific Data Platform on AWS, ingesting and
      harmonizing laboratory and instrument data in a GxP-regulated environment, with a strong
      focus on security, compliance and traceable software delivery.

      - Setup, configuration and operation of the platform across development, test and production stages
      - Provisioning and hardening of EC2 instances: VPC and subnet design, Security Groups, IAM roles and least-privilege access
      - Storage and databases with Amazon S3 (bucket policies, encryption, versioning, lifecycle rules) and Amazon RDS (backups, high availability)
      - Operation of Amazon ECS clusters and ECR for containerized workloads across all stages
      - CI/CD pipelines with GitHub Actions for container images and infrastructure changes
      - GxP-compliant delivery: change control, traceable and reproducible deployments, audit-ready documentation
      - Close collaboration with IT, QA/Compliance, the business and the platform vendor TetraScience

      #tech("Technologies", "AWS (EC2, ECS, ECR, S3, RDS, VPC, IAM), TetraScience Data Platform, Docker, GitHub Actions, Git, Linux, GxP")
    ],
  ),
  (
    title: "Senior Full Stack Developer & DevOps Engineer",
    place: "SECO (Swiss State Secretariat for Economic Affairs) · Public sector",
    date: "2020 – 05.2024",
    body: [
      Development and operation of a public job portal built from 20+ backend and frontend
      microservices communicating via REST and Kafka. Besides full-stack development, I led
      the migration to OpenShift and owned CI/CD, GitOps, the service mesh, monitoring and
      secrets handling.

      - Full-stack development with Java/Spring Boot and TypeScript/Angular
      - Led the migration to OpenShift; implementation and maintenance of the cluster
      - CI/CD pipelines with Tekton and GitOps application design with ArgoCD
      - Istio service mesh for 20+ microservices: mTLS and traffic management for gradual rollouts
      - Monitoring and logging with Prometheus, Grafana and the Elastic Stack (ELK)
      - Secure handling of application secrets with Kubernetes/OpenShift Secrets and Sealed Secrets
      - OpenShift workshops and team retraining

      #tech("Technologies", "OpenShift, Kubernetes, Helm, Kustomize, Tekton, ArgoCD, Istio, Sealed Secrets, Prometheus, Grafana, ELK, Java, Spring Boot, TypeScript, Angular, Apache Kafka, PostgreSQL, Spring Cloud Data Flow")
    ],
  ),
)

#let earlier = (
  (
    title: "Senior Full Stack Developer",
    place: "PRODYNA SE · IT services",
    date: "2020 – 2023",
    summary: [Internal project-estimation tool with work packages, tasks and version history. Mentored junior developers in Java and Spring Boot and took part in interviewing new consultants.],
    tech: "Kotlin, Spring Boot, Docker, PostgreSQL, JPA/Hibernate, Liquibase, JUnit, Angular",
  ),
  (
    title: "Full Stack Software Engineer",
    place: "Klar & Leiter GesbR (SAMERA) · Tourism",
    date: "2018 – 2020",
    summary: [SaaS price-management software for hotels: rule-based pricing engine and an embeddable JavaScript overlay talking to the backend via REST. Built Jenkins pipelines and contributed to product planning.],
    tech: "Kotlin, Java, Spring Boot, JPA/Hibernate, EclipseLink, Jenkins, Docker, PostgreSQL, React, Redux",
  ),
  (
    title: "Full Stack Software Engineer",
    place: "Specific-Group Austria · Insurance",
    date: "2018",
    summary: [Comparison platform used by several insurers. Angular frontend, interface design with the backend team and business rules in Drools.],
    tech: "Java 8, Drools, Angular",
  ),
  (
    title: "Quality Assurance, Core Banking System",
    place: "Sberbank Europe AG, Vienna · Banking",
    date: "2017",
    summary: [Test management for the core banking system: automated JUnit and Selenium tests, SonarQube analysis and requirements analysis.],
    tech: "JUnit, Selenium, SonarQube, Eclipse",
  ),
  (
    title: "Fitness Application (university project)",
    place: "Vienna University of Technology",
    date: "2016",
    summary: [Workout app with custom routines, group competitions, a 3D muscle model and motion detection. Full-stack development, project management and pitching.],
    tech: "Java 8, Spring Boot, Angular 4, JavaScript, PostgreSQL, Maven, Jenkins, SonarQube",
  ),
)
