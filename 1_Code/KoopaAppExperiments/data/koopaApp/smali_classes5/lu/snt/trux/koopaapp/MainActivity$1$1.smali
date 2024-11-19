.class Llu/snt/trux/koopaapp/MainActivity$1$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llu/snt/trux/koopaapp/MainActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Lcom/google/firebase/auth/AuthResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Llu/snt/trux/koopaapp/MainActivity$1;


# direct methods
.method constructor <init>(Llu/snt/trux/koopaapp/MainActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Llu/snt/trux/koopaapp/MainActivity$1;

    .line 80
    iput-object p1, p0, Llu/snt/trux/koopaapp/MainActivity$1$1;->this$1:Llu/snt/trux/koopaapp/MainActivity$1;

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
            "Lcom/google/firebase/auth/AuthResult;",
            ">;)V"
        }
    .end annotation

    .line 83
    .local p1, "task":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<Lcom/google/firebase/auth/AuthResult;>;"
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Llu/snt/trux/koopaapp/MainActivity$1$1;->this$1:Llu/snt/trux/koopaapp/MainActivity$1;

    iget-object v0, v0, Llu/snt/trux/koopaapp/MainActivity$1;->this$0:Llu/snt/trux/koopaapp/MainActivity;

    const-string v1, "\u2705 Login successful."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 87
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Llu/snt/trux/koopaapp/MainActivity$1$1;->this$1:Llu/snt/trux/koopaapp/MainActivity$1;

    iget-object v1, v1, Llu/snt/trux/koopaapp/MainActivity$1;->this$0:Llu/snt/trux/koopaapp/MainActivity;

    const-class v2, Llu/snt/trux/koopaapp/HomeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Llu/snt/trux/koopaapp/MainActivity$1$1;->this$1:Llu/snt/trux/koopaapp/MainActivity$1;

    iget-object v1, v1, Llu/snt/trux/koopaapp/MainActivity$1;->this$0:Llu/snt/trux/koopaapp/MainActivity;

    invoke-virtual {v1, v0}, Llu/snt/trux/koopaapp/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 89
    iget-object v1, p0, Llu/snt/trux/koopaapp/MainActivity$1$1;->this$1:Llu/snt/trux/koopaapp/MainActivity$1;

    iget-object v1, v1, Llu/snt/trux/koopaapp/MainActivity$1;->this$0:Llu/snt/trux/koopaapp/MainActivity;

    invoke-virtual {v1}, Llu/snt/trux/koopaapp/MainActivity;->finish()V

    .line 90
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 92
    :cond_0
    iget-object v0, p0, Llu/snt/trux/koopaapp/MainActivity$1$1;->this$1:Llu/snt/trux/koopaapp/MainActivity$1;

    iget-object v0, v0, Llu/snt/trux/koopaapp/MainActivity$1;->this$0:Llu/snt/trux/koopaapp/MainActivity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Llu/snt/trux/koopaapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u274c Login failed: "

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

    .line 94
    :goto_0
    return-void
.end method
