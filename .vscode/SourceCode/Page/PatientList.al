page 60102 "Patient List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Customer;
    CardPageId = "Patient Card";
    SourceTableView = where(isPatient = filter(true));

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {

                field("No."; Rec."No.")
                {
                    ApplicationArea = All;

                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;

                }
                field(Address; Rec.Address)
                {
                    ApplicationArea = All;

                }
                field("Phone No."; Rec."Phone No.")
                {
                    ApplicationArea = All;

                }
                field(Specification; Rec.Specification)
                {
                    ApplicationArea = All;

                }
                field("E-Mail"; Rec."E-Mail")
                {
                    ApplicationArea = All;
                }


            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(Report)
            {
                ApplicationArea = All;

                trigger OnAction();

                begin

                end;
            }
        }
    }
}