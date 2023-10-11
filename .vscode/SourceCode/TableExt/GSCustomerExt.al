tableextension 60100 "GS Customer Table Ext" extends Customer
{
    fields
    {
        field(60100; isPatient; Boolean)
        {
            DataClassification = CustomerContent;
        }
        field(60101; Specification; Enum Specification)
        {
            DataClassification = CustomerContent;
            
        }

    }

    var
        myInt: Integer;

    trigger OnInsert()
    var
        SpecificationDoc: Record Doctor;
    begin
        SpecificationDoc.Reset();
        SpecificationDoc.Get();



    end;
}