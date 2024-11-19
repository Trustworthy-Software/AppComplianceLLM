.class Llu/snt/trux/koopaapp/ui/home/HomeFragment$2$2$1;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llu/snt/trux/koopaapp/ui/home/HomeFragment$2$2;->onClick(Landroid/content/DialogInterface;I)V
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
.field final synthetic this$2:Llu/snt/trux/koopaapp/ui/home/HomeFragment$2$2;

.field final synthetic val$dialogInterface:Landroid/content/DialogInterface;


# direct methods
.method constructor <init>(Llu/snt/trux/koopaapp/ui/home/HomeFragment$2$2;Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "this$2"    # Llu/snt/trux/koopaapp/ui/home/HomeFragment$2$2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 207
    iput-object p1, p0, Llu/snt/trux/koopaapp/ui/home/HomeFragment$2$2$1;->this$2:Llu/snt/trux/koopaapp/ui/home/HomeFragment$2$2;

    iput-object p2, p0, Llu/snt/trux/koopaapp/ui/home/HomeFragment$2$2$1;->val$dialogInterface:Landroid/content/DialogInterface;

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

    .line 210
    .local p1, "task":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<Ljava/lang/Void;>;"
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Llu/snt/trux/koopaapp/ui/home/HomeFragment$2$2$1;->this$2:Llu/snt/trux/koopaapp/ui/home/HomeFragment$2$2;

    iget-object v0, v0, Llu/snt/trux/koopaapp/ui/home/HomeFragment$2$2;->this$1:Llu/snt/trux/koopaapp/ui/home/HomeFragment$2;

    iget-object v0, v0, Llu/snt/trux/koopaapp/ui/home/HomeFragment$2;->this$0:Llu/snt/trux/koopaapp/ui/home/HomeFragment;

    invoke-virtual {v0}, Llu/snt/trux/koopaapp/ui/home/HomeFragment;->getView()Landroid/view/View;

    move-result-object v0

    const-string v2, "\u2705 Update successful."

    invoke-static {v0, v2, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    goto :goto_0

    .line 217
    :cond_0
    iget-object v0, p0, Llu/snt/trux/koopaapp/ui/home/HomeFragment$2$2$1;->this$2:Llu/snt/trux/koopaapp/ui/home/HomeFragment$2$2;

    iget-object v0, v0, Llu/snt/trux/koopaapp/ui/home/HomeFragment$2$2;->this$1:Llu/snt/trux/koopaapp/ui/home/HomeFragment$2;

    iget-object v0, v0, Llu/snt/trux/koopaapp/ui/home/HomeFragment$2;->this$0:Llu/snt/trux/koopaapp/ui/home/HomeFragment;

    invoke-virtual {v0}, Llu/snt/trux/koopaapp/ui/home/HomeFragment;->getView()Landroid/view/View;

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

    .line 221
    :goto_0
    iget-object v0, p0, Llu/snt/trux/koopaapp/ui/home/HomeFragment$2$2$1;->val$dialogInterface:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 222
    return-void
.end method
