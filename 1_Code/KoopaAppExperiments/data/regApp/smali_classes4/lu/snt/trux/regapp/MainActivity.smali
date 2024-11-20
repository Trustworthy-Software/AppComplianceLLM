.class public Llu/snt/trux/regapp/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"


# instance fields
.field private emailEditText:Landroid/widget/EditText;

.field private firebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

.field private firebaseCurrentUser:Lcom/google/firebase/auth/FirebaseUser;

.field private forgotPswTextView:Landroid/widget/TextView;

.field private loginButton:Landroid/widget/Button;

.field private passwordEditText:Landroid/widget/EditText;

.field private registrationButton:Landroid/widget/Button;


# direct methods
.method static bridge synthetic -$$Nest$fgetemailEditText(Llu/snt/trux/regapp/MainActivity;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Llu/snt/trux/regapp/MainActivity;->emailEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfirebaseAuth(Llu/snt/trux/regapp/MainActivity;)Lcom/google/firebase/auth/FirebaseAuth;
    .locals 0

    iget-object p0, p0, Llu/snt/trux/regapp/MainActivity;->firebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpasswordEditText(Llu/snt/trux/regapp/MainActivity;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Llu/snt/trux/regapp/MainActivity;->passwordEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 40
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const-string v0, "regApp"

    const-string v1, "\u2705 Main Activity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-static {p0}, Lcom/google/firebase/FirebaseApp;->initializeApp(Landroid/content/Context;)Lcom/google/firebase/FirebaseApp;

    .line 46
    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    iput-object v0, p0, Llu/snt/trux/regapp/MainActivity;->firebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

    .line 47
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    iput-object v0, p0, Llu/snt/trux/regapp/MainActivity;->firebaseCurrentUser:Lcom/google/firebase/auth/FirebaseUser;

    .line 50
    if-eqz v0, :cond_0

    .line 52
    new-instance v0, Landroid/content/Intent;

    const-class v1, Llu/snt/trux/regapp/HomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 53
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Llu/snt/trux/regapp/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 54
    invoke-virtual {p0}, Llu/snt/trux/regapp/MainActivity;->finish()V

    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 57
    :cond_0
    sget v0, Llu/snt/trux/regapp/R$layout;->activity_main:I

    invoke-virtual {p0, v0}, Llu/snt/trux/regapp/MainActivity;->setContentView(I)V

    .line 60
    sget v0, Llu/snt/trux/regapp/R$id;->editTextEmail:I

    invoke-virtual {p0, v0}, Llu/snt/trux/regapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Llu/snt/trux/regapp/MainActivity;->emailEditText:Landroid/widget/EditText;

    .line 61
    sget v0, Llu/snt/trux/regapp/R$id;->editTextPassword:I

    invoke-virtual {p0, v0}, Llu/snt/trux/regapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Llu/snt/trux/regapp/MainActivity;->passwordEditText:Landroid/widget/EditText;

    .line 62
    sget v0, Llu/snt/trux/regapp/R$id;->buttonLogin:I

    invoke-virtual {p0, v0}, Llu/snt/trux/regapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Llu/snt/trux/regapp/MainActivity;->loginButton:Landroid/widget/Button;

    .line 63
    sget v0, Llu/snt/trux/regapp/R$id;->buttonRegister:I

    invoke-virtual {p0, v0}, Llu/snt/trux/regapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Llu/snt/trux/regapp/MainActivity;->registrationButton:Landroid/widget/Button;

    .line 64
    sget v0, Llu/snt/trux/regapp/R$id;->textViewForgotPsw:I

    invoke-virtual {p0, v0}, Llu/snt/trux/regapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llu/snt/trux/regapp/MainActivity;->forgotPswTextView:Landroid/widget/TextView;

    .line 67
    iget-object v0, p0, Llu/snt/trux/regapp/MainActivity;->loginButton:Landroid/widget/Button;

    new-instance v1, Llu/snt/trux/regapp/MainActivity$1;

    invoke-direct {v1, p0}, Llu/snt/trux/regapp/MainActivity$1;-><init>(Llu/snt/trux/regapp/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v0, p0, Llu/snt/trux/regapp/MainActivity;->registrationButton:Landroid/widget/Button;

    new-instance v1, Llu/snt/trux/regapp/MainActivity$2;

    invoke-direct {v1, p0}, Llu/snt/trux/regapp/MainActivity$2;-><init>(Llu/snt/trux/regapp/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v0, p0, Llu/snt/trux/regapp/MainActivity;->forgotPswTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 112
    iget-object v0, p0, Llu/snt/trux/regapp/MainActivity;->forgotPswTextView:Landroid/widget/TextView;

    new-instance v1, Llu/snt/trux/regapp/MainActivity$3;

    invoke-direct {v1, p0}, Llu/snt/trux/regapp/MainActivity$3;-><init>(Llu/snt/trux/regapp/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    :goto_0
    return-void
.end method
