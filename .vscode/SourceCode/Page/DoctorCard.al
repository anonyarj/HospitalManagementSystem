page 60101 "Doctor Card"
{
    PageType = Card;
    SourceTable = Doctor;


    layout
    {
        area(Content)
        {
            group(DoctorDetails)
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
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;

}