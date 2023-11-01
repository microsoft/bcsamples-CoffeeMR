pageextension 70033 CoffeeItem extends "Item Card"
{
    layout
    {
        addlast(Item)
        {
            field(IsAvialableForFieldWorker; Rec.IsAvialableForFieldWorker)
            {
                ApplicationArea = All;
                Editable = true;
            }

            field(uploadModel3d; uploadModelLabel)
            {
                ApplicationArea = All;
                ShowCaption = false;
                Editable = false;
                trigger OnDrillDown()
                var
                    model3DStream: InStream;
                    model3DOutStream: OutStream;
                    fromFile: Text;
                begin
                    if UploadIntoStream('Upload 3D model', '', '', fromFile, model3DStream)
                    then begin
                        Clear(Rec.Model3D);
                        Rec.Model3D.CreateOutStream(model3DOutStream);
                        CopyStream(model3DOutStream, model3DStream);
                        Rec.Modify(true);
                        Message('Model uploaded successfully');
                    end
                    else
                        Message('Upload canceled');
                end;
            }
        }
    }

    trigger OnAfterGetRecord()
    begin
        Rec.SetAutoCalcFields(Model3D);

        uploadModelLabel := 'Upload model';
        if Rec.Model3D.HasValue then
            uploadModelLabel := 'Overwrite model';
    end;

    var
        uploadModelLabel: Text;
}