# Select columns as a character vector
home_features <- zillow_oc_2017[,c('bathroomcnt', 'bedroomcnt', 'finishedsquarefeet', 'garagecarcnt', 'lotsizesquarefeet', 'regionidzip', 'yearbuilt', 'taxvaluedollarcnt', 'homevalue')]

# Filter for homes built since 2010
homes_built_after_2010 <- home_features[deframe(home_features['yearbuilt']) > 2010,] 

