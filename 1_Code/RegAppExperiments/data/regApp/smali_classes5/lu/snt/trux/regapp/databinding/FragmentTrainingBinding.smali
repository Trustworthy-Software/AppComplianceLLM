.class public final Llu/snt/trux/regapp/databinding/FragmentTrainingBinding;
.super Ljava/lang/Object;
.source "FragmentTrainingBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final buttonAddTraining:Landroidx/appcompat/widget/AppCompatButton;

.field public final editTextDate:Landroid/widget/EditText;

.field public final editTextDuration:Landroid/widget/EditText;

.field public final noGpsMessageTextView:Landroid/widget/TextView;

.field public final osmMapView:Lorg/osmdroid/views/MapView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final spinnerIntensity:Landroid/widget/Spinner;

.field public final textViewIntensityLabel:Landroid/widget/TextView;

.field public final textViewPositionLabel:Landroid/widget/TextView;

.field public final trainingCard:Landroidx/cardview/widget/CardView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/appcompat/widget/AppCompatButton;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/TextView;Lorg/osmdroid/views/MapView;Landroid/widget/Spinner;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/cardview/widget/CardView;)V
    .locals 0
    .param p1, "rootView"    # Landroidx/constraintlayout/widget/ConstraintLayout;
    .param p2, "buttonAddTraining"    # Landroidx/appcompat/widget/AppCompatButton;
    .param p3, "editTextDate"    # Landroid/widget/EditText;
    .param p4, "editTextDuration"    # Landroid/widget/EditText;
    .param p5, "noGpsMessageTextView"    # Landroid/widget/TextView;
    .param p6, "osmMapView"    # Lorg/osmdroid/views/MapView;
    .param p7, "spinnerIntensity"    # Landroid/widget/Spinner;
    .param p8, "textViewIntensityLabel"    # Landroid/widget/TextView;
    .param p9, "textViewPositionLabel"    # Landroid/widget/TextView;
    .param p10, "trainingCard"    # Landroidx/cardview/widget/CardView;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Llu/snt/trux/regapp/databinding/FragmentTrainingBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 61
    iput-object p2, p0, Llu/snt/trux/regapp/databinding/FragmentTrainingBinding;->buttonAddTraining:Landroidx/appcompat/widget/AppCompatButton;

    .line 62
    iput-object p3, p0, Llu/snt/trux/regapp/databinding/FragmentTrainingBinding;->editTextDate:Landroid/widget/EditText;

    .line 63
    iput-object p4, p0, Llu/snt/trux/regapp/databinding/FragmentTrainingBinding;->editTextDuration:Landroid/widget/EditText;

    .line 64
    iput-object p5, p0, Llu/snt/trux/regapp/databinding/FragmentTrainingBinding;->noGpsMessageTextView:Landroid/widget/TextView;

    .line 65
    iput-object p6, p0, Llu/snt/trux/regapp/databinding/FragmentTrainingBinding;->osmMapView:Lorg/osmdroid/views/MapView;

    .line 66
    iput-object p7, p0, Llu/snt/trux/regapp/databinding/FragmentTrainingBinding;->spinnerIntensity:Landroid/widget/Spinner;

    .line 67
    iput-object p8, p0, Llu/snt/trux/regapp/databinding/FragmentTrainingBinding;->textViewIntensityLabel:Landroid/widget/TextView;

    .line 68
    iput-object p9, p0, Llu/snt/trux/regapp/databinding/FragmentTrainingBinding;->textViewPositionLabel:Landroid/widget/TextView;

    .line 69
    iput-object p10, p0, Llu/snt/trux/regapp/databinding/FragmentTrainingBinding;->trainingCard:Landroidx/cardview/widget/CardView;

    .line 70
    return-void
.end method

.method public static bind(Landroid/view/View;)Llu/snt/trux/regapp/databinding/FragmentTrainingBinding;
    .locals 23
    .param p0, "rootView"    # Landroid/view/View;

    .line 99
    move-object/from16 v0, p0

    sget v1, Llu/snt/trux/regapp/R$id;->buttonAddTraining:I

    .line 100
    .local v1, "id":I
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/AppCompatButton;

    .line 101
    .local v2, "buttonAddTraining":Landroidx/appcompat/widget/AppCompatButton;
    if-eqz v2, :cond_8

    .line 105
    sget v1, Llu/snt/trux/regapp/R$id;->editTextDate:I

    .line 106
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroid/widget/EditText;

    .line 107
    .local v14, "editTextDate":Landroid/widget/EditText;
    if-eqz v14, :cond_7

    .line 111
    sget v1, Llu/snt/trux/regapp/R$id;->editTextDuration:I

    .line 112
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroid/widget/EditText;

    .line 113
    .local v15, "editTextDuration":Landroid/widget/EditText;
    if-eqz v15, :cond_6

    .line 117
    sget v1, Llu/snt/trux/regapp/R$id;->noGpsMessageTextView:I

    .line 118
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Landroid/widget/TextView;

    .line 119
    .local v16, "noGpsMessageTextView":Landroid/widget/TextView;
    if-eqz v16, :cond_5

    .line 123
    sget v1, Llu/snt/trux/regapp/R$id;->osmMapView:I

    .line 124
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Lorg/osmdroid/views/MapView;

    .line 125
    .local v17, "osmMapView":Lorg/osmdroid/views/MapView;
    if-eqz v17, :cond_4

    .line 129
    sget v1, Llu/snt/trux/regapp/R$id;->spinnerIntensity:I

    .line 130
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Landroid/widget/Spinner;

    .line 131
    .local v18, "spinnerIntensity":Landroid/widget/Spinner;
    if-eqz v18, :cond_3

    .line 135
    sget v1, Llu/snt/trux/regapp/R$id;->textViewIntensityLabel:I

    .line 136
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Landroid/widget/TextView;

    .line 137
    .local v19, "textViewIntensityLabel":Landroid/widget/TextView;
    if-eqz v19, :cond_2

    .line 141
    sget v1, Llu/snt/trux/regapp/R$id;->textViewPositionLabel:I

    .line 142
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v20, v3

    check-cast v20, Landroid/widget/TextView;

    .line 143
    .local v20, "textViewPositionLabel":Landroid/widget/TextView;
    if-eqz v20, :cond_1

    .line 147
    sget v1, Llu/snt/trux/regapp/R$id;->trainingCard:I

    .line 148
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v21, v3

    check-cast v21, Landroidx/cardview/widget/CardView;

    .line 149
    .local v21, "trainingCard":Landroidx/cardview/widget/CardView;
    if-eqz v21, :cond_0

    .line 153
    new-instance v22, Llu/snt/trux/regapp/databinding/FragmentTrainingBinding;

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object/from16 v3, v22

    move-object v5, v2

    move-object v6, v14

    move-object v7, v15

    move-object/from16 v8, v16

    move-object/from16 v9, v17

    move-object/from16 v10, v18

    move-object/from16 v11, v19

    move-object/from16 v12, v20

    move-object/from16 v13, v21

    invoke-direct/range {v3 .. v13}, Llu/snt/trux/regapp/databinding/FragmentTrainingBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/appcompat/widget/AppCompatButton;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/TextView;Lorg/osmdroid/views/MapView;Landroid/widget/Spinner;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/cardview/widget/CardView;)V

    return-object v22

    .line 150
    :cond_0
    goto :goto_0

    .line 144
    .end local v21    # "trainingCard":Landroidx/cardview/widget/CardView;
    :cond_1
    goto :goto_0

    .line 138
    .end local v20    # "textViewPositionLabel":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 132
    .end local v19    # "textViewIntensityLabel":Landroid/widget/TextView;
    :cond_3
    goto :goto_0

    .line 126
    .end local v18    # "spinnerIntensity":Landroid/widget/Spinner;
    :cond_4
    goto :goto_0

    .line 120
    .end local v17    # "osmMapView":Lorg/osmdroid/views/MapView;
    :cond_5
    goto :goto_0

    .line 114
    .end local v16    # "noGpsMessageTextView":Landroid/widget/TextView;
    :cond_6
    goto :goto_0

    .line 108
    .end local v15    # "editTextDuration":Landroid/widget/EditText;
    :cond_7
    goto :goto_0

    .line 102
    .end local v14    # "editTextDate":Landroid/widget/EditText;
    :cond_8
    nop

    .line 157
    .end local v2    # "buttonAddTraining":Landroidx/appcompat/widget/AppCompatButton;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 158
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Llu/snt/trux/regapp/databinding/FragmentTrainingBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 80
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Llu/snt/trux/regapp/databinding/FragmentTrainingBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Llu/snt/trux/regapp/databinding/FragmentTrainingBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Llu/snt/trux/regapp/databinding/FragmentTrainingBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 86
    sget v0, Llu/snt/trux/regapp/R$layout;->fragment_training:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 87
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 88
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 90
    :cond_0
    invoke-static {v0}, Llu/snt/trux/regapp/databinding/FragmentTrainingBinding;->bind(Landroid/view/View;)Llu/snt/trux/regapp/databinding/FragmentTrainingBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 23
    invoke-virtual {p0}, Llu/snt/trux/regapp/databinding/FragmentTrainingBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 75
    iget-object v0, p0, Llu/snt/trux/regapp/databinding/FragmentTrainingBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
