package controllers;

public class QurencyMoney {
 public static String dotThree(int n){//4.000.000
      
            // Counting number of digits
            int l = (int)Math.floor(Math.log10(n)) + 1;
            StringBuffer str = new StringBuffer("");
            int count = 0;
            int r = 0;
      
            // Checking if number of digits is greater than 3
            if (l > 3) {
      
                for (int i = l - 1; i >= 0; i--) {
      
                    r = n % 10;
                    n = n / 10;
                    count++;
                    if (((count % 3) == 0) && (i != 0)) {
      
                        // Parsing String value of Integer
                        str.append(String.valueOf(r));
      
                        // Appending the separator
                        str.append(".");
                    }
                    else
                        str.append(String.valueOf(r));
                }
                str.reverse();
            }
      
            // If digits less than equal to 3, directly print n
            else
                str.append(String.valueOf(n));
      
            return str.toString();
        }
    
    public static void main(String args[]){
        System.out.println(dotThree(4000)); 
    }
}
