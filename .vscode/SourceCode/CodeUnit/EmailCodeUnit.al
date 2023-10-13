codeunit 60100 EmailSend
{
    procedure SendEmailWithReport(CustomerID: Code[20])
    var
        // PatientReport: Report "Patient Report";
        Email: Codeunit Email;
        EmailMessage: Codeunit "Email Message";
        TempBlob: Codeunit "Temp Blob";
        Instr: InStream;
        OutStr: OutStream;
        ReportParameters: Text;
        CustomerRec: Record Customer;

    begin
        // ReportParameters := PatientReport.RunRequestPage();
        TempBlob.CreateOutStream(OutStr);
        Report.SaveAs(Report::"Patient Report", '', ReportFormat::Pdf, OutStr);
        TempBlob.CreateInStream(Instr);

        EmailMessage.Create(CustomerRec."E-Mail", 'This is your report', 'hELLO');
        EmailMessage.AddAttachment(CustomerRec.Name, 'PDF', Instr);
        If Email.Send(EmailMessage, Enum::"Email Scenario"::Default) then
            Message('Email Sent')
        else
            Message('Failed');
    end;
}
