trigger insertContact on Account (before insert) {
    //committing into Org1
Contact cont = new Contact();
cont.LastName = Trigger.new[0].name;
cont.AccountId = Trigger.new[0].ID; 
insert cont;
}