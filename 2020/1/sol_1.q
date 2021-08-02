// Read the report as a list

lst: "I"$read0`:1.txt  // get'[read0`:1.txt]

//Find the elements whose 2020 complement exists

prd lst inter 2020-lst

// part 2 
// Wrap the above lambda in a function to calculate pairs that match a certain value

f: {lst inter x-lst}

// Apply the function to all values of 2020 - lst

prd distinct raze nums where 0<count each nums:f each 2020-lst

// ts 4 24192


// Alter:
// Pint a table with all possible pairs of lst and catch values where 2020 - sum[pairs] exist in lst

prd first select from (update c:2020-a+b from ([]a:l)cross([]b:l)) where c in lst

// ts 0 2623264



