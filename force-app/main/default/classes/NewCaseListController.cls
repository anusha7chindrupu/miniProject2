public class NewCaseListController {

    public List<Case> getNewCases(){
        List<Case> filterList = [Select ID, CaseNumber from Case where status ='New'];
        return filterList;
    }
}