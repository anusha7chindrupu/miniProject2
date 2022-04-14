trigger createAtaskforProject1 on Project__c (before insert,after Update) {
LIST<Task> tasks = new LIST<Task>();
    list<Project__c> Projectlist = new list<Project__c>([SELECT Name,Project_Stage__c FROM Project__c]);

    for(Project__c Proj:Projectlist){
        
        if(Proj.Project_Stage__c == 'Draft'){
            
             tasks.add(new Task(whatID = Proj.id, Subject='Create Project Assignments before the Start Date of the Project.'));
            
        }
    }
    
insert tasks;
}