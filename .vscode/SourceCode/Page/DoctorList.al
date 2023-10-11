page 60100 "Doctor List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Doctor;
    CardPageId = "Doctor Card";

    layout
    {
        area(Content)
        {
            repeater(DoctorDetails)
            {
                field(Doc_ID; Rec.Doc_ID)
                {
                    ApplicationArea = All;

                }
                field("Doctor Name"; Rec."Doctor Name")
                {
                    ApplicationArea = All;


                }
                field(Specification; Rec.Specification)
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
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                end;
            }
        }
    }
}