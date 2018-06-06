pageextension 123456700 ResourceCardExt extends "Resource Card"
// CSD1.00 -2018-02--1 FLB
{
    layout
    {
        addlast(General){
            field("CSD_Resource Type";"CSD_Resource Type")
            {

            }
            field("CSD_Quantity Per Day";"CSD_Quantity Per Day"){

            }
        }
        addafter("Personal data"){
            group("Room")
            {
                field("CSD_Maximum Participants";"CSD_Maximum Participants")
                {
                    Visible = ShowMaxField;
                }
            }
        }
    }


    actions
    {
        // Add changes to page actions here
    }
    
    trigger OnOpenPage();

    begin;
        ShowMaxField := (Type = Type::Machine);
        CurrPage.Update(false)      
    end;
    var
        [InDataSet]
        ShowMaxField : Boolean;
}