table 60101 "Patient History"
{
    DataClassification = CustomerContent;

    fields
    {
        field(7; No; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = customer."No.";
            // trigger OnValidate()

            // begin
            //     Cust.Reset();
            //     if cust.get(No) then
            //         Specification := Cust.Specification;
            // end;
        }

        field(1; Date; Date)
        {
            DataClassification = CustomerContent;

        }
        field(2; Description; Text[50])
        {
            DataClassification = CustomerContent;

        }
        field(3; "Appointed Doc"; Text[30])
        {

            TableRelation = Doctor where(Specification = field(Specification));
        }
        field(6; "Line No."; Integer)
        {
            DataClassification = CustomerContent;
        }
        field(8; Specification; Enum Specification)
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Key1; No, "Line No.")
        {
            Clustered = true;
        }
    }

    var
        Cust: Record Customer;

    trigger OnInsert()

    begin
        Cust.Reset();
        if cust.get(No) then
            Specification := Cust.Specification;
    end;

    trigger OnModify()
    begin
        Cust.Reset();
        if cust.get(No) then
            Specification := Cust.Specification;
    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}