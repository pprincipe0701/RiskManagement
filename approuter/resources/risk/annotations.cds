using RiskService as service from '../../srv/risk-service';

annotate RiskService.Risks with @(
    UI : {
        HeaderInfo  : {            
            TypeName : 'Risk',
            TypeNamePlural : 'Risks',
            Title: {
                $Type: 'UI.DataField',
                Value: title
            },
            Description: {
                $Type: 'UI.DataField',
                Value: descr
            }
        },
        SelectionFields  : [prio],
        Identification  : [
            {Value:title}
        ],
        LineItem  : [
            {Value: title},
            {Value: miti_ID},
            {Value: owner},
            {Value : bp_BusinessPartner},
            {
                Value: prio,
                Criticality:criticality
            },
            {
                Value: impact,
                Criticality: criticality
            }
        ]
    }
);
annotate RiskService.Risks with @(UI : {
Facets  : [
    {
        $Type: 'UI.ReferenceFacet',
        Label: 'Mainx',
        Target: '@UI.FieldGroup#Main'
    }
],
FieldGroup #Main : {
    Data:[
        {Value: miti_ID},        
        {Value: owner},
         {Value : bp_BusinessPartner},
        {
                Value: prio,
                Criticality:criticality
        },
        {
                Value: impact,
                Criticality: criticality
        }
    ]
    
}
});