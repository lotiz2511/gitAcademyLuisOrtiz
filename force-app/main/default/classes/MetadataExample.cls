public class MetadataExample {
    public void updateMetadata(){
        Metadata.CustomMetadata customMetadata = New Metadata.CustomMetadata();
        customMetadata.fullName = 'MyNamespace__MyMetadataTypeName.MyMetadataRecordName';
        
        Metadata.CustomMetadataValue customField  = New Metadata.CustomMetadataValue();
        customField.field = 'customField__c';
        customField.value = 'New value';        
        customMetadata.values.add(customField);
        
        Metadata.DeployContainer deployContainer = New Metadata.DeployContainer();
        deployContainer.addMetadata(customMetadata);
        Id asyncResultId = Metadata.Operations.enqueueDeployment(deployContainer, null);
    }
}