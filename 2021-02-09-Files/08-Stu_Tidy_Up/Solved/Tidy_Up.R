# Calculate the total square feet combining `finishedsquarefeet` & `garagetotalsqft`
zillow_oc_2017 <- zillow_oc_2017 %>% mutate(totalsquarefeet=finishedsquarefeet + garagetotalsqft) 

# Calculate a summary table of statistics by zipcode
zillow_oc_2017_summary <- zillow_oc_2017 %>% group_by(regionidzip) %>% summarize(
                                                                        Mean_Total_SqFt=mean(totalsquarefeet), 
                                                                        Number_of_Homes=n(), 
                                                                        Number_of_Pools=sum(poolcnt), 
                                                                        Median_Bedrooms=median(bedroomcnt), 
                                                                        Median_Bathrooms=median(bathroomcnt))