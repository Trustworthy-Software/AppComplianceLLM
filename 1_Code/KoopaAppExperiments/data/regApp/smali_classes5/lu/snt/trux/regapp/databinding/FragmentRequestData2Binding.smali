.class public final Llu/snt/trux/regapp/databinding/FragmentRequestData2Binding;
.super Ljava/lang/Object;
.source "FragmentRequestData2Binding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final dpoCardView:Landroidx/cardview/widget/CardView;

.field public final dpoContactEmailButton:Landroidx/appcompat/widget/AppCompatButton;

.field public final dpoContactUsLabel:Landroid/widget/TextView;

.field public final emailCardView:Landroidx/cardview/widget/CardView;

.field public final generalContactEmailButton:Landroidx/appcompat/widget/AppCompatButton;

.field public final generalContactUsLabel:Landroid/widget/TextView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/cardview/widget/CardView;Landroidx/appcompat/widget/AppCompatButton;Landroid/widget/TextView;Landroidx/cardview/widget/CardView;Landroidx/appcompat/widget/AppCompatButton;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroidx/constraintlayout/widget/ConstraintLayout;
    .param p2, "dpoCardView"    # Landroidx/cardview/widget/CardView;
    .param p3, "dpoContactEmailButton"    # Landroidx/appcompat/widget/AppCompatButton;
    .param p4, "dpoContactUsLabel"    # Landroid/widget/TextView;
    .param p5, "emailCardView"    # Landroidx/cardview/widget/CardView;
    .param p6, "generalContactEmailButton"    # Landroidx/appcompat/widget/AppCompatButton;
    .param p7, "generalContactUsLabel"    # Landroid/widget/TextView;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Llu/snt/trux/regapp/databinding/FragmentRequestData2Binding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 47
    iput-object p2, p0, Llu/snt/trux/regapp/databinding/FragmentRequestData2Binding;->dpoCardView:Landroidx/cardview/widget/CardView;

    .line 48
    iput-object p3, p0, Llu/snt/trux/regapp/databinding/FragmentRequestData2Binding;->dpoContactEmailButton:Landroidx/appcompat/widget/AppCompatButton;

    .line 49
    iput-object p4, p0, Llu/snt/trux/regapp/databinding/FragmentRequestData2Binding;->dpoContactUsLabel:Landroid/widget/TextView;

    .line 50
    iput-object p5, p0, Llu/snt/trux/regapp/databinding/FragmentRequestData2Binding;->emailCardView:Landroidx/cardview/widget/CardView;

    .line 51
    iput-object p6, p0, Llu/snt/trux/regapp/databinding/FragmentRequestData2Binding;->generalContactEmailButton:Landroidx/appcompat/widget/AppCompatButton;

    .line 52
    iput-object p7, p0, Llu/snt/trux/regapp/databinding/FragmentRequestData2Binding;->generalContactUsLabel:Landroid/widget/TextView;

    .line 53
    return-void
.end method

.method public static bind(Landroid/view/View;)Llu/snt/trux/regapp/databinding/FragmentRequestData2Binding;
    .locals 17
    .param p0, "rootView"    # Landroid/view/View;

    .line 82
    move-object/from16 v0, p0

    sget v1, Llu/snt/trux/regapp/R$id;->dpoCardView:I

    .line 83
    .local v1, "id":I
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/cardview/widget/CardView;

    .line 84
    .local v2, "dpoCardView":Landroidx/cardview/widget/CardView;
    if-eqz v2, :cond_5

    .line 88
    sget v1, Llu/snt/trux/regapp/R$id;->dpoContactEmailButton:I

    .line 89
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Landroidx/appcompat/widget/AppCompatButton;

    .line 90
    .local v11, "dpoContactEmailButton":Landroidx/appcompat/widget/AppCompatButton;
    if-eqz v11, :cond_4

    .line 94
    sget v1, Llu/snt/trux/regapp/R$id;->dpoContactUsLabel:I

    .line 95
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Landroid/widget/TextView;

    .line 96
    .local v12, "dpoContactUsLabel":Landroid/widget/TextView;
    if-eqz v12, :cond_3

    .line 100
    sget v1, Llu/snt/trux/regapp/R$id;->emailCardView:I

    .line 101
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Landroidx/cardview/widget/CardView;

    .line 102
    .local v13, "emailCardView":Landroidx/cardview/widget/CardView;
    if-eqz v13, :cond_2

    .line 106
    sget v1, Llu/snt/trux/regapp/R$id;->generalContactEmailButton:I

    .line 107
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroidx/appcompat/widget/AppCompatButton;

    .line 108
    .local v14, "generalContactEmailButton":Landroidx/appcompat/widget/AppCompatButton;
    if-eqz v14, :cond_1

    .line 112
    sget v1, Llu/snt/trux/regapp/R$id;->generalContactUsLabel:I

    .line 113
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroid/widget/TextView;

    .line 114
    .local v15, "generalContactUsLabel":Landroid/widget/TextView;
    if-eqz v15, :cond_0

    .line 118
    new-instance v16, Llu/snt/trux/regapp/databinding/FragmentRequestData2Binding;

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object/from16 v3, v16

    move-object v5, v2

    move-object v6, v11

    move-object v7, v12

    move-object v8, v13

    move-object v9, v14

    move-object v10, v15

    invoke-direct/range {v3 .. v10}, Llu/snt/trux/regapp/databinding/FragmentRequestData2Binding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/cardview/widget/CardView;Landroidx/appcompat/widget/AppCompatButton;Landroid/widget/TextView;Landroidx/cardview/widget/CardView;Landroidx/appcompat/widget/AppCompatButton;Landroid/widget/TextView;)V

    return-object v16

    .line 115
    :cond_0
    goto :goto_0

    .line 109
    .end local v15    # "generalContactUsLabel":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 103
    .end local v14    # "generalContactEmailButton":Landroidx/appcompat/widget/AppCompatButton;
    :cond_2
    goto :goto_0

    .line 97
    .end local v13    # "emailCardView":Landroidx/cardview/widget/CardView;
    :cond_3
    goto :goto_0

    .line 91
    .end local v12    # "dpoContactUsLabel":Landroid/widget/TextView;
    :cond_4
    goto :goto_0

    .line 85
    .end local v11    # "dpoContactEmailButton":Landroidx/appcompat/widget/AppCompatButton;
    :cond_5
    nop

    .line 122
    .end local v2    # "dpoCardView":Landroidx/cardview/widget/CardView;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Llu/snt/trux/regapp/databinding/FragmentRequestData2Binding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 63
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Llu/snt/trux/regapp/databinding/FragmentRequestData2Binding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Llu/snt/trux/regapp/databinding/FragmentRequestData2Binding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Llu/snt/trux/regapp/databinding/FragmentRequestData2Binding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 69
    sget v0, Llu/snt/trux/regapp/R$layout;->fragment_request_data2:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 70
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 71
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 73
    :cond_0
    invoke-static {v0}, Llu/snt/trux/regapp/databinding/FragmentRequestData2Binding;->bind(Landroid/view/View;)Llu/snt/trux/regapp/databinding/FragmentRequestData2Binding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Llu/snt/trux/regapp/databinding/FragmentRequestData2Binding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 58
    iget-object v0, p0, Llu/snt/trux/regapp/databinding/FragmentRequestData2Binding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
