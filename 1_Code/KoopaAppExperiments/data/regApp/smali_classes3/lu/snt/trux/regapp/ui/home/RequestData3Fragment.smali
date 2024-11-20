.class public Llu/snt/trux/regapp/ui/home/RequestData3Fragment;
.super Landroidx/fragment/app/Fragment;
.source "RequestData3Fragment.java"


# instance fields
.field private firebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

.field private firebaseCurrentUser:Lcom/google/firebase/auth/FirebaseUser;

.field private firebaseDatabase:Lcom/google/firebase/database/FirebaseDatabase;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 27
    sget v0, Llu/snt/trux/regapp/R$layout;->fragment_request_data3:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 29
    .local v0, "view":Landroid/view/View;
    return-object v0
.end method

.method public onStart()V
    .locals 0

    .line 34
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 35
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 39
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 40
    return-void
.end method
