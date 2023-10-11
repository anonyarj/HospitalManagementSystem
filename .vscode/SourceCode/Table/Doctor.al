table 60100 Doctor
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; Doc_ID; Code[20])
        {
            DataClassification = CustomerContent;


        }
        field(2; "Doctor Name"; Text[30])
        {
            DataClassification = CustomerContent;

        }
        field(3; Specification; Enum "Specification")
        {
            DataClassification = CustomerContent;

        }
        field(4; No_Series; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }

    }

    keys
    {
        key(Key1; Doc_ID)
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    var
        SalesStp: Record "Sales & Receivables Setup";
        NoSeriesMgmt: Codeunit NoSeriesManagement;

    begin
        if Doc_ID = '' then begin
            SalesStp.Get();
            NoSeriesMgmt.InitSeries(SalesStp.DocID, SalesStp.DocID, Today, Doc_ID, No_Series);

        end

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}