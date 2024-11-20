.class Llu/snt/trux/regapp/ui/home/MyAccountFragment$5;
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

    .line 268
    iput-object p1, p0, Llu/snt/trux/regapp/ui/home/MyAccountFragment$5;->this$0:Llu/snt/trux/regapp/ui/home/MyAccountFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .line 272
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Llu/snt/trux/regapp/ui/home/MyAccountFragment$5;->this$0:Llu/snt/trux/regapp/ui/home/MyAccountFragment;

    invoke-virtual {v1}, Llu/snt/trux/regapp/ui/home/MyAccountFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 273
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v1, "Change Email"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 274
    iget-object v2, p0, Llu/snt/trux/regapp/ui/home/MyAccountFragment$5;->this$0:Llu/snt/trux/regapp/ui/home/MyAccountFragment;

    invoke-virtual {v2}, Llu/snt/trux/regapp/ui/home/MyAccountFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Llu/snt/trux/regapp/R$layout;->dialog_change_email:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 275
    .local v2, "dialogView":Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 278
    sget v3, Llu/snt/trux/regapp/R$id;->editTextNewEmail:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 279
    .local v3, "editTextNewEmail":Landroid/widget/EditText;
    sget v4, Llu/snt/trux/regapp/R$id;->editTextOldPassword:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 282
    .local v4, "editTextOldPassword":Landroid/widget/EditText;
    new-instance v5, Llu/snt/trux/regapp/ui/home/MyAccountFragment$5$1;

    invoke-direct {v5, p0, v3, v4}, Llu/snt/trux/regapp/ui/home/MyAccountFragment$5$1;-><init>(Llu/snt/trux/regapp/ui/home/MyAccountFragment$5;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 332
    new-instance v1, Llu/snt/trux/regapp/ui/home/MyAccountFragment$5$2;

    invoke-direct {v1, p0}, Llu/snt/trux/regapp/ui/home/MyAccountFragment$5$2;-><init>(Llu/snt/trux/regapp/ui/home/MyAccountFragment$5;)V

    const-string v5, "Cancel"

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 340
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 341
    return-void
.end method
