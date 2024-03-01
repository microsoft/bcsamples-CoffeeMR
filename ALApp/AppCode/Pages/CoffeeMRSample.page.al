page 70030 "Coffee MR Sample"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption = 'Coffee MR Sample';

    layout
    {
        area(Content)
        {
            label(Description)
            {
                Caption = 'This is a sample page to simplify the generation and management of demo data for the Coffee MR sample. To use the mixed reality model rendering, you have to upload a 3D model to the using the Business Central Item page.';
                ApplicationArea = All;
            }
            field(SampleAppDocumentation; SampleAppDocumentationLabel)
            {
                ApplicationArea = All;
                ShowCaption = false;

                trigger OnDrillDown()
                begin
                    Hyperlink('https://github.com/microsoft/bcsamples-CoffeeMR/?tab=readme-ov-file#preview-business-central-samples---coffee-mr');
                end;
            }
            part(CoffeeItemsList; CoffeeItemsListPart)
            {
                Caption = 'Coffee MR Items';
            }
        }
    }

    actions
    {
        area(Promoted)
        {
            actionref(PromotedGenerateTestData; GenerateTestData)
            {
            }
            actionref(PromotedItems; Items)
            {
            }
        }
        area(Processing)
        {
            action(GenerateTestData)
            {
                Caption = 'Generate sample Data';
                ApplicationArea = All;
                trigger OnAction()
                var
                    myCodeUnit: Codeunit CoffeDemoDataGenerator;
                begin
                    myCodeUnit.GenerateDemoData();
                end;
            }

            action(Items)
            {
                Caption = 'Go to Items';
                ApplicationArea = All;
                trigger OnAction()
                begin
                    // Navigate to the Items page
                    Page.Run(31);
                end;
            }
        }
    }
    var
        SampleAppDocumentationLabel: Label 'Coffee MR Sample Documentation';
}