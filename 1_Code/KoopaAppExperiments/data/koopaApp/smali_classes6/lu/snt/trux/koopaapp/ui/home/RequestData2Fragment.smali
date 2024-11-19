.class public Llu/snt/trux/koopaapp/ui/home/RequestData2Fragment;
.super Landroidx/fragment/app/Fragment;
.source "RequestData2Fragment.java"


# instance fields
.field private firebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

.field private firebaseCurrentUser:Lcom/google/firebase/auth/FirebaseUser;

.field private firebaseDatabase:Lcom/google/firebase/database/FirebaseDatabase;


# direct methods
.method static bridge synthetic -$$Nest$msendEmail(Llu/snt/trux/koopaapp/ui/home/RequestData2Fragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Llu/snt/trux/koopaapp/ui/home/RequestData2Fragment;->sendEmail(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private sendEmail(Ljava/lang/String;)V
    .locals 6
    .param p1, "emailAddress"    # Ljava/lang/String;

    .line 58
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 59
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mailto:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 60
    const-string v1, "android.intent.extra.EMAIL"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    const-string v1, "Send Email"

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    .line 66
    .local v1, "chooser":Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0, v1}, Llu/snt/trux/koopaapp/ui/home/RequestData2Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    goto :goto_0

    .line 67
    :catch_0
    move-exception v2

    .line 69
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {p0}, Llu/snt/trux/koopaapp/ui/home/RequestData2Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "\u274c Error with email client"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 71
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    :goto_0
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 32
    sget v0, Llu/snt/trux/koopaapp/R$layout;->fragment_request_data2:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 35
    .local v0, "view":Landroid/view/View;
    sget v1, Llu/snt/trux/koopaapp/R$id;->generalContactEmailButton:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 36
    .local v1, "generalContactEmailButton":Landroid/widget/Button;
    sget v2, Llu/snt/trux/koopaapp/R$id;->dpoContactEmailButton:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 39
    .local v2, "dpoContactEmailButton":Landroid/widget/Button;
    new-instance v3, Llu/snt/trux/koopaapp/ui/home/RequestData2Fragment$1;

    invoke-direct {v3, p0}, Llu/snt/trux/koopaapp/ui/home/RequestData2Fragment$1;-><init>(Llu/snt/trux/koopaapp/ui/home/RequestData2Fragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    new-instance v3, Llu/snt/trux/koopaapp/ui/home/RequestData2Fragment$2;

    invoke-direct {v3, p0}, Llu/snt/trux/koopaapp/ui/home/RequestData2Fragment$2;-><init>(Llu/snt/trux/koopaapp/ui/home/RequestData2Fragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    return-object v0
.end method

.method public onStart()V
    .locals 0

    .line 78
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 79
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 83
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 84
    return-void
.end method
