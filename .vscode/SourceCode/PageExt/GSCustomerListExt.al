pageextension 60100 "GS Customer List Ext" extends "Customer List"
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