pageextension 50012 VendorCardExtension extends "Vendor Card"
{
    layout
    {
        // Adding fields to the General group
        addafter("Last Date Modified")
        {
            field("Date de création"; Rec."Date de création")
            {
                ApplicationArea = All;
                ToolTip = 'Affiche la date de création de la fiche fournisseur.';
            }
        }

        // Adding fields to the Address & Contact group
        addafter("E-Mail")
        {
            field("E-Mail 2"; Rec."E-Mail 2")
            {
                ApplicationArea = All;
                ToolTip = 'Affiche une adresse e-mail secondaire pour le fournisseur.';
            }
        }

        // Adding fields to the Receiving group
        addlast(Receiving)
        {
            field("Port destination"; Rec."Port destination")
            {
                ApplicationArea = All;
                ToolTip = 'Affiche le port de destination des marchandises.';
            }

            field("Port of Loading"; Rec."Port of Loading")
            {
                ApplicationArea = All;
                ToolTip = 'Affiche le port de chargement des marchandises.';
            }
            field(Incoterm; Rec.Incoterm)
            {
                ApplicationArea = All;
            }
            field(Remise; Rec.Remise)
            {
                ApplicationArea = All;
                ToolTip = 'Affiche la remise accordée par le fournisseur.';
            }
        }
    }

    actions
    {
        // Add custom actions here if necessary
    }

    trigger OnOpenPage()
    var
        VendorRec: Record Vendor;
    begin
        VendorRec.Get(Rec."No.");
        if VendorRec."Date de création" = 0D then begin
            VendorRec."Date de création" := Today();
            VendorRec.Modify(true);
        end;
    end;
}
