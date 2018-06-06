pageextension 123456701 ResourceListExt extends "Resource List"
// Task 3
{
    layout
    {
            Modify(Type)
    {
        Visible = ShowType;

    }
    addafter(Type)
    {
     field("CSD_Resource Type"; "CSD_Resource Type")
      { } 
      field("CSD_Maximum Participants"; "CSD_Maximum Participants")
           { 
               Visible = ShowMaxField; 
               }
    }
    }

    actions
    {
        // Add changes to page actions here
    }
    
trigger OnOpenPage();
begin
    FilterGroup(3); 
    ShowType := (GetFilter(Type)=''); 
    ShowMaxField := (GetFilter(Type) = format(Type::machine)); 
    FilterGroup(0);


end;



    var
    [InDataSet]
       ShowType : Boolean;
      [InDataSet] 
      ShowMaxField : Boolean;

}