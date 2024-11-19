.class Llu/snt/trux/koopaapp/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llu/snt/trux/koopaapp/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llu/snt/trux/koopaapp/MainActivity;


# direct methods
.method constructor <init>(Llu/snt/trux/koopaapp/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Llu/snt/trux/koopaapp/MainActivity;

    .line 112
    iput-object p1, p0, Llu/snt/trux/koopaapp/MainActivity$3;->this$0:Llu/snt/trux/koopaapp/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .line 116
    iget-object v0, p0, Llu/snt/trux/koopaapp/MainActivity$3;->this$0:Llu/snt/trux/koopaapp/MainActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 117
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Llu/snt/trux/koopaapp/R$layout;->dialog_reset_password:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 118
    .local v1, "dialogView":Landroid/view/View;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Llu/snt/trux/koopaapp/MainActivity$3;->this$0:Llu/snt/trux/koopaapp/MainActivity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 119
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    const-string v3, "Reset password"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 120
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 122
    sget v3, Llu/snt/trux/koopaapp/R$id;->editTextEmail:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 124
    .local v3, "input":Landroid/widget/EditText;
    new-instance v4, Llu/snt/trux/koopaapp/MainActivity$3$1;

    invoke-direct {v4, p0, v3}, Llu/snt/trux/koopaapp/MainActivity$3$1;-><init>(Llu/snt/trux/koopaapp/MainActivity$3;Landroid/widget/EditText;)V

    const-string v5, "Reset"

    invoke-virtual {v2, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 151
    new-instance v4, Llu/snt/trux/koopaapp/MainActivity$3$2;

    invoke-direct {v4, p0}, Llu/snt/trux/koopaapp/MainActivity$3$2;-><init>(Llu/snt/trux/koopaapp/MainActivity$3;)V

    const-string v5, "Cancel"

    invoke-virtual {v2, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 158
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 159
    return-void
.end method
