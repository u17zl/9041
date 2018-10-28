function species_count(target_species, whale_list) {

  // PUT YOUR CODE HERE
  var sum=0;
  for(var i = 0; i < whale_list.length; i++){
  	if(whale_list[i].species == target_species){
  		sum += parseInt(whale_list[i].how_many)
  	}
  }
  return sum
}

module.exports = species_count;
