<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Customer_approved</fullName>
        <description>Customer approved</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/customer_approved_email_template</template>
    </alerts>
    <alerts>
        <fullName>New_Customer_Awaiting_Review</fullName>
        <description>New Customer Awaiting Review</description>
        <protected>false</protected>
        <recipients>
            <recipient>{!Environment.EmailAddressForAliOrg}</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/SchedulerUnauthenticatedUserAppointmentTypeEmailTemplateForAmazonChime</template>
    </alerts>
    <fieldUpdates>
        <fullName>Review_Status_Update</fullName>
        <field>Reviewed__c</field>
        <literalValue>Yes</literalValue>
        <name>Review Status Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>approval_status_update</fullName>
        <field>approval_status__c</field>
        <literalValue>Approved</literalValue>
        <name>approval status update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>approval_status_update_initial</fullName>
        <field>approval_status__c</field>
        <literalValue>Sumbit</literalValue>
        <name>approval status update initial</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <rules>
        <fullName>Workflow for Customer Type A</fullName>
        <actions>
            <name>New_Customer_Awaiting_Review</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Review_Status_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Review_New_Customer</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>POC_Customer__c.Reviewed__c</field>
            <operation>equals</operation>
            <value>No</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <tasks>
        <fullName>Review_New_Customer</fullName>
        <assignedTo>{!Environment.EmailAddressForAliOrg}</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>10</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <offsetFromField>POC_Customer__c.CreatedDate</offsetFromField>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>In Progress</status>
        <subject>Review New Customer</subject>
    </tasks>
</Workflow>
