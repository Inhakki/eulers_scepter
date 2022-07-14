fibEven: function() {
      let limit= 0;
      let sum= 0;
    
      for(i=0;limit<=4000000;i++){
        //calculates Fibonacci
        limit=Math.round((Math.pow(1.618034,i) - Math.pow(1-1.618034,i))/Math.sqrt(5));
        
        //adds to sum if current Fibonacci number is even 
        if(limit%2===0 && limit < 4000000){
            sum += limit;
        }
      }
      return sum;
      // calculated sum = 1089154
    }    
