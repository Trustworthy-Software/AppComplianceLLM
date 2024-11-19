.class public final Llu/snt/trux/koopaapp/databinding/CardTrainingBinding;
.super Ljava/lang/Object;
.source "CardTrainingBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final labelIntensity:Landroid/widget/TextView;

.field public final labelLocation:Landroid/widget/TextView;

.field private final rootView:Landroidx/cardview/widget/CardView;

.field public final textTrainingDate:Landroid/widget/TextView;

.field public final textTrainingDuration:Landroid/widget/TextView;

.field public final textTrainingIntensity:Landroid/widget/TextView;

.field public final textTrainingLocation:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/cardview/widget/CardView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroidx/cardview/widget/CardView;
    .param p2, "labelIntensity"    # Landroid/widget/TextView;
    .param p3, "labelLocation"    # Landroid/widget/TextView;
    .param p4, "textTrainingDate"    # Landroid/widget/TextView;
    .param p5, "textTrainingDuration"    # Landroid/widget/TextView;
    .param p6, "textTrainingIntensity"    # Landroid/widget/TextView;
    .param p7, "textTrainingLocation"    # Landroid/widget/TextView;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Llu/snt/trux/koopaapp/databinding/CardTrainingBinding;->rootView:Landroidx/cardview/widget/CardView;

    .line 45
    iput-object p2, p0, Llu/snt/trux/koopaapp/databinding/CardTrainingBinding;->labelIntensity:Landroid/widget/TextView;

    .line 46
    iput-object p3, p0, Llu/snt/trux/koopaapp/databinding/CardTrainingBinding;->labelLocation:Landroid/widget/TextView;

    .line 47
    iput-object p4, p0, Llu/snt/trux/koopaapp/databinding/CardTrainingBinding;->textTrainingDate:Landroid/widget/TextView;

    .line 48
    iput-object p5, p0, Llu/snt/trux/koopaapp/databinding/CardTrainingBinding;->textTrainingDuration:Landroid/widget/TextView;

    .line 49
    iput-object p6, p0, Llu/snt/trux/koopaapp/databinding/CardTrainingBinding;->textTrainingIntensity:Landroid/widget/TextView;

    .line 50
    iput-object p7, p0, Llu/snt/trux/koopaapp/databinding/CardTrainingBinding;->textTrainingLocation:Landroid/widget/TextView;

    .line 51
    return-void
.end method

.method public static bind(Landroid/view/View;)Llu/snt/trux/koopaapp/databinding/CardTrainingBinding;
    .locals 17
    .param p0, "rootView"    # Landroid/view/View;

    .line 80
    move-object/from16 v0, p0

    sget v1, Llu/snt/trux/koopaapp/R$id;->labelIntensity:I

    .line 81
    .local v1, "id":I
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 82
    .local v2, "labelIntensity":Landroid/widget/TextView;
    if-eqz v2, :cond_5

    .line 86
    sget v1, Llu/snt/trux/koopaapp/R$id;->labelLocation:I

    .line 87
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Landroid/widget/TextView;

    .line 88
    .local v11, "labelLocation":Landroid/widget/TextView;
    if-eqz v11, :cond_4

    .line 92
    sget v1, Llu/snt/trux/koopaapp/R$id;->textTrainingDate:I

    .line 93
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Landroid/widget/TextView;

    .line 94
    .local v12, "textTrainingDate":Landroid/widget/TextView;
    if-eqz v12, :cond_3

    .line 98
    sget v1, Llu/snt/trux/koopaapp/R$id;->textTrainingDuration:I

    .line 99
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Landroid/widget/TextView;

    .line 100
    .local v13, "textTrainingDuration":Landroid/widget/TextView;
    if-eqz v13, :cond_2

    .line 104
    sget v1, Llu/snt/trux/koopaapp/R$id;->textTrainingIntensity:I

    .line 105
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroid/widget/TextView;

    .line 106
    .local v14, "textTrainingIntensity":Landroid/widget/TextView;
    if-eqz v14, :cond_1

    .line 110
    sget v1, Llu/snt/trux/koopaapp/R$id;->textTrainingLocation:I

    .line 111
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroid/widget/TextView;

    .line 112
    .local v15, "textTrainingLocation":Landroid/widget/TextView;
    if-eqz v15, :cond_0

    .line 116
    new-instance v16, Llu/snt/trux/koopaapp/databinding/CardTrainingBinding;

    move-object v4, v0

    check-cast v4, Landroidx/cardview/widget/CardView;

    move-object/from16 v3, v16

    move-object v5, v2

    move-object v6, v11

    move-object v7, v12

    move-object v8, v13

    move-object v9, v14

    move-object v10, v15

    invoke-direct/range {v3 .. v10}, Llu/snt/trux/koopaapp/databinding/CardTrainingBinding;-><init>(Landroidx/cardview/widget/CardView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v16

    .line 113
    :cond_0
    goto :goto_0

    .line 107
    .end local v15    # "textTrainingLocation":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 101
    .end local v14    # "textTrainingIntensity":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 95
    .end local v13    # "textTrainingDuration":Landroid/widget/TextView;
    :cond_3
    goto :goto_0

    .line 89
    .end local v12    # "textTrainingDate":Landroid/widget/TextView;
    :cond_4
    goto :goto_0

    .line 83
    .end local v11    # "labelLocation":Landroid/widget/TextView;
    :cond_5
    nop

    .line 119
    .end local v2    # "labelIntensity":Landroid/widget/TextView;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Llu/snt/trux/koopaapp/databinding/CardTrainingBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 61
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Llu/snt/trux/koopaapp/databinding/CardTrainingBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Llu/snt/trux/koopaapp/databinding/CardTrainingBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Llu/snt/trux/koopaapp/databinding/CardTrainingBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 67
    sget v0, Llu/snt/trux/koopaapp/R$layout;->card_training:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 68
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 69
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 71
    :cond_0
    invoke-static {v0}, Llu/snt/trux/koopaapp/databinding/CardTrainingBinding;->bind(Landroid/view/View;)Llu/snt/trux/koopaapp/databinding/CardTrainingBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 18
    invoke-virtual {p0}, Llu/snt/trux/koopaapp/databinding/CardTrainingBinding;->getRoot()Landroidx/cardview/widget/CardView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/cardview/widget/CardView;
    .locals 1

    .line 56
    iget-object v0, p0, Llu/snt/trux/koopaapp/databinding/CardTrainingBinding;->rootView:Landroidx/cardview/widget/CardView;

    return-object v0
.end method
