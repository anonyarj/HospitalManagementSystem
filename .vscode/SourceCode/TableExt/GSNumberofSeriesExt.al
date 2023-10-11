tableextension 60101 "GS Sales Number of series" extends "Sales & Receivables Setup"
{
    fields
    {
        field(60101; DocID; Code[20])
        {
            DataClassification = CustomerContent;

            TableRelation = "No. Series";

        }
    }

    var
        myInt: Integer;
}