source("analysis.init.R")

# ----------------------------------------

print("Generic summaries") # Markdown
#sf <- generate_summaryfiles()
#load_all("../bibliographica/");
#sf <- generate_summaryfiles(summaries = c("size"))
sf <- generate_summaryfiles(df.preprocessed, author = "Leo Lahti", output.folder = output.folder, ntop = 20)

# ---------------------------------

# CERL-specific analyses
knit("docsizes.Rmd")
knit("digihum.Rmd")
source("20160423-WorldBookDay.R")

# ---------------------------------

system("git add -f figure/*.png")
# system("git add -f output.tables/*.csv")
system("git add output.tables/*.csv")
system("git add *.md")
system("git commit -a -m'Rmd update'")
system("git push origin master")
