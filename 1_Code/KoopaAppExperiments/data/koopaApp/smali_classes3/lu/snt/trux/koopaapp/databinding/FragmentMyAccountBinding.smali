.class public final Llu/snt/trux/koopaapp/databinding/FragmentMyAccountBinding;
.super Ljava/lang/Object;
.source "FragmentMyAccountBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final buttonChangeEmail:Landroidx/appcompat/widget/AppCompatButton;

.field public final buttonChangePassword:Landroidx/appcompat/widget/AppCompatButton;

.field public final buttonDeleteAccount:Landroidx/appcompat/widget/AppCompatButton;

.field public final buttonEditNameSurname:Landroidx/appcompat/widget/AppCompatButton;

.field public final emailCard:Landroidx/cardview/widget/CardView;

.field public final nameCard:Landroidx/cardview/widget/CardView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final textViewEmail:Landroid/widget/TextView;

.field public final textViewEmailUser:Landroid/widget/TextView;

.field public final textViewName:Landroid/widget/TextView;

.field public final textViewNameUser:Landroid/widget/TextView;

.field public final textViewSurname:Landroid/widget/TextView;

.field public final textViewSurnameUser:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/cardview/widget/CardView;Landroidx/cardview/widget/CardView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroidx/constraintlayout/widget/ConstraintLayout;
    .param p2, "buttonChangeEmail"    # Landroidx/appcompat/widget/AppCompatButton;
    .param p3, "buttonChangePassword"    # Landroidx/appcompat/widget/AppCompatButton;
    .param p4, "buttonDeleteAccount"    # Landroidx/appcompat/widget/AppCompatButton;
    .param p5, "buttonEditNameSurname"    # Landroidx/appcompat/widget/AppCompatButton;
    .param p6, "emailCard"    # Landroidx/cardview/widget/CardView;
    .param p7, "nameCard"    # Landroidx/cardview/widget/CardView;
    .param p8, "textViewEmail"    # Landroid/widget/TextView;
    .param p9, "textViewEmailUser"    # Landroid/widget/TextView;
    .param p10, "textViewName"    # Landroid/widget/TextView;
    .param p11, "textViewNameUser"    # Landroid/widget/TextView;
    .param p12, "textViewSurname"    # Landroid/widget/TextView;
    .param p13, "textViewSurnameUser"    # Landroid/widget/TextView;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Llu/snt/trux/koopaapp/databinding/FragmentMyAccountBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 68
    iput-object p2, p0, Llu/snt/trux/koopaapp/databinding/FragmentMyAccountBinding;->buttonChangeEmail:Landroidx/appcompat/widget/AppCompatButton;

    .line 69
    iput-object p3, p0, Llu/snt/trux/koopaapp/databinding/FragmentMyAccountBinding;->buttonChangePassword:Landroidx/appcompat/widget/AppCompatButton;

    .line 70
    iput-object p4, p0, Llu/snt/trux/koopaapp/databinding/FragmentMyAccountBinding;->buttonDeleteAccount:Landroidx/appcompat/widget/AppCompatButton;

    .line 71
    iput-object p5, p0, Llu/snt/trux/koopaapp/databinding/FragmentMyAccountBinding;->buttonEditNameSurname:Landroidx/appcompat/widget/AppCompatButton;

    .line 72
    iput-object p6, p0, Llu/snt/trux/koopaapp/databinding/FragmentMyAccountBinding;->emailCard:Landroidx/cardview/widget/CardView;

    .line 73
    iput-object p7, p0, Llu/snt/trux/koopaapp/databinding/FragmentMyAccountBinding;->nameCard:Landroidx/cardview/widget/CardView;

    .line 74
    iput-object p8, p0, Llu/snt/trux/koopaapp/databinding/FragmentMyAccountBinding;->textViewEmail:Landroid/widget/TextView;

    .line 75
    iput-object p9, p0, Llu/snt/trux/koopaapp/databinding/FragmentMyAccountBinding;->textViewEmailUser:Landroid/widget/TextView;

    .line 76
    iput-object p10, p0, Llu/snt/trux/koopaapp/databinding/FragmentMyAccountBinding;->textViewName:Landroid/widget/TextView;

    .line 77
    iput-object p11, p0, Llu/snt/trux/koopaapp/databinding/FragmentMyAccountBinding;->textViewNameUser:Landroid/widget/TextView;

    .line 78
    iput-object p12, p0, Llu/snt/trux/koopaapp/databinding/FragmentMyAccountBinding;->textViewSurname:Landroid/widget/TextView;

    .line 79
    iput-object p13, p0, Llu/snt/trux/koopaapp/databinding/FragmentMyAccountBinding;->textViewSurnameUser:Landroid/widget/TextView;

    .line 80
    return-void
.end method

.method public static bind(Landroid/view/View;)Llu/snt/trux/koopaapp/databinding/FragmentMyAccountBinding;
    .locals 29
    .param p0, "rootView"    # Landroid/view/View;

    .line 109
    move-object/from16 v0, p0

    sget v1, Llu/snt/trux/koopaapp/R$id;->buttonChangeEmail:I

    .line 110
    .local v1, "id":I
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/AppCompatButton;

    .line 111
    .local v2, "buttonChangeEmail":Landroidx/appcompat/widget/AppCompatButton;
    if-eqz v2, :cond_b

    .line 115
    sget v1, Llu/snt/trux/koopaapp/R$id;->buttonChangePassword:I

    .line 116
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Landroidx/appcompat/widget/AppCompatButton;

    .line 117
    .local v17, "buttonChangePassword":Landroidx/appcompat/widget/AppCompatButton;
    if-eqz v17, :cond_a

    .line 121
    sget v1, Llu/snt/trux/koopaapp/R$id;->buttonDeleteAccount:I

    .line 122
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Landroidx/appcompat/widget/AppCompatButton;

    .line 123
    .local v18, "buttonDeleteAccount":Landroidx/appcompat/widget/AppCompatButton;
    if-eqz v18, :cond_9

    .line 127
    sget v1, Llu/snt/trux/koopaapp/R$id;->buttonEditNameSurname:I

    .line 128
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Landroidx/appcompat/widget/AppCompatButton;

    .line 129
    .local v19, "buttonEditNameSurname":Landroidx/appcompat/widget/AppCompatButton;
    if-eqz v19, :cond_8

    .line 133
    sget v1, Llu/snt/trux/koopaapp/R$id;->emailCard:I

    .line 134
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v20, v3

    check-cast v20, Landroidx/cardview/widget/CardView;

    .line 135
    .local v20, "emailCard":Landroidx/cardview/widget/CardView;
    if-eqz v20, :cond_7

    .line 139
    sget v1, Llu/snt/trux/koopaapp/R$id;->nameCard:I

    .line 140
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v21, v3

    check-cast v21, Landroidx/cardview/widget/CardView;

    .line 141
    .local v21, "nameCard":Landroidx/cardview/widget/CardView;
    if-eqz v21, :cond_6

    .line 145
    sget v1, Llu/snt/trux/koopaapp/R$id;->textViewEmail:I

    .line 146
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v22, v3

    check-cast v22, Landroid/widget/TextView;

    .line 147
    .local v22, "textViewEmail":Landroid/widget/TextView;
    if-eqz v22, :cond_5

    .line 151
    sget v1, Llu/snt/trux/koopaapp/R$id;->textViewEmailUser:I

    .line 152
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v23, v3

    check-cast v23, Landroid/widget/TextView;

    .line 153
    .local v23, "textViewEmailUser":Landroid/widget/TextView;
    if-eqz v23, :cond_4

    .line 157
    sget v1, Llu/snt/trux/koopaapp/R$id;->textViewName:I

    .line 158
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v24, v3

    check-cast v24, Landroid/widget/TextView;

    .line 159
    .local v24, "textViewName":Landroid/widget/TextView;
    if-eqz v24, :cond_3

    .line 163
    sget v1, Llu/snt/trux/koopaapp/R$id;->textViewNameUser:I

    .line 164
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v25, v3

    check-cast v25, Landroid/widget/TextView;

    .line 165
    .local v25, "textViewNameUser":Landroid/widget/TextView;
    if-eqz v25, :cond_2

    .line 169
    sget v1, Llu/snt/trux/koopaapp/R$id;->textViewSurname:I

    .line 170
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v26, v3

    check-cast v26, Landroid/widget/TextView;

    .line 171
    .local v26, "textViewSurname":Landroid/widget/TextView;
    if-eqz v26, :cond_1

    .line 175
    sget v1, Llu/snt/trux/koopaapp/R$id;->textViewSurnameUser:I

    .line 176
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v27, v3

    check-cast v27, Landroid/widget/TextView;

    .line 177
    .local v27, "textViewSurnameUser":Landroid/widget/TextView;
    if-eqz v27, :cond_0

    .line 181
    new-instance v28, Llu/snt/trux/koopaapp/databinding/FragmentMyAccountBinding;

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object/from16 v3, v28

    move-object v5, v2

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    move-object/from16 v8, v19

    move-object/from16 v9, v20

    move-object/from16 v10, v21

    move-object/from16 v11, v22

    move-object/from16 v12, v23

    move-object/from16 v13, v24

    move-object/from16 v14, v25

    move-object/from16 v15, v26

    move-object/from16 v16, v27

    invoke-direct/range {v3 .. v16}, Llu/snt/trux/koopaapp/databinding/FragmentMyAccountBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/cardview/widget/CardView;Landroidx/cardview/widget/CardView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v28

    .line 178
    :cond_0
    goto :goto_0

    .line 172
    .end local v27    # "textViewSurnameUser":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 166
    .end local v26    # "textViewSurname":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 160
    .end local v25    # "textViewNameUser":Landroid/widget/TextView;
    :cond_3
    goto :goto_0

    .line 154
    .end local v24    # "textViewName":Landroid/widget/TextView;
    :cond_4
    goto :goto_0

    .line 148
    .end local v23    # "textViewEmailUser":Landroid/widget/TextView;
    :cond_5
    goto :goto_0

    .line 142
    .end local v22    # "textViewEmail":Landroid/widget/TextView;
    :cond_6
    goto :goto_0

    .line 136
    .end local v21    # "nameCard":Landroidx/cardview/widget/CardView;
    :cond_7
    goto :goto_0

    .line 130
    .end local v20    # "emailCard":Landroidx/cardview/widget/CardView;
    :cond_8
    goto :goto_0

    .line 124
    .end local v19    # "buttonEditNameSurname":Landroidx/appcompat/widget/AppCompatButton;
    :cond_9
    goto :goto_0

    .line 118
    .end local v18    # "buttonDeleteAccount":Landroidx/appcompat/widget/AppCompatButton;
    :cond_a
    goto :goto_0

    .line 112
    .end local v17    # "buttonChangePassword":Landroidx/appcompat/widget/AppCompatButton;
    :cond_b
    nop

    .line 186
    .end local v2    # "buttonChangeEmail":Landroidx/appcompat/widget/AppCompatButton;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 187
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Llu/snt/trux/koopaapp/databinding/FragmentMyAccountBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 90
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Llu/snt/trux/koopaapp/databinding/FragmentMyAccountBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Llu/snt/trux/koopaapp/databinding/FragmentMyAccountBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Llu/snt/trux/koopaapp/databinding/FragmentMyAccountBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 96
    sget v0, Llu/snt/trux/koopaapp/R$layout;->fragment_my_account:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 97
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 98
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 100
    :cond_0
    invoke-static {v0}, Llu/snt/trux/koopaapp/databinding/FragmentMyAccountBinding;->bind(Landroid/view/View;)Llu/snt/trux/koopaapp/databinding/FragmentMyAccountBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Llu/snt/trux/koopaapp/databinding/FragmentMyAccountBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 85
    iget-object v0, p0, Llu/snt/trux/koopaapp/databinding/FragmentMyAccountBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
