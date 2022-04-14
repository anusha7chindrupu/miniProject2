trigger createProjectAssignment on Project__c (after insert,after update) {
    if(trigger.isInsert){
         createProjectAssignments.create(trigger.new);
    }
    if(trigger.isUpdate){
         createProjectAssignments.updateProj(trigger.new);
        //createProjectAssignments.sendEmailtoemployee(trigger.new);
    }
   
   

}