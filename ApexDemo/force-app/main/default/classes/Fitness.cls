public with sharing class Fitness {

    public Fitness() {

    }

    // Body Weight in Kg / (Body Height in Meter)^2
    public static Decimal calculateBMI(Decimal weight, Decimal height){
        Decimal result = (weight / (height*height));
        return result; 
    } 

    public static Decimal calculatePace(Decimal km, Decimal minutes){
        Decimal hr = minutes/60;
        return km/hr ;
    }   
}