.class Llu/snt/trux/regapp/ui/home/MyAccountFragment$3;
.super Ljava/lang/Object;
.source "MyAccountFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llu/snt/trux/regapp/ui/home/MyAccountFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llu/snt/trux/regapp/ui/home/MyAccountFragment;


# direct methods
.method constructor <init>(Llu/snt/trux/regapp/ui/home/MyAccountFragment;)V
    .locals 0
    .param p1, "this$0"    # Llu/snt/trux/regapp/ui/home/MyAccountFragment;

    .line 109
    iput-object p1, p0, Llu/snt/trux/regapp/ui/home/MyAccountFragment$3;->this$0:Llu/snt/trux/regapp/ui/home/MyAccountFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 113
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Llu/snt/trux/regapp/ui/home/MyAccountFragment$3;->this$0:Llu/snt/trux/regapp/ui/home/MyAccountFragment;

    invoke-virtual {v1}, Llu/snt/trux/regapp/ui/home/MyAccountFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 114
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v1, "Confirmation"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 115
    const-string v1, "Are you sure you want to delete your account? This action cannot be undone."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 116
    iget-object v1, p0, Llu/snt/trux/regapp/ui/home/MyAccountFragment$3;->this$0:Llu/snt/trux/regapp/ui/home/MyAccountFragment;

    invoke-virtual {v1}, Llu/snt/trux/regapp/ui/home/MyAccountFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Llu/snt/trux/regapp/R$layout;->dialog_delete_account:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 117
    .local v1, "dialogView":Landroid/view/View;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 119
    new-instance v2, Llu/snt/trux/regapp/ui/home/MyAccountFragment$3$1;

    invoke-direct {v2, p0, v1}, Llu/snt/trux/regapp/ui/home/MyAccountFragment$3$1;-><init>(Llu/snt/trux/regapp/ui/home/MyAccountFragment$3;Landroid/view/View;)V

    const-string v3, "Delete"

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 182
    new-instance v2, Llu/snt/trux/regapp/ui/home/MyAccountFragment$3$2;

    invoke-direct {v2, p0}, Llu/snt/trux/regapp/ui/home/MyAccountFragment$3$2;-><init>(Llu/snt/trux/regapp/ui/home/MyAccountFragment$3;)V

    const-string v3, "Cancel"

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 188
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 189
    return-void
.end method
