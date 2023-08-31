trigger POCCustomerTrigger on POC_Customer__c (before insert, before update, after insert, after update, before delete, after delete) {
    if(Trigger.isBefore && (Trigger.isInsert || Trigger.isUpdate)) {
        POCCustomerService.setExternalId(Trigger.new);
    }
}