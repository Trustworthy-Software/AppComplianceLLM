.class Llu/snt/trux/koopaapp/ui/home/MyAccountFragment$1;
.super Ljava/lang/Object;
.source "MyAccountFragment.java"

# interfaces
.implements Lcom/google/firebase/auth/FirebaseAuth$AuthStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llu/snt/trux/koopaapp/ui/home/MyAccountFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llu/snt/trux/koopaapp/ui/home/MyAccountFragment;


# direct methods
.method constructor <init>(Llu/snt/trux/koopaapp/ui/home/MyAccountFragment;)V
    .locals 0
    .param p1, "this$0"    # Llu/snt/trux/koopaapp/ui/home/MyAccountFragment;

    .line 65
    iput-object p1, p0, Llu/snt/trux/koopaapp/ui/home/MyAccountFragment$1;->this$0:Llu/snt/trux/koopaapp/ui/home/MyAccountFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthStateChanged(Lcom/google/firebase/auth/FirebaseAuth;)V
    .locals 4
    .param p1, "firebaseAuth"    # Lcom/google/firebase/auth/FirebaseAuth;

    .line 68
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    .line 69
    .local v0, "user":Lcom/google/firebase/auth/FirebaseUser;
    if-nez v0, :cond_0

    .line 71
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Llu/snt/trux/koopaapp/ui/home/MyAccountFragment$1;->this$0:Llu/snt/trux/koopaapp/ui/home/MyAccountFragment;

    invoke-virtual {v2}, Llu/snt/trux/koopaapp/ui/home/MyAccountFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v3, Llu/snt/trux/koopaapp/MainActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 72
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Llu/snt/trux/koopaapp/ui/home/MyAccountFragment$1;->this$0:Llu/snt/trux/koopaapp/ui/home/MyAccountFragment;

    invoke-virtual {v2, v1}, Llu/snt/trux/koopaapp/ui/home/MyAccountFragment;->startActivity(Landroid/content/Intent;)V

    .line 73
    iget-object v2, p0, Llu/snt/trux/koopaapp/ui/home/MyAccountFragment$1;->this$0:Llu/snt/trux/koopaapp/ui/home/MyAccountFragment;

    invoke-virtual {v2}, Llu/snt/trux/koopaapp/ui/home/MyAccountFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->finish()V

    .line 75
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
