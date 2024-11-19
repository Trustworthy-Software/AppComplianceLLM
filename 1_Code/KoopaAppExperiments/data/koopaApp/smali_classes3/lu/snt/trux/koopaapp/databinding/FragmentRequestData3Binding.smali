.class public final Llu/snt/trux/koopaapp/databinding/FragmentRequestData3Binding;
.super Ljava/lang/Object;
.source "FragmentRequestData3Binding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final buttonSubmit:Landroidx/appcompat/widget/AppCompatButton;

.field public final contactCard:Landroidx/cardview/widget/CardView;

.field public final editTextMessage:Landroid/widget/EditText;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final spinnerSubject:Landroid/widget/Spinner;

.field public final textViewHeader:Landroid/widget/TextView;

.field public final textViewSubjectLabel:Landroid/widget/TextView;

.field public final textViewYourMessage:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/appcompat/widget/AppCompatButton;Landroidx/cardview/widget/CardView;Landroid/widget/EditText;Landroid/widget/Spinner;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroidx/constraintlayout/widget/ConstraintLayout;
    .param p2, "buttonSubmit"    # Landroidx/appcompat/widget/AppCompatButton;
    .param p3, "contactCard"    # Landroidx/cardview/widget/CardView;
    .param p4, "editTextMessage"    # Landroid/widget/EditText;
    .param p5, "spinnerSubject"    # Landroid/widget/Spinner;
    .param p6, "textViewHeader"    # Landroid/widget/TextView;
    .param p7, "textViewSubjectLabel"    # Landroid/widget/TextView;
    .param p8, "textViewYourMessage"    # Landroid/widget/TextView;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Llu/snt/trux/koopaapp/databinding/FragmentRequestData3Binding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 53
    iput-object p2, p0, Llu/snt/trux/koopaapp/databinding/FragmentRequestData3Binding;->buttonSubmit:Landroidx/appcompat/widget/AppCompatButton;

    .line 54
    iput-object p3, p0, Llu/snt/trux/koopaapp/databinding/FragmentRequestData3Binding;->contactCard:Landroidx/cardview/widget/CardView;

    .line 55
    iput-object p4, p0, Llu/snt/trux/koopaapp/databinding/FragmentRequestData3Binding;->editTextMessage:Landroid/widget/EditText;

    .line 56
    iput-object p5, p0, Llu/snt/trux/koopaapp/databinding/FragmentRequestData3Binding;->spinnerSubject:Landroid/widget/Spinner;

    .line 57
    iput-object p6, p0, Llu/snt/trux/koopaapp/databinding/FragmentRequestData3Binding;->textViewHeader:Landroid/widget/TextView;

    .line 58
    iput-object p7, p0, Llu/snt/trux/koopaapp/databinding/FragmentRequestData3Binding;->textViewSubjectLabel:Landroid/widget/TextView;

    .line 59
    iput-object p8, p0, Llu/snt/trux/koopaapp/databinding/FragmentRequestData3Binding;->textViewYourMessage:Landroid/widget/TextView;

    .line 60
    return-void
.end method

.method public static bind(Landroid/view/View;)Llu/snt/trux/koopaapp/databinding/FragmentRequestData3Binding;
    .locals 19
    .param p0, "rootView"    # Landroid/view/View;

    .line 89
    move-object/from16 v0, p0

    sget v1, Llu/snt/trux/koopaapp/R$id;->buttonSubmit:I

    .line 90
    .local v1, "id":I
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/AppCompatButton;

    .line 91
    .local v2, "buttonSubmit":Landroidx/appcompat/widget/AppCompatButton;
    if-eqz v2, :cond_6

    .line 95
    sget v1, Llu/snt/trux/koopaapp/R$id;->contactCard:I

    .line 96
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Landroidx/cardview/widget/CardView;

    .line 97
    .local v12, "contactCard":Landroidx/cardview/widget/CardView;
    if-eqz v12, :cond_5

    .line 101
    sget v1, Llu/snt/trux/koopaapp/R$id;->editTextMessage:I

    .line 102
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Landroid/widget/EditText;

    .line 103
    .local v13, "editTextMessage":Landroid/widget/EditText;
    if-eqz v13, :cond_4

    .line 107
    sget v1, Llu/snt/trux/koopaapp/R$id;->spinnerSubject:I

    .line 108
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroid/widget/Spinner;

    .line 109
    .local v14, "spinnerSubject":Landroid/widget/Spinner;
    if-eqz v14, :cond_3

    .line 113
    sget v1, Llu/snt/trux/koopaapp/R$id;->textViewHeader:I

    .line 114
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroid/widget/TextView;

    .line 115
    .local v15, "textViewHeader":Landroid/widget/TextView;
    if-eqz v15, :cond_2

    .line 119
    sget v1, Llu/snt/trux/koopaapp/R$id;->textViewSubjectLabel:I

    .line 120
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Landroid/widget/TextView;

    .line 121
    .local v16, "textViewSubjectLabel":Landroid/widget/TextView;
    if-eqz v16, :cond_1

    .line 125
    sget v1, Llu/snt/trux/koopaapp/R$id;->textViewYourMessage:I

    .line 126
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Landroid/widget/TextView;

    .line 127
    .local v17, "textViewYourMessage":Landroid/widget/TextView;
    if-eqz v17, :cond_0

    .line 131
    new-instance v18, Llu/snt/trux/koopaapp/databinding/FragmentRequestData3Binding;

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object/from16 v3, v18

    move-object v5, v2

    move-object v6, v12

    move-object v7, v13

    move-object v8, v14

    move-object v9, v15

    move-object/from16 v10, v16

    move-object/from16 v11, v17

    invoke-direct/range {v3 .. v11}, Llu/snt/trux/koopaapp/databinding/FragmentRequestData3Binding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/appcompat/widget/AppCompatButton;Landroidx/cardview/widget/CardView;Landroid/widget/EditText;Landroid/widget/Spinner;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v18

    .line 128
    :cond_0
    goto :goto_0

    .line 122
    .end local v17    # "textViewYourMessage":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 116
    .end local v16    # "textViewSubjectLabel":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 110
    .end local v15    # "textViewHeader":Landroid/widget/TextView;
    :cond_3
    goto :goto_0

    .line 104
    .end local v14    # "spinnerSubject":Landroid/widget/Spinner;
    :cond_4
    goto :goto_0

    .line 98
    .end local v13    # "editTextMessage":Landroid/widget/EditText;
    :cond_5
    goto :goto_0

    .line 92
    .end local v12    # "contactCard":Landroidx/cardview/widget/CardView;
    :cond_6
    nop

    .line 135
    .end local v2    # "buttonSubmit":Landroidx/appcompat/widget/AppCompatButton;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 136
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Llu/snt/trux/koopaapp/databinding/FragmentRequestData3Binding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 70
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Llu/snt/trux/koopaapp/databinding/FragmentRequestData3Binding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Llu/snt/trux/koopaapp/databinding/FragmentRequestData3Binding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Llu/snt/trux/koopaapp/databinding/FragmentRequestData3Binding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 76
    sget v0, Llu/snt/trux/koopaapp/R$layout;->fragment_request_data3:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 77
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 78
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 80
    :cond_0
    invoke-static {v0}, Llu/snt/trux/koopaapp/databinding/FragmentRequestData3Binding;->bind(Landroid/view/View;)Llu/snt/trux/koopaapp/databinding/FragmentRequestData3Binding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 22
    invoke-virtual {p0}, Llu/snt/trux/koopaapp/databinding/FragmentRequestData3Binding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 65
    iget-object v0, p0, Llu/snt/trux/koopaapp/databinding/FragmentRequestData3Binding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
