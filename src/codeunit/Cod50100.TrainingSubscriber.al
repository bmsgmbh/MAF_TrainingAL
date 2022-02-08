codeunit 50100 "Training Subscriber"
{
    [EventSubscriber(ObjectType::Table, Database::"Training Header", 'OnAfterValidateEvent', 'Training Course Code', true, false)]
    local procedure SetEndDate_OnAfterValidate_TrainingCourseCode_TrainingHeader(var Rec: Record "Training Header"; var xRec: Record "Training Header"; CurrFieldNo: Integer)
    begin
        if rec.IsTemporary then
            exit;

        TrainingMgmt.CalcTrainingEndDate(Rec);
        TrainingMgmt.SetCourseDescription(Rec);
    end;

    [EventSubscriber(ObjectType::Table, Database::"Training Header", 'OnAfterValidateEvent', 'Start Date', true, false)]
    local procedure SetEndDate_OnAfterValidate_StartDate_TrainingHeader(var Rec: Record "Training Header"; var xRec: Record "Training Header"; CurrFieldNo: Integer)
    begin
        if rec.IsTemporary then
            exit;

        TrainingMgmt.CalcTrainingEndDate(Rec);
    end;

    var
        TrainingMgmt: Codeunit "Training Management";
}