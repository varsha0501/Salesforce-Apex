public with sharing class WrapperClassCompanyClient {

    public String companyName;
    public String ceo;
    public Integer companyCount;
    public Long revenue;  

    // List of all customers 
    // Here LIST TYPE is CLASS
    private List<Customers> customerList =  new List<Customers>();

    
    public WrapperClassCompanyClient(String companyName, String ceo, Integer companyCount, Long revenue) {
        this.companyName = companyName;
        this.ceo = ceo ;
        this.companyCount = companyCount ;
        this.revenue = revenue ;
    }

    public void addCustomers(String clientName, String website, String email, long phone){
        Customers cust = new Customers(clientName,website,email,phone);
        customerList.add(cust);
    }

    public void getCustomers(){
        for(Customers c: customerList){
            System.debug('clientName:'+c.clientName+' website:'+c.website+' email:'+c.email+' phone:'+c.phone);
        } 
    }

    //Used as Inner Class/Wrapper
    public class Customers{

        public String clientName;
        public String website;
        public String email;
        public Long phone;

        public Customers(String clientName, String website, String email, long phone){
            this.clientName = clientName;
            this.website = website;
            this.email = email;
            this.phone = phone;
        }

    }
}