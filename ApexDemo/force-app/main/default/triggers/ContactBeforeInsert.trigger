trigger ContactBeforeInsert on Contact (before insert) {

    for(Contact con: Trigger.New){
        System.debug('Trigger.New----'+trigger.new);
        con.Description = 'Contact created from before insert';
    }

}