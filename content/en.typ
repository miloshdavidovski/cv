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
      Member of the platform team for a large multi-cluster Google Cloud ecosystem of around
      10 Kubernetes (GKE) clusters, responsible for setting up and maintaining the shared
      infrastructure (Cloud SQL, Redis, Kafka, ingress) and enabling development teams to use
      it. Key focus areas include CI/CD pipelines and automation, GitOps-based configuration
      management, secret and access management, and secure service-to-service networking
      with Istio.
      - Provisioning, configuration and lifecycle management of infrastructure components such as Cloud SQL, Redis, Kafka and ingress controllers across multiple GKE clusters.
      - Secret management with External Secrets Operator and Google Secret Manager, including access control via Workload Identity and IAM role bindings for workloads and teams.
      - Design and implementation of CI/CD pipelines with GitHub Actions for automated build, test and deployment workflows.
      - Implementation of GitOps workflows with Google Cloud Config Sync for declarative configuration management.
      - Creation and maintenance of Helm charts for new projects, and migration of existing deployments from kpt packages to Helm.
      - Operation and further development of Istio as a service mesh to secure service-to-service communication with mutual TLS (mTLS) and to enforce fine-grained access policies (AuthorizationPolicies).
      - Configuration of Istio traffic management (VirtualServices, DestinationRules, Gateways) for controlled routing and canary deployments, resilience via retries and timeouts, and resilience testing via fault injection.
      - Enabling development teams to use the platform through onboarding, documentation and support.
      #tech("Technologies Used", "Google Cloud Platform (GKE), Kubernetes, Helm, kpt, Istio, Config Sync, GitHub Actions, External Secrets Operator, Google Secret Manager, Cloud IAM, Workload Identity, Kafka, Redis, Cloud SQL")
    ],
  ),
  (
    title: "Senior DevOps Engineer (OpenShift)",
    place: "Worldline · Healthcare",
    date: "06.2025 – 04.2026",
    body: [
      Design, setup and operation of a central Kubernetes/OpenShift platform hosting 30+
      healthcare projects. Responsibilities covered the platform architecture, Helm-based
      deployments and GitLab CI pipelines for automated builds, updates and deployments, as
      well as platform security: identity & access management (RBAC, SSO), a service mesh
      with Istio for mTLS-secured service-to-service communication, fine-grained access
      policies and controlled traffic management, and centralized, auditable secrets
      management with HashiCorp Vault.
      - Setup and management of deployments for 30+ projects with Helm and Kubernetes/OpenShift.
      - Development of CI/CD pipelines with GitLab CI for automated builds, updates, and deployments.
      - Management of artifact repositories (Harbor and Nexus) for both Docker images and parent Helm charts.
      - Design and implementation of Identity & Access Management solutions, including RBAC and SSO.
      - Introduction of Istio as the platform's service mesh, enforcing mutual TLS (mTLS) between all services and restricting access through fine-grained AuthorizationPolicies.
      - Definition of routing rules (VirtualServices, DestinationRules, Gateways) for canary releases, combined with retries, timeouts and fault-injection tests to make the services more resilient.
      - Introduction and operation of HashiCorp Vault as a central, auditable secrets management solution for 30+ projects.
      - Providing direct client support.
      - Writing comprehensive documentation.
      - Team training on OpenShift best practices to ensure smooth operations and knowledge transfer across the development and DevOps teams.
      - Implementation and ongoing maintenance of OpenShift clusters to ensure optimal performance and reliability.
      #tech("Technologies Used", "OpenShift, Kubernetes, Helm, GitLab CI, Istio, HashiCorp Vault, RBAC, SSO, Harbor, Nexus, Java, Spring Boot, MongoDB, Elasticsearch")
    ],
  ),
  (
    title: "Senior DevOps Engineer",
    place: "Takeda · Pharmaceuticals",
    date: "06.2024 – 05.2025",
    body: [
      Setup and operation of the TetraScience Scientific Data Platform on AWS, used to ingest,
      harmonize and provide laboratory and instrument data in a GxP-regulated environment.
      Responsible for the platform infrastructure across multiple clusters and stages
      (development, test and production), including the shared networking, compute (EC2,
      ECS), storage (S3, RDS) and CI/CD, with a strong focus on security, compliance and
      validated, traceable software delivery.
      - Setup, configuration and operation of the new TetraScience Data Platform on AWS across multiple clusters and stages (development, test and production).
      - Provisioning and hardening of EC2 instances according to AWS security and networking best practices, including VPC and subnet design, Security Groups, IAM roles and least-privilege access.
      - Setup and management of storage and database services with Amazon S3 (bucket policies, encryption, versioning, lifecycle rules) and Amazon RDS (automated backups, high availability).
      - Management and maintenance of Amazon ECS clusters and Amazon ECR for running containerized (Docker) applications consistently across all stages.
      - Automated build, test and release of container images and infrastructure changes through GitHub Actions pipelines.
      - Support of GxP-compliant software delivery and deployment processes, including change control, traceable and reproducible deployments and audit-ready documentation in line with pharmaceutical quality requirements.
      - Creation and maintenance of technical documentation (architecture, runbooks, operating procedures) and close collaboration with stakeholders from IT, Quality Assurance/Compliance, the business and the platform vendor TetraScience.
      #tech("Technologies Used", "AWS (EC2, ECS, ECR, S3, RDS, VPC, IAM), TetraScience Data Platform, Docker, GitHub Actions, Git, Linux, GxP")
    ],
  ),
  (
    title: "Senior Full Stack Developer and DevOps Engineer",
    place: "SECO (Staatssekretariat für Wirtschaft) · Public sector",
    date: "2020 – 05.2024",
    body: [
      Development and operation of a public job portal where job seekers and employers find
      and communicate with each other: employers publish job positions and search for suitable
      candidates, while job seekers apply for jobs. The platform is built as a microservice
      architecture (20+ backend and frontend microservices) communicating via REST and events
      (Kafka). Besides full-stack development, I led the migration of the platform to
      OpenShift and was responsible for its CI/CD (Tekton) and GitOps (ArgoCD) setup, the
      Istio service mesh, monitoring and logging, and the secure handling of application
      secrets.
      - Full stack software engineering with Java/Spring Boot and TypeScript/Angular.
      - Introduction and migration of the project to OpenShift and implementation and maintenance of the cluster.
      - Design and implementation of pipelines with Tekton.
      - GitOps application design with ArgoCD.
      - OpenShift workshops and team retraining.
      - Operation of Istio as a service mesh for the 20+ microservices, encrypting and securing internal communication with mTLS.
      - Gradual rollouts and request routing of the services via Istio VirtualServices, DestinationRules and Ingress Gateways.
      - Setup and operation of monitoring and logging solutions with Prometheus, Grafana and the Elastic Stack (ELK).
      - Management and protection of sensitive configuration data using Kubernetes Secrets, OpenShift Secrets and Sealed Secrets for the secure storage and delivery of application secrets.
      #tech("Technologies Used", "OpenShift, Kubernetes, Helm, Kustomize, Tekton, ArgoCD, Istio, Sealed Secrets, Prometheus, Grafana, Elastic Stack (ELK), Java, Spring Boot, TypeScript, Angular, Apache Kafka, Postgres, Spring Cloud Dataflow")
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
