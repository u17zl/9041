
function sum(list) {

  // PUT YOUR CODE HERE
  // console.log(list[0])
  if (list == false){
  	return 0
  }else{
  	const sum = list.reduce((total,num)=>parseInt(total)+parseInt(num),);
  	return sum
  }
  
}

module.exports = sum;
