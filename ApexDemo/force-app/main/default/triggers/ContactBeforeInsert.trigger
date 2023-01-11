trigger ContactBeforeInsert on Contact (before insert) {

    for(Contact con: Trigger.New){
        con.Description = 'Contact created from before insert';
    }

}