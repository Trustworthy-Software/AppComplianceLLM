.class Llu/snt/trux/regapp/ui/home/HomeFragment$2;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llu/snt/trux/regapp/ui/home/HomeFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llu/snt/trux/regapp/ui/home/HomeFragment;


# direct methods
.method constructor <init>(Llu/snt/trux/regapp/ui/home/HomeFragment;)V
    .locals 0
    .param p1, "this$0"    # Llu/snt/trux/regapp/ui/home/HomeFragment;

    .line 165
    iput-object p1, p0, Llu/snt/trux/regapp/ui/home/HomeFragment$2;->this$0:Llu/snt/trux/regapp/ui/home/HomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .line 169
    iget-object v0, p0, Llu/snt/trux/regapp/ui/home/HomeFragment$2;->this$0:Llu/snt/trux/regapp/ui/home/HomeFragment;

    invoke-virtual {v0}, Llu/snt/trux/regapp/ui/home/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 170
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Llu/snt/trux/regapp/R$layout;->dialog_edit_fitness_profile:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 173
    .local v1, "dialogView":Landroid/view/View;
    sget v2, Llu/snt/trux/regapp/R$id;->editTextHeight:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 174
    .local v2, "editTextHeight":Landroid/widget/EditText;
    sget v3, Llu/snt/trux/regapp/R$id;->editTextWeight:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 177
    .local v3, "editTextWeight":Landroid/widget/EditText;
    iget-object v4, p0, Llu/snt/trux/regapp/ui/home/HomeFragment$2;->this$0:Llu/snt/trux/regapp/ui/home/HomeFragment;

    invoke-static {v4}, Llu/snt/trux/regapp/ui/home/HomeFragment;->-$$Nest$fgetuserHeightTextView(Llu/snt/trux/regapp/ui/home/HomeFragment;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v4, p0, Llu/snt/trux/regapp/ui/home/HomeFragment$2;->this$0:Llu/snt/trux/regapp/ui/home/HomeFragment;

    invoke-static {v4}, Llu/snt/trux/regapp/ui/home/HomeFragment;->-$$Nest$fgetuserWeightTextView(Llu/snt/trux/regapp/ui/home/HomeFragment;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 181
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Llu/snt/trux/regapp/ui/home/HomeFragment$2;->this$0:Llu/snt/trux/regapp/ui/home/HomeFragment;

    invoke-virtual {v5}, Llu/snt/trux/regapp/ui/home/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 182
    .local v4, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 183
    const-string v6, "Edit Information"

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Llu/snt/trux/regapp/ui/home/HomeFragment$2$2;

    invoke-direct {v6, p0, v2, v3}, Llu/snt/trux/regapp/ui/home/HomeFragment$2$2;-><init>(Llu/snt/trux/regapp/ui/home/HomeFragment$2;Landroid/widget/EditText;Landroid/widget/EditText;)V

    .line 184
    const-string v7, "Update"

    invoke-virtual {v5, v7, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Llu/snt/trux/regapp/ui/home/HomeFragment$2$1;

    invoke-direct {v6, p0}, Llu/snt/trux/regapp/ui/home/HomeFragment$2$1;-><init>(Llu/snt/trux/regapp/ui/home/HomeFragment$2;)V

    .line 229
    const-string v7, "Cancel"

    invoke-virtual {v5, v7, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 238
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 239
    .local v5, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 240
    return-void
.end method
