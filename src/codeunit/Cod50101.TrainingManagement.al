codeunit 50101 "Training Management"
{
    procedure CalcTrainingEndDate(var TrainingHeader: Record "Training Header")
    var
        trainingCourse: Record "Training Course";
    begin
        if not trainingCourse.get(TrainingHeader."Training Course Code") then
            trainingCourse.Init();

        if Format(trainingCourse.Duration) <> '' then begin
            if TrainingHeader."Start Date" <> 0D then
                TrainingHeader."End Date" := CalcDate(trainingCourse.Duration, TrainingHeader."Start Date");
        end;
    end;

    procedure SetCourseDescription(var TrainingHeader: Record "Training Header")
    var
        trainingCourse: Record "Training Course";
    begin
        if not trainingCourse.get(TrainingHeader."Training Course Code") then
            trainingCourse.Init();

        TrainingHeader."Training Course Description" := trainingCourse.Description;
    end;
}