table 123456704 "Seminar Comment Line"
// 5.3 side 161
{
    Caption = 'Seminar Comment Line';
    LookupPageId = "Seminar Comment List";
    DrillDownPageId = "Seminar Comment List";

    fields
    {
         field(10; "Table Name"; Option)
     {
        Caption = 'Table Name';
              OptionMembers = "Seminar", "Seminar Registration Header", "Posted Seminar Reg. Header";
              OptionCaption = 'Seminar,Seminar Registration Header,Posted Seminar Reg. Header';
     }
Field(20;"Document Line No.";Integer)
      { Caption='Document Line No.'; } 
      
      field(30;"No.";Code[20])
       { Caption='No.'; 
       TableRelation=if ("Table Name"=CONST(Seminar)) "Seminar" ;
        
        } 
        field(40;"Line No.";Integer) 
        { Caption='Line No.'; } 
        field(50;Date;Date) 
        { Caption = 'Date'; } 
        field(60;Code;Code[10])
         { Caption = 'Code'; } 
        field(70;Comment;Text[80])
          { 
              Caption = 'Comment';
           }
                
       }
    keys
    {
        key(PK;"Table Name","Document Line No.","No.","Line No.")
    {
        Clustered = true;
    }
    
    }
}