.class public final Llu/snt/trux/koopaapp/databinding/FragmentHomeBinding;
.super Ljava/lang/Object;
.source "FragmentHomeBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final addTrainingButton:Landroidx/appcompat/widget/AppCompatButton;

.field public final buttonEditProfile:Landroidx/appcompat/widget/AppCompatButton;

.field public final emptyMessage:Landroid/widget/TextView;

.field public final labelAge:Landroid/widget/TextView;

.field public final labelHeight:Landroid/widget/TextView;

.field public final labelProfile:Landroid/widget/TextView;

.field public final labelSex:Landroid/widget/TextView;

.field public final labelWeight:Landroid/widget/TextView;

.field public final profileCardView:Landroidx/cardview/widget/CardView;

.field public final recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final trainingHeader:Landroid/widget/TextView;

.field public final userAge:Landroid/widget/TextView;

.field public final userHeight:Landroid/widget/TextView;

.field public final userHeightUnit:Landroid/widget/TextView;

.field public final userSex:Landroid/widget/TextView;

.field public final userWeight:Landroid/widget/TextView;

.field public final userWeightUnit:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/cardview/widget/CardView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 16
    .param p1, "rootView"    # Landroidx/constraintlayout/widget/ConstraintLayout;
    .param p2, "addTrainingButton"    # Landroidx/appcompat/widget/AppCompatButton;
    .param p3, "buttonEditProfile"    # Landroidx/appcompat/widget/AppCompatButton;
    .param p4, "emptyMessage"    # Landroid/widget/TextView;
    .param p5, "labelAge"    # Landroid/widget/TextView;
    .param p6, "labelHeight"    # Landroid/widget/TextView;
    .param p7, "labelProfile"    # Landroid/widget/TextView;
    .param p8, "labelSex"    # Landroid/widget/TextView;
    .param p9, "labelWeight"    # Landroid/widget/TextView;
    .param p10, "profileCardView"    # Landroidx/cardview/widget/CardView;
    .param p11, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p12, "trainingHeader"    # Landroid/widget/TextView;
    .param p13, "userAge"    # Landroid/widget/TextView;
    .param p14, "userHeight"    # Landroid/widget/TextView;
    .param p15, "userHeightUnit"    # Landroid/widget/TextView;
    .param p16, "userSex"    # Landroid/widget/TextView;
    .param p17, "userWeight"    # Landroid/widget/TextView;
    .param p18, "userWeightUnit"    # Landroid/widget/TextView;

    .line 83
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 84
    move-object/from16 v1, p1

    iput-object v1, v0, Llu/snt/trux/koopaapp/databinding/FragmentHomeBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 85
    move-object/from16 v2, p2

    iput-object v2, v0, Llu/snt/trux/koopaapp/databinding/FragmentHomeBinding;->addTrainingButton:Landroidx/appcompat/widget/AppCompatButton;

    .line 86
    move-object/from16 v3, p3

    iput-object v3, v0, Llu/snt/trux/koopaapp/databinding/FragmentHomeBinding;->buttonEditProfile:Landroidx/appcompat/widget/AppCompatButton;

    .line 87
    move-object/from16 v4, p4

    iput-object v4, v0, Llu/snt/trux/koopaapp/databinding/FragmentHomeBinding;->emptyMessage:Landroid/widget/TextView;

    .line 88
    move-object/from16 v5, p5

    iput-object v5, v0, Llu/snt/trux/koopaapp/databinding/FragmentHomeBinding;->labelAge:Landroid/widget/TextView;

    .line 89
    move-object/from16 v6, p6

    iput-object v6, v0, Llu/snt/trux/koopaapp/databinding/FragmentHomeBinding;->labelHeight:Landroid/widget/TextView;

    .line 90
    move-object/from16 v7, p7

    iput-object v7, v0, Llu/snt/trux/koopaapp/databinding/FragmentHomeBinding;->labelProfile:Landroid/widget/TextView;

    .line 91
    move-object/from16 v8, p8

    iput-object v8, v0, Llu/snt/trux/koopaapp/databinding/FragmentHomeBinding;->labelSex:Landroid/widget/TextView;

    .line 92
    move-object/from16 v9, p9

    iput-object v9, v0, Llu/snt/trux/koopaapp/databinding/FragmentHomeBinding;->labelWeight:Landroid/widget/TextView;

    .line 93
    move-object/from16 v10, p10

    iput-object v10, v0, Llu/snt/trux/koopaapp/databinding/FragmentHomeBinding;->profileCardView:Landroidx/cardview/widget/CardView;

    .line 94
    move-object/from16 v11, p11

    iput-object v11, v0, Llu/snt/trux/koopaapp/databinding/FragmentHomeBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 95
    move-object/from16 v12, p12

    iput-object v12, v0, Llu/snt/trux/koopaapp/databinding/FragmentHomeBinding;->trainingHeader:Landroid/widget/TextView;

    .line 96
    move-object/from16 v13, p13

    iput-object v13, v0, Llu/snt/trux/koopaapp/databinding/FragmentHomeBinding;->userAge:Landroid/widget/TextView;

    .line 97
    move-object/from16 v14, p14

    iput-object v14, v0, Llu/snt/trux/koopaapp/databinding/FragmentHomeBinding;->userHeight:Landroid/widget/TextView;

    .line 98
    move-object/from16 v15, p15

    iput-object v15, v0, Llu/snt/trux/koopaapp/databinding/FragmentHomeBinding;->userHeightUnit:Landroid/widget/TextView;

    .line 99
    move-object/from16 v1, p16

    iput-object v1, v0, Llu/snt/trux/koopaapp/databinding/FragmentHomeBinding;->userSex:Landroid/widget/TextView;

    .line 100
    move-object/from16 v1, p17

    iput-object v1, v0, Llu/snt/trux/koopaapp/databinding/FragmentHomeBinding;->userWeight:Landroid/widget/TextView;

    .line 101
    move-object/from16 v1, p18

    iput-object v1, v0, Llu/snt/trux/koopaapp/databinding/FragmentHomeBinding;->userWeightUnit:Landroid/widget/TextView;

    .line 102
    return-void
.end method

.method public static bind(Landroid/view/View;)Llu/snt/trux/koopaapp/databinding/FragmentHomeBinding;
    .locals 39
    .param p0, "rootView"    # Landroid/view/View;

    .line 131
    move-object/from16 v0, p0

    sget v1, Llu/snt/trux/koopaapp/R$id;->addTrainingButton:I

    .line 132
    .local v1, "id":I
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/AppCompatButton;

    .line 133
    .local v2, "addTrainingButton":Landroidx/appcompat/widget/AppCompatButton;
    if-eqz v2, :cond_10

    .line 137
    sget v1, Llu/snt/trux/koopaapp/R$id;->buttonEditProfile:I

    .line 138
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v22, v3

    check-cast v22, Landroidx/appcompat/widget/AppCompatButton;

    .line 139
    .local v22, "buttonEditProfile":Landroidx/appcompat/widget/AppCompatButton;
    if-eqz v22, :cond_f

    .line 143
    sget v1, Llu/snt/trux/koopaapp/R$id;->emptyMessage:I

    .line 144
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v23, v3

    check-cast v23, Landroid/widget/TextView;

    .line 145
    .local v23, "emptyMessage":Landroid/widget/TextView;
    if-eqz v23, :cond_e

    .line 149
    sget v1, Llu/snt/trux/koopaapp/R$id;->labelAge:I

    .line 150
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v24, v3

    check-cast v24, Landroid/widget/TextView;

    .line 151
    .local v24, "labelAge":Landroid/widget/TextView;
    if-eqz v24, :cond_d

    .line 155
    sget v1, Llu/snt/trux/koopaapp/R$id;->labelHeight:I

    .line 156
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v25, v3

    check-cast v25, Landroid/widget/TextView;

    .line 157
    .local v25, "labelHeight":Landroid/widget/TextView;
    if-eqz v25, :cond_c

    .line 161
    sget v1, Llu/snt/trux/koopaapp/R$id;->labelProfile:I

    .line 162
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v26, v3

    check-cast v26, Landroid/widget/TextView;

    .line 163
    .local v26, "labelProfile":Landroid/widget/TextView;
    if-eqz v26, :cond_b

    .line 167
    sget v1, Llu/snt/trux/koopaapp/R$id;->labelSex:I

    .line 168
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v27, v3

    check-cast v27, Landroid/widget/TextView;

    .line 169
    .local v27, "labelSex":Landroid/widget/TextView;
    if-eqz v27, :cond_a

    .line 173
    sget v1, Llu/snt/trux/koopaapp/R$id;->labelWeight:I

    .line 174
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v28, v3

    check-cast v28, Landroid/widget/TextView;

    .line 175
    .local v28, "labelWeight":Landroid/widget/TextView;
    if-eqz v28, :cond_9

    .line 179
    sget v1, Llu/snt/trux/koopaapp/R$id;->profileCardView:I

    .line 180
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v29, v3

    check-cast v29, Landroidx/cardview/widget/CardView;

    .line 181
    .local v29, "profileCardView":Landroidx/cardview/widget/CardView;
    if-eqz v29, :cond_8

    .line 185
    sget v1, Llu/snt/trux/koopaapp/R$id;->recyclerView:I

    .line 186
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v30, v3

    check-cast v30, Landroidx/recyclerview/widget/RecyclerView;

    .line 187
    .local v30, "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    if-eqz v30, :cond_7

    .line 191
    sget v1, Llu/snt/trux/koopaapp/R$id;->trainingHeader:I

    .line 192
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v31, v3

    check-cast v31, Landroid/widget/TextView;

    .line 193
    .local v31, "trainingHeader":Landroid/widget/TextView;
    if-eqz v31, :cond_6

    .line 197
    sget v1, Llu/snt/trux/koopaapp/R$id;->userAge:I

    .line 198
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v32, v3

    check-cast v32, Landroid/widget/TextView;

    .line 199
    .local v32, "userAge":Landroid/widget/TextView;
    if-eqz v32, :cond_5

    .line 203
    sget v1, Llu/snt/trux/koopaapp/R$id;->userHeight:I

    .line 204
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v33, v3

    check-cast v33, Landroid/widget/TextView;

    .line 205
    .local v33, "userHeight":Landroid/widget/TextView;
    if-eqz v33, :cond_4

    .line 209
    sget v1, Llu/snt/trux/koopaapp/R$id;->userHeightUnit:I

    .line 210
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v34, v3

    check-cast v34, Landroid/widget/TextView;

    .line 211
    .local v34, "userHeightUnit":Landroid/widget/TextView;
    if-eqz v34, :cond_3

    .line 215
    sget v1, Llu/snt/trux/koopaapp/R$id;->userSex:I

    .line 216
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v35, v3

    check-cast v35, Landroid/widget/TextView;

    .line 217
    .local v35, "userSex":Landroid/widget/TextView;
    if-eqz v35, :cond_2

    .line 221
    sget v1, Llu/snt/trux/koopaapp/R$id;->userWeight:I

    .line 222
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v36, v3

    check-cast v36, Landroid/widget/TextView;

    .line 223
    .local v36, "userWeight":Landroid/widget/TextView;
    if-eqz v36, :cond_1

    .line 227
    sget v1, Llu/snt/trux/koopaapp/R$id;->userWeightUnit:I

    .line 228
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v37, v3

    check-cast v37, Landroid/widget/TextView;

    .line 229
    .local v37, "userWeightUnit":Landroid/widget/TextView;
    if-eqz v37, :cond_0

    .line 233
    new-instance v38, Llu/snt/trux/koopaapp/databinding/FragmentHomeBinding;

    move-object/from16 v3, v38

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v5, v2

    move-object/from16 v6, v22

    move-object/from16 v7, v23

    move-object/from16 v8, v24

    move-object/from16 v9, v25

    move-object/from16 v10, v26

    move-object/from16 v11, v27

    move-object/from16 v12, v28

    move-object/from16 v13, v29

    move-object/from16 v14, v30

    move-object/from16 v15, v31

    move-object/from16 v16, v32

    move-object/from16 v17, v33

    move-object/from16 v18, v34

    move-object/from16 v19, v35

    move-object/from16 v20, v36

    move-object/from16 v21, v37

    invoke-direct/range {v3 .. v21}, Llu/snt/trux/koopaapp/databinding/FragmentHomeBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/cardview/widget/CardView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v38

    .line 230
    :cond_0
    goto :goto_0

    .line 224
    .end local v37    # "userWeightUnit":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 218
    .end local v36    # "userWeight":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 212
    .end local v35    # "userSex":Landroid/widget/TextView;
    :cond_3
    goto :goto_0

    .line 206
    .end local v34    # "userHeightUnit":Landroid/widget/TextView;
    :cond_4
    goto :goto_0

    .line 200
    .end local v33    # "userHeight":Landroid/widget/TextView;
    :cond_5
    goto :goto_0

    .line 194
    .end local v32    # "userAge":Landroid/widget/TextView;
    :cond_6
    goto :goto_0

    .line 188
    .end local v31    # "trainingHeader":Landroid/widget/TextView;
    :cond_7
    goto :goto_0

    .line 182
    .end local v30    # "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    :cond_8
    goto :goto_0

    .line 176
    .end local v29    # "profileCardView":Landroidx/cardview/widget/CardView;
    :cond_9
    goto :goto_0

    .line 170
    .end local v28    # "labelWeight":Landroid/widget/TextView;
    :cond_a
    goto :goto_0

    .line 164
    .end local v27    # "labelSex":Landroid/widget/TextView;
    :cond_b
    goto :goto_0

    .line 158
    .end local v26    # "labelProfile":Landroid/widget/TextView;
    :cond_c
    goto :goto_0

    .line 152
    .end local v25    # "labelHeight":Landroid/widget/TextView;
    :cond_d
    goto :goto_0

    .line 146
    .end local v24    # "labelAge":Landroid/widget/TextView;
    :cond_e
    goto :goto_0

    .line 140
    .end local v23    # "emptyMessage":Landroid/widget/TextView;
    :cond_f
    goto :goto_0

    .line 134
    .end local v22    # "buttonEditProfile":Landroidx/appcompat/widget/AppCompatButton;
    :cond_10
    nop

    .line 238
    .end local v2    # "addTrainingButton":Landroidx/appcompat/widget/AppCompatButton;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 239
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Llu/snt/trux/koopaapp/databinding/FragmentHomeBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 112
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Llu/snt/trux/koopaapp/databinding/FragmentHomeBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Llu/snt/trux/koopaapp/databinding/FragmentHomeBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Llu/snt/trux/koopaapp/databinding/FragmentHomeBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 118
    sget v0, Llu/snt/trux/koopaapp/R$layout;->fragment_home:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 119
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 120
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 122
    :cond_0
    invoke-static {v0}, Llu/snt/trux/koopaapp/databinding/FragmentHomeBinding;->bind(Landroid/view/View;)Llu/snt/trux/koopaapp/databinding/FragmentHomeBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Llu/snt/trux/koopaapp/databinding/FragmentHomeBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 107
    iget-object v0, p0, Llu/snt/trux/koopaapp/databinding/FragmentHomeBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
