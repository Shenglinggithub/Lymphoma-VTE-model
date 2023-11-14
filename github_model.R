model <- readRDS("/Users/shenglingma/Library/CloudStorage/Box-Box/CPRIT VTE Projects/HHS Database/Manuscript/Lymphoma RAM (VA HHS)/JAMA Onco/Github/VTE Risk Assessment Model for Lymphoma.rds")
summary(model)
your_data <- read.csv("/Users/shenglingma/Library/CloudStorage/Box-Box/CPRIT VTE Projects/HHS Database/Manuscript/Lymphoma RAM (VA HHS)/JAMA Onco/Github/sample_data.csv")
your_data$predited_incidence<- predict(model, newdata =your_data, type="risk",times = 6)