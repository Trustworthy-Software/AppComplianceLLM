.class Llu/snt/trux/regapp/ui/home/MyAccountFragment$3$1$1;
.super Ljava/lang/Object;
.source "MyAccountFragment.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llu/snt/trux/regapp/ui/home/MyAccountFragment$3$1;->onClick(Landroid/content/DialogInterface;I)V
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
.field final synthetic this$2:Llu/snt/trux/regapp/ui/home/MyAccountFragment$3$1;


# direct methods
.method constructor <init>(Llu/snt/trux/regapp/ui/home/MyAccountFragment$3$1;)V
    .locals 0
    .param p1, "this$2"    # Llu/snt/trux/regapp/ui/home/MyAccountFragment$3$1;

    .line 131
    iput-object p1, p0, Llu/snt/trux/regapp/ui/home/MyAccountFragment$3$1$1;->this$2:Llu/snt/trux/regapp/ui/home/MyAccountFragment$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 134
    .local p1, "reauthTask":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<Ljava/lang/Void;>;"
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Llu/snt/trux/regapp/ui/home/MyAccountFragment$3$1$1;->this$2:Llu/snt/trux/regapp/ui/home/MyAccountFragment$3$1;

    iget-object v0, v0, Llu/snt/trux/regapp/ui/home/MyAccountFragment$3$1;->this$1:Llu/snt/trux/regapp/ui/home/MyAccountFragment$3;

    iget-object v0, v0, Llu/snt/trux/regapp/ui/home/MyAccountFragment$3;->this$0:Llu/snt/trux/regapp/ui/home/MyAccountFragment;

    invoke-static {v0}, Llu/snt/trux/regapp/ui/home/MyAccountFragment;->-$$Nest$fgetfirebaseCurrentUser(Llu/snt/trux/regapp/ui/home/MyAccountFragment;)Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseUser;->delete()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Llu/snt/trux/regapp/ui/home/MyAccountFragment$3$1$1$1;

    invoke-direct {v1, p0}, Llu/snt/trux/regapp/ui/home/MyAccountFragment$3$1$1$1;-><init>(Llu/snt/trux/regapp/ui/home/MyAccountFragment$3$1$1;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    goto :goto_0

    .line 173
    :cond_0
    iget-object v0, p0, Llu/snt/trux/regapp/ui/home/MyAccountFragment$3$1$1;->this$2:Llu/snt/trux/regapp/ui/home/MyAccountFragment$3$1;

    iget-object v0, v0, Llu/snt/trux/regapp/ui/home/MyAccountFragment$3$1;->this$1:Llu/snt/trux/regapp/ui/home/MyAccountFragment$3;

    iget-object v0, v0, Llu/snt/trux/regapp/ui/home/MyAccountFragment$3;->this$0:Llu/snt/trux/regapp/ui/home/MyAccountFragment;

    invoke-virtual {v0}, Llu/snt/trux/regapp/ui/home/MyAccountFragment;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u274c Failed to delete account: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 175
    :goto_0
    return-void
.end method
