report 60100 "Patient Report"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = '.vscode/SourceCode/Report/ Patient Report.rdl';



    dataset
    {

        dataitem(DataItemName; Customer)
        {
            column(Name; Name) { }
            column(Address; Address) { }
            column(Phone_No_; "Phone No.") { }
            column(No_; "No.") { }


            dataitem("Patient History"; "Patient History")
            {
                DataItemLink = "No" = field("No.");
                column(Specification;
                Specification)
                { }
                column(Date; Date) { }
                column(Description; Description) { }
                column(Appointed_Doc; "Appointed Doc") { }

            }



        }
    }



}