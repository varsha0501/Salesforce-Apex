public with sharing class BlocksInitialization {
    
    public BlocksInitialization() { 
        System.debug('Default Constructor called');
    }

    public BlocksInitialization(integer no) {
        this();
        System.debug('Parameterized Constructor called');
    }

    {
        System.debug('Initialization Block 1 Called');
    }

    static{
        System.debug('Static Initialization Block 1 Called');
    }
}