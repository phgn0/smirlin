/// scrViewController_transformCoords(from_abstract_coords, x, y): [newx, newy]
/// transform coordinates from abstracted (2d) to real drawing coordinates 
/// (or in the other direction dependingon from_abstract_coords). 

// transform coords according to view
return scrIsometricView_transformCoords(argument[0], argument[1], argument[2]);
