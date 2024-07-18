# AnalysisTemplate
This R package creates an [RStudio Project Template](https://rstudio.github.io/rstudio-extensions/rstudio_project_templates.html) from which new R Projects can be created.

You can adapt this for your own project by modifying the 'R/make_project_template.R' file and the inst/rstudio/templates/project/AnalysisTemplate.dcf file. For more details, see [RStudio Project Templates](https://rstudio.github.io/rstudio-extensions/rstudio_project_templates.html) and Kevin Navarrete-Parra's [blog post](https://www.kevinparra.co/blog/r-project-template).

## Usage

1. Install this package using `devtools::install_github("featurehealth/AnalysisTemplate")`
2. Open a New RStudio Window.
3. Create a new project: File > New Project...
4. Select 'New Directory"
<img width="541" alt="New Project Wizard" src="https://github.com/user-attachments/assets/da280c39-5595-4aba-950d-1541eee96704">

5. Scroll down and select 'Make a New 'AnalysisTemplate' Project.
<img width="541" alt="Project Type" src="https://github.com/user-attachments/assets/ed5970fc-4431-410b-8194-2a11dadf0ed5">


6. Enter the name of the project and path to the project, and select whether to initialize a git repository and to use `renv`.
<img width="539" alt="Create a new project" src="https://github.com/user-attachments/assets/c9b19b47-5d5a-4135-9f3c-02331d1a5d26">

7. Test that the new project works by running `source("~/test/R/script.R")`. This should create a pdf file in the 'outputs' folder called 'temperature.pdf'.

![temperature](https://github.com/user-attachments/assets/961a3d58-3bfb-40e6-8cf9-2ca8f88ca966)
