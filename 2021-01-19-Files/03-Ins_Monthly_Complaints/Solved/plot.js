// Create the Trace
var trace1 = {
  x: month_data[0],
  y: month_data[1],
  type: "line"
};

// Create the data array for the plot
var data = [trace1];

// Define the plot layout
var layout = {
  title: "2019 Complaints by Month",
  yaxis: {rangemode: "tozero"},
  height: 750
};

// Plot the chart to a div tag with id "plot"
Plotly.newPlot("plot", data, layout);
