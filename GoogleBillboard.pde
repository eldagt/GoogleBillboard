public class PrimeFinder {
    public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  

    public void setup() {
        for (int i = 0; i < e.length() - 10; i++) {
            String digits = e.substring(i + 1, i + 11); 
            double dNum = Double.parseDouble(digits);  
            
            if (isPrime(dNum)) {
                processPrime(dNum); 
                break;  
            }
        }
    }

    public boolean isPrime(double dNum) {   
        long num = (long) dNum;  
        if (num <= 1) {
            return false; 
        }
        for (long i = 2; i <= Math.sqrt(num); i++) {
            if (num % i == 0) {
                return false; 
            }
        }
        return true;  
    }

    public void draw() {  
    }
}
