.class Llu/snt/trux/regapp/ui/home/MyAccountFragment$4;
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

    .line 194
    iput-object p1, p0, Llu/snt/trux/regapp/ui/home/MyAccountFragment$4;->this$0:Llu/snt/trux/regapp/ui/home/MyAccountFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .line 198
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Llu/snt/trux/regapp/ui/home/MyAccountFragment$4;->this$0:Llu/snt/trux/regapp/ui/home/MyAccountFragment;

    invoke-virtual {v1}, Llu/snt/trux/regapp/ui/home/MyAccountFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 199
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v1, "Change Password"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 200
    iget-object v2, p0, Llu/snt/trux/regapp/ui/home/MyAccountFragment$4;->this$0:Llu/snt/trux/regapp/ui/home/MyAccountFragment;

    invoke-virtual {v2}, Llu/snt/trux/regapp/ui/home/MyAccountFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Llu/snt/trux/regapp/R$layout;->dialog_change_password:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 201
    .local v2, "dialogView":Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 204
    sget v3, Llu/snt/trux/regapp/R$id;->editTextOldPassword:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 205
    .local v3, "editTextOldPassword":Landroid/widget/EditText;
    sget v4, Llu/snt/trux/regapp/R$id;->editTextNewPassword:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 206
    .local v4, "editTextNewPassword":Landroid/widget/EditText;
    sget v5, Llu/snt/trux/regapp/R$id;->editTextConfirmPassword:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 209
    .local v5, "editTextConfirmPassword":Landroid/widget/EditText;
    new-instance v6, Llu/snt/trux/regapp/ui/home/MyAccountFragment$4$1;

    invoke-direct {v6, p0, v3, v4, v5}, Llu/snt/trux/regapp/ui/home/MyAccountFragment$4$1;-><init>(Llu/snt/trux/regapp/ui/home/MyAccountFragment$4;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 254
    new-instance v1, Llu/snt/trux/regapp/ui/home/MyAccountFragment$4$2;

    invoke-direct {v1, p0}, Llu/snt/trux/regapp/ui/home/MyAccountFragment$4$2;-><init>(Llu/snt/trux/regapp/ui/home/MyAccountFragment$4;)V

    const-string v6, "Cancel"

    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 262
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 263
    return-void
.end method
