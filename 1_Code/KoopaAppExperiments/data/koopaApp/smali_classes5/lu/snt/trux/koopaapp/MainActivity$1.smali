.class Llu/snt/trux/koopaapp/MainActivity$1;
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

    .line 67
    iput-object p1, p0, Llu/snt/trux/koopaapp/MainActivity$1;->this$0:Llu/snt/trux/koopaapp/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .line 71
    iget-object v0, p0, Llu/snt/trux/koopaapp/MainActivity$1;->this$0:Llu/snt/trux/koopaapp/MainActivity;

    invoke-static {v0}, Llu/snt/trux/koopaapp/MainActivity;->-$$Nest$fgetemailEditText(Llu/snt/trux/koopaapp/MainActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "email":Ljava/lang/String;
    iget-object v1, p0, Llu/snt/trux/koopaapp/MainActivity$1;->this$0:Llu/snt/trux/koopaapp/MainActivity;

    invoke-static {v1}, Llu/snt/trux/koopaapp/MainActivity;->-$$Nest$fgetpasswordEditText(Llu/snt/trux/koopaapp/MainActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "password":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    iget-object v2, p0, Llu/snt/trux/koopaapp/MainActivity$1;->this$0:Llu/snt/trux/koopaapp/MainActivity;

    invoke-static {v2}, Llu/snt/trux/koopaapp/MainActivity;->-$$Nest$fgetfirebaseAuth(Llu/snt/trux/koopaapp/MainActivity;)Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/google/firebase/auth/FirebaseAuth;->signInWithEmailAndPassword(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    new-instance v3, Llu/snt/trux/koopaapp/MainActivity$1$1;

    invoke-direct {v3, p0}, Llu/snt/trux/koopaapp/MainActivity$1$1;-><init>(Llu/snt/trux/koopaapp/MainActivity$1;)V

    .line 80
    invoke-virtual {v2, v3}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    goto :goto_1

    .line 76
    :cond_1
    :goto_0
    iget-object v2, p0, Llu/snt/trux/koopaapp/MainActivity$1;->this$0:Llu/snt/trux/koopaapp/MainActivity;

    const v3, 0x1020002

    invoke-virtual {v2, v3}, Llu/snt/trux/koopaapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "\u274c Please fill in all fields."

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 97
    :goto_1
    return-void
.end method
