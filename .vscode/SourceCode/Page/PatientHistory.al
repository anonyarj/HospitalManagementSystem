page 60104 "Patient History"
{
    PageType = ListPart;
    AutoSplitKey = true;
    SourceTable = "Patient History";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Date; Rec.Date)
                {
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = all;
                }
                field(Specification; Rec.Specification)
                {
                    ApplicationArea = All;
                }
                field("Appointed Doc"; Rec."Appointed Doc")
                {
                    ApplicationArea = All;
                }

            }
        }

    }

}