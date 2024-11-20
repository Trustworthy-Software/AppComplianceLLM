.class Llu/snt/trux/regapp/ui/home/MyAccountFragment$3$1$1$1$1;
.super Ljava/lang/Object;
.source "MyAccountFragment.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llu/snt/trux/regapp/ui/home/MyAccountFragment$3$1$1$1;->onComplete(Lcom/google/android/gms/tasks/Task;)V
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
.field final synthetic this$4:Llu/snt/trux/regapp/ui/home/MyAccountFragment$3$1$1$1;


# direct methods
.method constructor <init>(Llu/snt/trux/regapp/ui/home/MyAccountFragment$3$1$1$1;)V
    .locals 0
    .param p1, "this$4"    # Llu/snt/trux/regapp/ui/home/MyAccountFragment$3$1$1$1;

    .line 145
    iput-object p1, p0, Llu/snt/trux/regapp/ui/home/MyAccountFragment$3$1$1$1$1;->this$4:Llu/snt/trux/regapp/ui/home/MyAccountFragment$3$1$1$1;

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

    .line 148
    .local p1, "task":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<Ljava/lang/Void;>;"
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    const-string v1, "RegApp"

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Llu/snt/trux/regapp/ui/home/MyAccountFragment$3$1$1$1$1;->this$4:Llu/snt/trux/regapp/ui/home/MyAccountFragment$3$1$1$1;

    iget-object v0, v0, Llu/snt/trux/regapp/ui/home/MyAccountFragment$3$1$1$1;->this$3:Llu/snt/trux/regapp/ui/home/MyAccountFragment$3$1$1;

    iget-object v0, v0, Llu/snt/trux/regapp/ui/home/MyAccountFragment$3$1$1;->this$2:Llu/snt/trux/regapp/ui/home/MyAccountFragment$3$1;

    iget-object v0, v0, Llu/snt/trux/regapp/ui/home/MyAccountFragment$3$1;->this$1:Llu/snt/trux/regapp/ui/home/MyAccountFragment$3;

    iget-object v0, v0, Llu/snt/trux/regapp/ui/home/MyAccountFragment$3;->this$0:Llu/snt/trux/regapp/ui/home/MyAccountFragment;

    invoke-static {v0}, Llu/snt/trux/regapp/ui/home/MyAccountFragment;->-$$Nest$fgetfirebaseAuth(Llu/snt/trux/regapp/ui/home/MyAccountFragment;)Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->signOut()V

    .line 151
    const-string v0, "\u2705 Account deleted successfully."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v1, p0, Llu/snt/trux/regapp/ui/home/MyAccountFragment$3$1$1$1$1;->this$4:Llu/snt/trux/regapp/ui/home/MyAccountFragment$3$1$1$1;

    iget-object v1, v1, Llu/snt/trux/regapp/ui/home/MyAccountFragment$3$1$1$1;->this$3:Llu/snt/trux/regapp/ui/home/MyAccountFragment$3$1$1;

    iget-object v1, v1, Llu/snt/trux/regapp/ui/home/MyAccountFragment$3$1$1;->this$2:Llu/snt/trux/regapp/ui/home/MyAccountFragment$3$1;

    iget-object v1, v1, Llu/snt/trux/regapp/ui/home/MyAccountFragment$3$1;->this$1:Llu/snt/trux/regapp/ui/home/MyAccountFragment$3;

    iget-object v1, v1, Llu/snt/trux/regapp/ui/home/MyAccountFragment$3;->this$0:Llu/snt/trux/regapp/ui/home/MyAccountFragment;

    invoke-virtual {v1}, Llu/snt/trux/regapp/ui/home/MyAccountFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 158
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u274c Failed to delete data: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :goto_0
    return-void
.end method
