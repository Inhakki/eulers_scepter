  largePrime: function(num) {
        let factorArr =[];
        let s=Math.sqrt(num);

        //Finds all the factors of input
        for(i=1;i < s;i+=2){
            if (num % i === 0){
                factorArr.push(i); 
            }
        }
        
        //Filters out all non-prime numbers from factor array
        let primeArr =  factorArr.filter(x => {
            if(x % 3 !== 0 && (x === 5 || x % 5 !== 0) && (x === 7 || x % 7 !== 0)){return x}
        });

        //Returns greatest prime factor
        return  "Factors: " + factorArr + " ; Prime Array: " + primeArr + " ; Greatest Prime: " + primeArr[primeArr.length-1];
    }    

//Solution: largest prime factor of 600851475143 => 486847
