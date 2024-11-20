.class Llu/snt/trux/regapp/ui/home/MyAccountFragment$6;
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

    .line 346
    iput-object p1, p0, Llu/snt/trux/regapp/ui/home/MyAccountFragment$6;->this$0:Llu/snt/trux/regapp/ui/home/MyAccountFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .line 350
    iget-object v0, p0, Llu/snt/trux/regapp/ui/home/MyAccountFragment$6;->this$0:Llu/snt/trux/regapp/ui/home/MyAccountFragment;

    invoke-virtual {v0}, Llu/snt/trux/regapp/ui/home/MyAccountFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 351
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Llu/snt/trux/regapp/R$layout;->dialog_edit_personal_info:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 354
    .local v1, "dialogView":Landroid/view/View;
    sget v2, Llu/snt/trux/regapp/R$id;->editTextName:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 355
    .local v2, "editTextName":Landroid/widget/EditText;
    sget v3, Llu/snt/trux/regapp/R$id;->editTextSurname:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 359
    .local v3, "editTextSurname":Landroid/widget/EditText;
    iget-object v4, p0, Llu/snt/trux/regapp/ui/home/MyAccountFragment$6;->this$0:Llu/snt/trux/regapp/ui/home/MyAccountFragment;

    invoke-static {v4}, Llu/snt/trux/regapp/ui/home/MyAccountFragment;->-$$Nest$fgettextViewNameUser(Llu/snt/trux/regapp/ui/home/MyAccountFragment;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 360
    iget-object v4, p0, Llu/snt/trux/regapp/ui/home/MyAccountFragment$6;->this$0:Llu/snt/trux/regapp/ui/home/MyAccountFragment;

    invoke-static {v4}, Llu/snt/trux/regapp/ui/home/MyAccountFragment;->-$$Nest$fgettextViewSurnameUser(Llu/snt/trux/regapp/ui/home/MyAccountFragment;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 363
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Llu/snt/trux/regapp/ui/home/MyAccountFragment$6;->this$0:Llu/snt/trux/regapp/ui/home/MyAccountFragment;

    invoke-virtual {v5}, Llu/snt/trux/regapp/ui/home/MyAccountFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 364
    .local v4, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 365
    const-string v6, "Edit Information"

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Llu/snt/trux/regapp/ui/home/MyAccountFragment$6$2;

    invoke-direct {v6, p0, v2, v3}, Llu/snt/trux/regapp/ui/home/MyAccountFragment$6$2;-><init>(Llu/snt/trux/regapp/ui/home/MyAccountFragment$6;Landroid/widget/EditText;Landroid/widget/EditText;)V

    .line 366
    const-string v7, "Submit"

    invoke-virtual {v5, v7, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Llu/snt/trux/regapp/ui/home/MyAccountFragment$6$1;

    invoke-direct {v6, p0}, Llu/snt/trux/regapp/ui/home/MyAccountFragment$6$1;-><init>(Llu/snt/trux/regapp/ui/home/MyAccountFragment$6;)V

    .line 401
    const-string v7, "Cancel"

    invoke-virtual {v5, v7, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 410
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 411
    .local v5, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 412
    return-void
.end method
