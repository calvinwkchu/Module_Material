# Create a function to filter based upon number of beds, bathrooms, car count, and finished square feet
similar_homes <- function(data, bed, bth, car, fin_sqft){

  filtered_data <- data[deframe(data['bedroomcnt']) == bed & 
                          deframe(data['bathroomcnt']) == bth & 
                          deframe(data['garagecarcnt']) == car & 
                          deframe(data['finishedsquarefeet']) >= (fin_sqft - 100) & 
                          deframe(data['finishedsquarefeet']) <= (fin_sqft + 100),] 

  return (filtered_data)
}

# Use the function to identify 3 bedroom, 2 bathroom, & 3 car garage homes 
zillow_oc_3bd_2ba_3car_2ksqft <- similar_homes(zillow_oc_2017, 3, 2, 3, 2000)