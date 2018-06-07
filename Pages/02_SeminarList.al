page 123456702 "Seminar List"
{
    PageType = List;
    SourceTable = Seminar;
    Caption = 'Seminar list';
    Editable = false;
    CardPageId = 123456701;
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("No."; "No.")
                {

                }
                field(Name; Name)
                {

                }
                field("Seminar Duration"; "Seminar Duration") { }
                field("Minimum Participants"; "Minimum Participants") { }
                field("Maximum Participants"; "Maximum Participants") { }
            }

        }
        area(factboxes)
        {
            systempart("Links"; Links) { }
            systempart("Notes"; Notes) { }
        }
    }

 actions
    {
        area(Navigation)
        {
            group("&Seminar")
            {
            
                // >> Lab 8 1-2 
                action("Ledger Entries")
                {
                    RunObject = page "Seminar Ledger Entries";
                    RunPageLink = "Seminar No." = field ("No.");
                    Promoted = true;
                    PromotedCategory = Process;
                    ShortcutKey = "Ctrl+F7";
                    Image = WarrantyLedger;
                }
                // << Lab 8 1-2
                // >> Lab 8 1-2
                action("&Registrations")
                {
                    RunObject = page "Seminar Registration List";
                    RunPageLink = "Seminar No." = field ("No.");
                    Image = Timesheet;
                    Promoted = true;
                    PromotedCategory = Process;
                }
                // << Lab 8 1-2 
                // >> Lab 8 1-2 area(Processing)

                action("Seminar Registration")
                {
                    RunObject = page "Seminar Registration";
                    RunPageLink = "Seminar No." = field ("No.");
                    RunPageMode = Create;
                    Image = NewTimesheet;
                    Promoted = true;
                    PromotedCategory = New;
                }
            }
            // << Lab 8 1-2

        }
    }



}