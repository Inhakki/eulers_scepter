module.exports = {
euler35: function(num) {
  let sum = 0;
  for(i=0;i <= num; i++){
      if(i%3 ===0 || i%5 ===0){
          sum += i;
      }
  }
  return sum;
}

}

require('make-runnable');
