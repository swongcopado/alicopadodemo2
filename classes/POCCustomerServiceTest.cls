@isTest
public without sharing class POCCustomerServiceTest {
    @isTest
    public static void POCCustomerServiceTest() {
        POC_Customer__c POCCustomer = new POC_Customer__c();
        POCCustomer.First_Name__c = 'Test';
        POCCustomer.Last_Name__c = 'Test';
        POCCustomer.Mobile_Number__c = '12345678901';
        POCCustomer.Country_Code__c = 'KR';
        POCCustomer.First_Name__c = 'Test';
        POCCustomer.First_Name__c = 'Test';
        POCCustomer.Reviewed__c = 'Yes';
        insert POCCustomer;
    }
}