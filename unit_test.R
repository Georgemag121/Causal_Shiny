# Unit test

testdata <- read.csv("data/simpletest.csv", header = T)
fit1 <- bartc(testdata$Outcome, testdata$Treatment, testdata[, 1:2], estimand = "ate")
cpsdat <- read.csv("data/cps.csv", header = T)
fit2 <- bartc(cpsdat$re78t, cpsdat$treat, cpsdat$age + cpsdat$educ + cpsdat$re74t, estimand = "ate", method.trt = "glm", p.scoreAsCovariate = T, method.rsp = "bart", commonSup.rule = "sd")
fit3 <- bartc(cpsdat$re78t, cpsdat$treat, cpsdat$age + cpsdat$black + cpsdat$re74t, estimand = "ate", method.trt = "glm", p.scoreAsCovariate = T, method.rsp = "bart", commonSup.rule = "sd", group.by = cpsdat$educ)
