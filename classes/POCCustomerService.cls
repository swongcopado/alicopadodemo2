public without sharing class POCCustomerService {

    public static void setExternalId(List<POC_Customer__c> pocCustomers) {
        for(POC_Customer__c pocCusotmer : pocCustomers) {
            pocCusotmer.External_ID__c = pocCusotmer.Last_Name__c + '-' + pocCusotmer.First_Name__c + '-' + pocCusotmer.Mobile_Number__c;
        }
    }
}