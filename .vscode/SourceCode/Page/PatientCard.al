page 60103 "Patient Card"
{
    PageType = Card;
    SourceTable = Customer;

    layout
    {
        area(Content)
        {
            group(GroupName)
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
            part(Lines; "Patient History")
            {
                ApplicationArea = All;
                SubPageLink = No = field("No.");

            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Report)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    Rec.Reset();
                    rec.SetRange("No.", Rec."No.");
                    Report.RunModal(60100, true, true, Rec);

                end;
            }
            action("Send Email")
            {
                ApplicationArea = All;

                trigger OnAction()
                var
                    EmailSend: Codeunit EmailSend;
                    CustomerRec: Record Customer;
                    CustomerID: Code[20];

                begin
                    CustomerID := Rec."No.";
                    IF NOT CustomerRec.GET(CustomerID) THEN BEGIN
                        ERROR('Invalid Customer ID');
                    END;
                    EmailSend.SendEmailWithReport(CustomerID);
                end;
            }
        }
    }

    var
        myInt: Integer;
}