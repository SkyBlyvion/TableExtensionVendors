pageextension 50050 VendorCardExtension extends "Vendor Card"
{
    layout
    {
        // Adding fields to the General group
        addlast(General)
        {
            field("Date de création"; Rec."Date de création")
            {
                ApplicationArea = All;
                ToolTip = 'Affiche la date de création de la fiche fournisseur.';
            }

            field(Incoterm; Rec.Incoterm)
            {
                ApplicationArea = All;
                ToolTip = 'Affiche les Incoterms applicables au fournisseur.';
            }

            field(Remise; Rec.Remise)
            {
                ApplicationArea = All;
                ToolTip = 'Affiche la remise accordée par le fournisseur.';
            }

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

            field("E-Mail 2"; Rec."E-Mail 2")
            {
                ApplicationArea = All;
                ToolTip = 'Affiche une adresse e-mail secondaire pour le fournisseur.';
            }
        }
    }

    actions
    {
        // Add custom actions here if necessary
    }
}
