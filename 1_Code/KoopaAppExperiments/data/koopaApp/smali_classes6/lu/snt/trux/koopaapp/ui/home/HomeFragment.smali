.class public Llu/snt/trux/koopaapp/ui/home/HomeFragment;
.super Landroidx/fragment/app/Fragment;
.source "HomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llu/snt/trux/koopaapp/ui/home/HomeFragment$TrainingAdapter;
    }
.end annotation


# instance fields
.field private addTrainingButton:Landroid/widget/Button;

.field private editProfileButton:Landroid/widget/Button;

.field private firebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

.field private firebaseCurrentUser:Lcom/google/firebase/auth/FirebaseUser;

.field private firebaseDatabase:Lcom/google/firebase/database/FirebaseDatabase;

.field private userAgeTextView:Landroid/widget/TextView;

.field private userHeightTextView:Landroid/widget/TextView;

.field private userSexTextView:Landroid/widget/TextView;

.field private userWeightTextView:Landroid/widget/TextView;

.field private valueEventListener:Lcom/google/firebase/database/ValueEventListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetfirebaseCurrentUser(Llu/snt/trux/koopaapp/ui/home/HomeFragment;)Lcom/google/firebase/auth/FirebaseUser;
    .locals 0

    iget-object p0, p0, Llu/snt/trux/koopaapp/ui/home/HomeFragment;->firebaseCurrentUser:Lcom/google/firebase/auth/FirebaseUser;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetuserAgeTextView(Llu/snt/trux/koopaapp/ui/home/HomeFragment;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Llu/snt/trux/koopaapp/ui/home/HomeFragment;->userAgeTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetuserHeightTextView(Llu/snt/trux/koopaapp/ui/home/HomeFragment;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Llu/snt/trux/koopaapp/ui/home/HomeFragment;->userHeightTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetuserSexTextView(Llu/snt/trux/koopaapp/ui/home/HomeFragment;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Llu/snt/trux/koopaapp/ui/home/HomeFragment;->userSexTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetuserWeightTextView(Llu/snt/trux/koopaapp/ui/home/HomeFragment;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Llu/snt/trux/koopaapp/ui/home/HomeFragment;->userWeightTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 58
    sget v0, Llu/snt/trux/koopaapp/R$layout;->fragment_home:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 61
    .local v0, "view":Landroid/view/View;
    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v1

    iput-object v1, p0, Llu/snt/trux/koopaapp/ui/home/HomeFragment;->firebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

    .line 62
    invoke-virtual {v1}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v1

    iput-object v1, p0, Llu/snt/trux/koopaapp/ui/home/HomeFragment;->firebaseCurrentUser:Lcom/google/firebase/auth/FirebaseUser;

    .line 63
    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance()Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object v1

    iput-object v1, p0, Llu/snt/trux/koopaapp/ui/home/HomeFragment;->firebaseDatabase:Lcom/google/firebase/database/FirebaseDatabase;

    .line 66
    iget-object v2, p0, Llu/snt/trux/koopaapp/ui/home/HomeFragment;->firebaseCurrentUser:Lcom/google/firebase/auth/FirebaseUser;

    if-eqz v2, :cond_0

    .line 68
    invoke-virtual {v1}, Lcom/google/firebase/database/FirebaseDatabase;->getReference()Lcom/google/firebase/database/DatabaseReference;

    move-result-object v1

    const-string v2, "usersDB"

    invoke-virtual {v1, v2}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v1

    iget-object v2, p0, Llu/snt/trux/koopaapp/ui/home/HomeFragment;->firebaseCurrentUser:Lcom/google/firebase/auth/FirebaseUser;

    invoke-virtual {v2}, Lcom/google/firebase/auth/FirebaseUser;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v1

    .line 71
    .local v1, "usersDBReference":Lcom/google/firebase/database/DatabaseReference;
    sget v2, Llu/snt/trux/koopaapp/R$id;->userHeight:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Llu/snt/trux/koopaapp/ui/home/HomeFragment;->userHeightTextView:Landroid/widget/TextView;

    .line 72
    sget v2, Llu/snt/trux/koopaapp/R$id;->userWeight:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Llu/snt/trux/koopaapp/ui/home/HomeFragment;->userWeightTextView:Landroid/widget/TextView;

    .line 73
    sget v2, Llu/snt/trux/koopaapp/R$id;->userSex:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Llu/snt/trux/koopaapp/ui/home/HomeFragment;->userSexTextView:Landroid/widget/TextView;

    .line 74
    sget v2, Llu/snt/trux/koopaapp/R$id;->userAge:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Llu/snt/trux/koopaapp/ui/home/HomeFragment;->userAgeTextView:Landroid/widget/TextView;

    .line 77
    new-instance v2, Llu/snt/trux/koopaapp/ui/home/HomeFragment$1;

    invoke-direct {v2, p0, v0}, Llu/snt/trux/koopaapp/ui/home/HomeFragment$1;-><init>(Llu/snt/trux/koopaapp/ui/home/HomeFragment;Landroid/view/View;)V

    iput-object v2, p0, Llu/snt/trux/koopaapp/ui/home/HomeFragment;->valueEventListener:Lcom/google/firebase/database/ValueEventListener;

    .line 160
    invoke-virtual {v1, v2}, Lcom/google/firebase/database/DatabaseReference;->addValueEventListener(Lcom/google/firebase/database/ValueEventListener;)Lcom/google/firebase/database/ValueEventListener;

    .line 164
    .end local v1    # "usersDBReference":Lcom/google/firebase/database/DatabaseReference;
    :cond_0
    sget v1, Llu/snt/trux/koopaapp/R$id;->buttonEditProfile:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Llu/snt/trux/koopaapp/ui/home/HomeFragment;->editProfileButton:Landroid/widget/Button;

    .line 165
    new-instance v2, Llu/snt/trux/koopaapp/ui/home/HomeFragment$2;

    invoke-direct {v2, p0}, Llu/snt/trux/koopaapp/ui/home/HomeFragment$2;-><init>(Llu/snt/trux/koopaapp/ui/home/HomeFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    sget v1, Llu/snt/trux/koopaapp/R$id;->addTrainingButton:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Llu/snt/trux/koopaapp/ui/home/HomeFragment;->addTrainingButton:Landroid/widget/Button;

    .line 245
    new-instance v2, Llu/snt/trux/koopaapp/ui/home/HomeFragment$3;

    invoke-direct {v2, p0}, Llu/snt/trux/koopaapp/ui/home/HomeFragment$3;-><init>(Llu/snt/trux/koopaapp/ui/home/HomeFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    return-object v0
.end method

.method public onStop()V
    .locals 2

    .line 304
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 307
    iget-object v0, p0, Llu/snt/trux/koopaapp/ui/home/HomeFragment;->valueEventListener:Lcom/google/firebase/database/ValueEventListener;

    if-eqz v0, :cond_0

    .line 308
    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance()Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/FirebaseDatabase;->getReference()Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    const-string v1, "usersDB"

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    iget-object v1, p0, Llu/snt/trux/koopaapp/ui/home/HomeFragment;->firebaseCurrentUser:Lcom/google/firebase/auth/FirebaseUser;

    invoke-virtual {v1}, Lcom/google/firebase/auth/FirebaseUser;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    .line 309
    .local v0, "usersDBReference":Lcom/google/firebase/database/DatabaseReference;
    iget-object v1, p0, Llu/snt/trux/koopaapp/ui/home/HomeFragment;->valueEventListener:Lcom/google/firebase/database/ValueEventListener;

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DatabaseReference;->removeEventListener(Lcom/google/firebase/database/ValueEventListener;)V

    .line 311
    .end local v0    # "usersDBReference":Lcom/google/firebase/database/DatabaseReference;
    :cond_0
    return-void
.end method
