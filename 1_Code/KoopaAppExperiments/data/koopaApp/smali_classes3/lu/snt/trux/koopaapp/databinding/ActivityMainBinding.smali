.class public final Llu/snt/trux/koopaapp/databinding/ActivityMainBinding;
.super Ljava/lang/Object;
.source "ActivityMainBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final buttonLogin:Landroidx/appcompat/widget/AppCompatButton;

.field public final buttonRegister:Landroidx/appcompat/widget/AppCompatButton;

.field public final editTextEmail:Landroid/widget/EditText;

.field public final editTextPassword:Landroid/widget/EditText;

.field public final imageViewLogo:Landroid/widget/ImageView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final textViewForgotPsw:Landroid/widget/TextView;

.field public final textViewRegistration:Landroid/widget/TextView;

.field public final textViewTitle:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroidx/constraintlayout/widget/ConstraintLayout;
    .param p2, "buttonLogin"    # Landroidx/appcompat/widget/AppCompatButton;
    .param p3, "buttonRegister"    # Landroidx/appcompat/widget/AppCompatButton;
    .param p4, "editTextEmail"    # Landroid/widget/EditText;
    .param p5, "editTextPassword"    # Landroid/widget/EditText;
    .param p6, "imageViewLogo"    # Landroid/widget/ImageView;
    .param p7, "textViewForgotPsw"    # Landroid/widget/TextView;
    .param p8, "textViewRegistration"    # Landroid/widget/TextView;
    .param p9, "textViewTitle"    # Landroid/widget/TextView;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Llu/snt/trux/koopaapp/databinding/ActivityMainBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 55
    iput-object p2, p0, Llu/snt/trux/koopaapp/databinding/ActivityMainBinding;->buttonLogin:Landroidx/appcompat/widget/AppCompatButton;

    .line 56
    iput-object p3, p0, Llu/snt/trux/koopaapp/databinding/ActivityMainBinding;->buttonRegister:Landroidx/appcompat/widget/AppCompatButton;

    .line 57
    iput-object p4, p0, Llu/snt/trux/koopaapp/databinding/ActivityMainBinding;->editTextEmail:Landroid/widget/EditText;

    .line 58
    iput-object p5, p0, Llu/snt/trux/koopaapp/databinding/ActivityMainBinding;->editTextPassword:Landroid/widget/EditText;

    .line 59
    iput-object p6, p0, Llu/snt/trux/koopaapp/databinding/ActivityMainBinding;->imageViewLogo:Landroid/widget/ImageView;

    .line 60
    iput-object p7, p0, Llu/snt/trux/koopaapp/databinding/ActivityMainBinding;->textViewForgotPsw:Landroid/widget/TextView;

    .line 61
    iput-object p8, p0, Llu/snt/trux/koopaapp/databinding/ActivityMainBinding;->textViewRegistration:Landroid/widget/TextView;

    .line 62
    iput-object p9, p0, Llu/snt/trux/koopaapp/databinding/ActivityMainBinding;->textViewTitle:Landroid/widget/TextView;

    .line 63
    return-void
.end method

.method public static bind(Landroid/view/View;)Llu/snt/trux/koopaapp/databinding/ActivityMainBinding;
    .locals 21
    .param p0, "rootView"    # Landroid/view/View;

    .line 92
    move-object/from16 v0, p0

    sget v1, Llu/snt/trux/koopaapp/R$id;->buttonLogin:I

    .line 93
    .local v1, "id":I
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/AppCompatButton;

    .line 94
    .local v2, "buttonLogin":Landroidx/appcompat/widget/AppCompatButton;
    if-eqz v2, :cond_7

    .line 98
    sget v1, Llu/snt/trux/koopaapp/R$id;->buttonRegister:I

    .line 99
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Landroidx/appcompat/widget/AppCompatButton;

    .line 100
    .local v13, "buttonRegister":Landroidx/appcompat/widget/AppCompatButton;
    if-eqz v13, :cond_6

    .line 104
    sget v1, Llu/snt/trux/koopaapp/R$id;->editTextEmail:I

    .line 105
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroid/widget/EditText;

    .line 106
    .local v14, "editTextEmail":Landroid/widget/EditText;
    if-eqz v14, :cond_5

    .line 110
    sget v1, Llu/snt/trux/koopaapp/R$id;->editTextPassword:I

    .line 111
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroid/widget/EditText;

    .line 112
    .local v15, "editTextPassword":Landroid/widget/EditText;
    if-eqz v15, :cond_4

    .line 116
    sget v1, Llu/snt/trux/koopaapp/R$id;->imageViewLogo:I

    .line 117
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Landroid/widget/ImageView;

    .line 118
    .local v16, "imageViewLogo":Landroid/widget/ImageView;
    if-eqz v16, :cond_3

    .line 122
    sget v1, Llu/snt/trux/koopaapp/R$id;->textViewForgotPsw:I

    .line 123
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Landroid/widget/TextView;

    .line 124
    .local v17, "textViewForgotPsw":Landroid/widget/TextView;
    if-eqz v17, :cond_2

    .line 128
    sget v1, Llu/snt/trux/koopaapp/R$id;->textViewRegistration:I

    .line 129
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Landroid/widget/TextView;

    .line 130
    .local v18, "textViewRegistration":Landroid/widget/TextView;
    if-eqz v18, :cond_1

    .line 134
    sget v1, Llu/snt/trux/koopaapp/R$id;->textViewTitle:I

    .line 135
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Landroid/widget/TextView;

    .line 136
    .local v19, "textViewTitle":Landroid/widget/TextView;
    if-eqz v19, :cond_0

    .line 140
    new-instance v20, Llu/snt/trux/koopaapp/databinding/ActivityMainBinding;

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object/from16 v3, v20

    move-object v5, v2

    move-object v6, v13

    move-object v7, v14

    move-object v8, v15

    move-object/from16 v9, v16

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    move-object/from16 v12, v19

    invoke-direct/range {v3 .. v12}, Llu/snt/trux/koopaapp/databinding/ActivityMainBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v20

    .line 137
    :cond_0
    goto :goto_0

    .line 131
    .end local v19    # "textViewTitle":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 125
    .end local v18    # "textViewRegistration":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 119
    .end local v17    # "textViewForgotPsw":Landroid/widget/TextView;
    :cond_3
    goto :goto_0

    .line 113
    .end local v16    # "imageViewLogo":Landroid/widget/ImageView;
    :cond_4
    goto :goto_0

    .line 107
    .end local v15    # "editTextPassword":Landroid/widget/EditText;
    :cond_5
    goto :goto_0

    .line 101
    .end local v14    # "editTextEmail":Landroid/widget/EditText;
    :cond_6
    goto :goto_0

    .line 95
    .end local v13    # "buttonRegister":Landroidx/appcompat/widget/AppCompatButton;
    :cond_7
    nop

    .line 144
    .end local v2    # "buttonLogin":Landroidx/appcompat/widget/AppCompatButton;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 145
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Llu/snt/trux/koopaapp/databinding/ActivityMainBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 73
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Llu/snt/trux/koopaapp/databinding/ActivityMainBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Llu/snt/trux/koopaapp/databinding/ActivityMainBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Llu/snt/trux/koopaapp/databinding/ActivityMainBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 79
    sget v0, Llu/snt/trux/koopaapp/R$layout;->activity_main:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 80
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 81
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 83
    :cond_0
    invoke-static {v0}, Llu/snt/trux/koopaapp/databinding/ActivityMainBinding;->bind(Landroid/view/View;)Llu/snt/trux/koopaapp/databinding/ActivityMainBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Llu/snt/trux/koopaapp/databinding/ActivityMainBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 68
    iget-object v0, p0, Llu/snt/trux/koopaapp/databinding/ActivityMainBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
