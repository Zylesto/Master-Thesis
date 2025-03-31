## Master's Thesis Overview

This master's thesis addresses shortcomings in the vulnerability management component of the **Software Composition Analysis (SCA)** Tool developed by the **Professorship for Open Source Software (OSS)** at the **Friedrich-Alexander University Erlangen-Nürnberg (FAU)**, by proposing a multidimensional classification and remediation framework for software vulnerabilities.

The developed approach integrates the **Common Vulnerability Scoring System (CVSS)** for technical impact assessment with the **Exploit Prediction Scoring System (EPSS)** for real-world exploit likelihood, offering a balanced view of both intrinsic risk and active threats. A model and algorithm are introduced to compute contextual classification scores, complemented by a stakeholder-specific remediation strategy leveraging the **Stakeholder-Specific Vulnerability Categorization (SSVC)** framework.

Additionally, a rank-ordering model prioritizes vulnerabilities, ensuring critical and data-incomplete vulnerabilities are given immediate attention. The implementation utilizes data sources such as **Open Source Vulnerabilities (OSV)** and incorporates robust caching and daily refresh mechanisms to minimize unnecessary traffic and enhance performance.

The effectiveness and practical applicability of the framework are confirmed through evaluations conducted by domain experts.
