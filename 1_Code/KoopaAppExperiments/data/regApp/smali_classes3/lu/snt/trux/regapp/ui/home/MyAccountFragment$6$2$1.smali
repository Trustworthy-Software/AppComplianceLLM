.class Llu/snt/trux/regapp/ui/home/MyAccountFragment$6$2$1;
.super Ljava/lang/Object;
.source "MyAccountFragment.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llu/snt/trux/regapp/ui/home/MyAccountFragment$6$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Llu/snt/trux/regapp/ui/home/MyAccountFragment$6$2;

.field final synthetic val$dialogInterface:Landroid/content/DialogInterface;

.field final synthetic val$newName:Ljava/lang/String;

.field final synthetic val$newSurname:Ljava/lang/String;


# direct methods
.method constructor <init>(Llu/snt/trux/regapp/ui/home/MyAccountFragment$6$2;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "this$2"    # Llu/snt/trux/regapp/ui/home/MyAccountFragment$6$2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 379
    iput-object p1, p0, Llu/snt/trux/regapp/ui/home/MyAccountFragment$6$2$1;->this$2:Llu/snt/trux/regapp/ui/home/MyAccountFragment$6$2;

    iput-object p2, p0, Llu/snt/trux/regapp/ui/home/MyAccountFragment$6$2$1;->val$newName:Ljava/lang/String;

    iput-object p3, p0, Llu/snt/trux/regapp/ui/home/MyAccountFragment$6$2$1;->val$newSurname:Ljava/lang/String;

    iput-object p4, p0, Llu/snt/trux/regapp/ui/home/MyAccountFragment$6$2$1;->val$dialogInterface:Landroid/content/DialogInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 382
    .local p1, "task":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<Ljava/lang/Void;>;"
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Llu/snt/trux/regapp/ui/home/MyAccountFragment$6$2$1;->this$2:Llu/snt/trux/regapp/ui/home/MyAccountFragment$6$2;

    iget-object v0, v0, Llu/snt/trux/regapp/ui/home/MyAccountFragment$6$2;->this$1:Llu/snt/trux/regapp/ui/home/MyAccountFragment$6;

    iget-object v0, v0, Llu/snt/trux/regapp/ui/home/MyAccountFragment$6;->this$0:Llu/snt/trux/regapp/ui/home/MyAccountFragment;

    invoke-virtual {v0}, Llu/snt/trux/regapp/ui/home/MyAccountFragment;->getView()Landroid/view/View;

    move-result-object v0

    const-string v2, "\u2705 Update successful."

    invoke-static {v0, v2, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 385
    iget-object v0, p0, Llu/snt/trux/regapp/ui/home/MyAccountFragment$6$2$1;->this$2:Llu/snt/trux/regapp/ui/home/MyAccountFragment$6$2;

    iget-object v0, v0, Llu/snt/trux/regapp/ui/home/MyAccountFragment$6$2;->this$1:Llu/snt/trux/regapp/ui/home/MyAccountFragment$6;

    iget-object v0, v0, Llu/snt/trux/regapp/ui/home/MyAccountFragment$6;->this$0:Llu/snt/trux/regapp/ui/home/MyAccountFragment;

    invoke-static {v0}, Llu/snt/trux/regapp/ui/home/MyAccountFragment;->-$$Nest$fgettextViewNameUser(Llu/snt/trux/regapp/ui/home/MyAccountFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Llu/snt/trux/regapp/ui/home/MyAccountFragment$6$2$1;->val$newName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    iget-object v0, p0, Llu/snt/trux/regapp/ui/home/MyAccountFragment$6$2$1;->this$2:Llu/snt/trux/regapp/ui/home/MyAccountFragment$6$2;

    iget-object v0, v0, Llu/snt/trux/regapp/ui/home/MyAccountFragment$6$2;->this$1:Llu/snt/trux/regapp/ui/home/MyAccountFragment$6;

    iget-object v0, v0, Llu/snt/trux/regapp/ui/home/MyAccountFragment$6;->this$0:Llu/snt/trux/regapp/ui/home/MyAccountFragment;

    invoke-static {v0}, Llu/snt/trux/regapp/ui/home/MyAccountFragment;->-$$Nest$fgettextViewSurnameUser(Llu/snt/trux/regapp/ui/home/MyAccountFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Llu/snt/trux/regapp/ui/home/MyAccountFragment$6$2$1;->val$newSurname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 389
    :cond_0
    iget-object v0, p0, Llu/snt/trux/regapp/ui/home/MyAccountFragment$6$2$1;->this$2:Llu/snt/trux/regapp/ui/home/MyAccountFragment$6$2;

    iget-object v0, v0, Llu/snt/trux/regapp/ui/home/MyAccountFragment$6$2;->this$1:Llu/snt/trux/regapp/ui/home/MyAccountFragment$6;

    iget-object v0, v0, Llu/snt/trux/regapp/ui/home/MyAccountFragment$6;->this$0:Llu/snt/trux/regapp/ui/home/MyAccountFragment;

    invoke-virtual {v0}, Llu/snt/trux/regapp/ui/home/MyAccountFragment;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u274cUpdate failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 393
    :goto_0
    iget-object v0, p0, Llu/snt/trux/regapp/ui/home/MyAccountFragment$6$2$1;->val$dialogInterface:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 394
    return-void
.end method
