Cloud Data Engineer Bootcamp Challenge
Practical Challenge: Module 1 - Fundamentals in Data Architecture and Cloud Solutions

<b>Objectives:</b>

  - Learn about Cloud Data Architectures 

  - Implement a Data Lake in a Cloud Storage solution 

  - Implement Big Data Processing 

  - Deployment Pipelines using Github 

  - Infrastructure as Code (IaC) with Terraform 

<b>Tasks:</b>

1- Ingest the 2020 RAIS Public Affiliations data into AWS S3

2- Data available at: http://pdet.mte.gov.br/microdados-rais-e-caged.

- Modify column names, replacing spaces with "_". 
- Remove accents from columns and lowercase all letters. 
- Create a "uf" column from the "municipio" column and Adjust data types of the remuneration columns

3- Transform the data into parquet format and write to the staging or silver zone of your Data Lake.

4- Integrate with a Data Lake engine. In the case of AWS, you must: a. Configure a Crawler for the folder where the files are stored in the staging area b. Validate availability in Athena.

5- Make the data available for querying using Athena.

6- When the architecture design is complete, create a repository on Github (or Gitlab, Bitbucket, or another of your choice) and put the IaC code for infrastructure deployment.

Solution Architecture:
![challenge_mod1_diagram](https://user-images.githubusercontent.com/123885726/216746720-672904c8-aa13-4868-bfd1-5bc8ed5821ea.png)
