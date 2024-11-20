.class public Llu/snt/trux/regapp/ui/home/MyAccountFragment;
.super Landroidx/fragment/app/Fragment;
.source "MyAccountFragment.java"


# instance fields
.field private changeEmailButton:Landroid/widget/Button;

.field private changePswButton:Landroid/widget/Button;

.field private deleteAccountButton:Landroid/widget/Button;

.field private editNameSurnameButton:Landroid/widget/Button;

.field private firebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

.field private firebaseAuthStateListener:Lcom/google/firebase/auth/FirebaseAuth$AuthStateListener;

.field private firebaseCurrentUser:Lcom/google/firebase/auth/FirebaseUser;

.field private firebaseDatabase:Lcom/google/firebase/database/FirebaseDatabase;

.field private textViewEmailUser:Landroid/widget/TextView;

.field private textViewNameUser:Landroid/widget/TextView;

.field private textViewSurnameUser:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetfirebaseAuth(Llu/snt/trux/regapp/ui/home/MyAccountFragment;)Lcom/google/firebase/auth/FirebaseAuth;
    .locals 0

    iget-object p0, p0, Llu/snt/trux/regapp/ui/home/MyAccountFragment;->firebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfirebaseCurrentUser(Llu/snt/trux/regapp/ui/home/MyAccountFragment;)Lcom/google/firebase/auth/FirebaseUser;
    .locals 0

    iget-object p0, p0, Llu/snt/trux/regapp/ui/home/MyAccountFragment;->firebaseCurrentUser:Lcom/google/firebase/auth/FirebaseUser;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettextViewEmailUser(Llu/snt/trux/regapp/ui/home/MyAccountFragment;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Llu/snt/trux/regapp/ui/home/MyAccountFragment;->textViewEmailUser:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettextViewNameUser(Llu/snt/trux/regapp/ui/home/MyAccountFragment;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Llu/snt/trux/regapp/ui/home/MyAccountFragment;->textViewNameUser:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettextViewSurnameUser(Llu/snt/trux/regapp/ui/home/MyAccountFragment;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Llu/snt/trux/regapp/ui/home/MyAccountFragment;->textViewSurnameUser:Landroid/widget/TextView;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 52
    sget v0, Llu/snt/trux/regapp/R$layout;->fragment_my_account:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 55
    .local v0, "view":Landroid/view/View;
    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v1

    iput-object v1, p0, Llu/snt/trux/regapp/ui/home/MyAccountFragment;->firebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

    .line 56
    invoke-virtual {v1}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v1

    iput-object v1, p0, Llu/snt/trux/regapp/ui/home/MyAccountFragment;->firebaseCurrentUser:Lcom/google/firebase/auth/FirebaseUser;

    .line 57
    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance()Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object v1

    iput-object v1, p0, Llu/snt/trux/regapp/ui/home/MyAccountFragment;->firebaseDatabase:Lcom/google/firebase/database/FirebaseDatabase;

    .line 60
    sget v1, Llu/snt/trux/regapp/R$id;->textViewNameUser:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Llu/snt/trux/regapp/ui/home/MyAccountFragment;->textViewNameUser:Landroid/widget/TextView;

    .line 61
    sget v1, Llu/snt/trux/regapp/R$id;->textViewSurnameUser:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Llu/snt/trux/regapp/ui/home/MyAccountFragment;->textViewSurnameUser:Landroid/widget/TextView;

    .line 62
    sget v1, Llu/snt/trux/regapp/R$id;->textViewEmailUser:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Llu/snt/trux/regapp/ui/home/MyAccountFragment;->textViewEmailUser:Landroid/widget/TextView;

    .line 65
    new-instance v1, Llu/snt/trux/regapp/ui/home/MyAccountFragment$1;

    invoke-direct {v1, p0}, Llu/snt/trux/regapp/ui/home/MyAccountFragment$1;-><init>(Llu/snt/trux/regapp/ui/home/MyAccountFragment;)V

    iput-object v1, p0, Llu/snt/trux/regapp/ui/home/MyAccountFragment;->firebaseAuthStateListener:Lcom/google/firebase/auth/FirebaseAuth$AuthStateListener;

    .line 79
    iget-object v1, p0, Llu/snt/trux/regapp/ui/home/MyAccountFragment;->firebaseCurrentUser:Lcom/google/firebase/auth/FirebaseUser;

    if-eqz v1, :cond_0

    .line 81
    invoke-virtual {v1}, Lcom/google/firebase/auth/FirebaseUser;->getUid()Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "userId":Ljava/lang/String;
    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance()Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object v2

    const-string v3, "usersDB"

    invoke-virtual {v2, v3}, Lcom/google/firebase/database/FirebaseDatabase;->getReference(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v2

    .line 84
    .local v2, "userRef":Lcom/google/firebase/database/DatabaseReference;
    new-instance v3, Llu/snt/trux/regapp/ui/home/MyAccountFragment$2;

    invoke-direct {v3, p0}, Llu/snt/trux/regapp/ui/home/MyAccountFragment$2;-><init>(Llu/snt/trux/regapp/ui/home/MyAccountFragment;)V

    invoke-virtual {v2, v3}, Lcom/google/firebase/database/DatabaseReference;->addListenerForSingleValueEvent(Lcom/google/firebase/database/ValueEventListener;)V

    .line 108
    .end local v1    # "userId":Ljava/lang/String;
    .end local v2    # "userRef":Lcom/google/firebase/database/DatabaseReference;
    :cond_0
    sget v1, Llu/snt/trux/regapp/R$id;->buttonDeleteAccount:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Llu/snt/trux/regapp/ui/home/MyAccountFragment;->deleteAccountButton:Landroid/widget/Button;

    .line 109
    new-instance v2, Llu/snt/trux/regapp/ui/home/MyAccountFragment$3;

    invoke-direct {v2, p0}, Llu/snt/trux/regapp/ui/home/MyAccountFragment$3;-><init>(Llu/snt/trux/regapp/ui/home/MyAccountFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    sget v1, Llu/snt/trux/regapp/R$id;->buttonChangePassword:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Llu/snt/trux/regapp/ui/home/MyAccountFragment;->changePswButton:Landroid/widget/Button;

    .line 194
    new-instance v2, Llu/snt/trux/regapp/ui/home/MyAccountFragment$4;

    invoke-direct {v2, p0}, Llu/snt/trux/regapp/ui/home/MyAccountFragment$4;-><init>(Llu/snt/trux/regapp/ui/home/MyAccountFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    sget v1, Llu/snt/trux/regapp/R$id;->buttonChangeEmail:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Llu/snt/trux/regapp/ui/home/MyAccountFragment;->changeEmailButton:Landroid/widget/Button;

    .line 268
    new-instance v2, Llu/snt/trux/regapp/ui/home/MyAccountFragment$5;

    invoke-direct {v2, p0}, Llu/snt/trux/regapp/ui/home/MyAccountFragment$5;-><init>(Llu/snt/trux/regapp/ui/home/MyAccountFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 345
    sget v1, Llu/snt/trux/regapp/R$id;->buttonEditNameSurname:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Llu/snt/trux/regapp/ui/home/MyAccountFragment;->editNameSurnameButton:Landroid/widget/Button;

    .line 346
    new-instance v2, Llu/snt/trux/regapp/ui/home/MyAccountFragment$6;

    invoke-direct {v2, p0}, Llu/snt/trux/regapp/ui/home/MyAccountFragment$6;-><init>(Llu/snt/trux/regapp/ui/home/MyAccountFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 415
    return-object v0
.end method

.method public onStart()V
    .locals 2

    .line 421
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 422
    iget-object v0, p0, Llu/snt/trux/regapp/ui/home/MyAccountFragment;->firebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

    iget-object v1, p0, Llu/snt/trux/regapp/ui/home/MyAccountFragment;->firebaseAuthStateListener:Lcom/google/firebase/auth/FirebaseAuth$AuthStateListener;

    invoke-virtual {v0, v1}, Lcom/google/firebase/auth/FirebaseAuth;->addAuthStateListener(Lcom/google/firebase/auth/FirebaseAuth$AuthStateListener;)V

    .line 423
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 428
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 429
    iget-object v0, p0, Llu/snt/trux/regapp/ui/home/MyAccountFragment;->firebaseAuthStateListener:Lcom/google/firebase/auth/FirebaseAuth$AuthStateListener;

    if-eqz v0, :cond_0

    .line 430
    iget-object v1, p0, Llu/snt/trux/regapp/ui/home/MyAccountFragment;->firebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v1, v0}, Lcom/google/firebase/auth/FirebaseAuth;->removeAuthStateListener(Lcom/google/firebase/auth/FirebaseAuth$AuthStateListener;)V

    .line 432
    :cond_0
    return-void
.end method
