trigger ClosedOpportunityTrigger on Opportunity (before insert, before update) {
    List<Task> listTasks = new List<Task>();
    for(Opportunity o: Trigger.New){
        if(o.StageName == 'Closed Won'){
            o.Pourcentage_Remise__c= 0.0;
            listTasks.add(new Task(Subject='Follow Up Test Task',WhatId=o.Id));
        }
    }
    insert listTasks;
}