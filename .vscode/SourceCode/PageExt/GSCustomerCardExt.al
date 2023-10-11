pageextension 60101 "GS Customer Card Ext" extends "Customer Card"
{
    layout
    {
        addafter(Name)
        {
            field(isPatient; Rec.isPatient)
            {
                ApplicationArea = All;
            }

        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}