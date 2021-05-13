
// Set variables from Filter activity
let locationZip = 94123;
let locationType = "Financial Services";
let city = "San Francisco";

// Perform filter from Filter activity
let zipTypeFiltered = data.filter(
  (location) =>
    location["Source Zipcode"] === locationZip &&
    location["NAICS Code Description"] === locationType
);

// Check number of results in filtered data
if (zipTypeFiltered.length > 100) {
  // Print to console if results greater than 100
  console.log("In zipcode ", locationZip, " there are over 100 financial service companies.");
} else if (zipTypeFiltered.length > 50) {
  // Print to console if results greater than 50
  console.log("In zipcode ", locationZip, " there are over 50 financial service companies.");
} else {
  console.log("In zipcode ", locationZip, " there are less than 50 financial service companies.");
}

// Check number of results in filtered data and for San Francisco
if (city === "San Francisco" && zipTypeFiltered.length > 100) {
  // Print to console if results greater than 100 and for San Francisco
  console.log(
    "In San Francisco's zipcode ",
    locationZip,
    " there are over 100 financial service comapnies."
  );
} else if (zipTypeFiltered.length > 100) {
  // Print to console if results greater than 100 and not for San Francisco
  console.log(
    "The zip code ",
    locationZip,
    " is not in San Francisco but there are over 100 financial service comapnies."
  );
}
// No else statement here means nothing will excute if the number of cities is less
// than or equal to 100.

// If variable locationZip contains a value perform the filter
if (locationZip) {
  // Re-assigning the `zipTypeFiltered` variable from above
  // needs no `let` declaration here
  zipTypeFiltered = data.filter(
    (location) =>
      location["Source Zipcode"] === locationZip &&
      location["NAICS Code Description"] === locationType
  );

  console.log(zipTypeFiltered);
}