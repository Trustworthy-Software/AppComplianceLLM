.class Llu/snt/trux/koopaapp/MainActivity$3$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llu/snt/trux/koopaapp/MainActivity$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Llu/snt/trux/koopaapp/MainActivity$3;

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Llu/snt/trux/koopaapp/MainActivity$3;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$1"    # Llu/snt/trux/koopaapp/MainActivity$3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 124
    iput-object p1, p0, Llu/snt/trux/koopaapp/MainActivity$3$1;->this$1:Llu/snt/trux/koopaapp/MainActivity$3;

    iput-object p2, p0, Llu/snt/trux/koopaapp/MainActivity$3$1;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 127
    iget-object v0, p0, Llu/snt/trux/koopaapp/MainActivity$3$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "email":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 132
    iget-object v1, p0, Llu/snt/trux/koopaapp/MainActivity$3$1;->this$1:Llu/snt/trux/koopaapp/MainActivity$3;

    iget-object v1, v1, Llu/snt/trux/koopaapp/MainActivity$3;->this$0:Llu/snt/trux/koopaapp/MainActivity;

    invoke-static {v1}, Llu/snt/trux/koopaapp/MainActivity;->-$$Nest$fgetfirebaseAuth(Llu/snt/trux/koopaapp/MainActivity;)Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/firebase/auth/FirebaseAuth;->sendPasswordResetEmail(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Llu/snt/trux/koopaapp/MainActivity$3$1$1;

    invoke-direct {v2, p0}, Llu/snt/trux/koopaapp/MainActivity$3$1$1;-><init>(Llu/snt/trux/koopaapp/MainActivity$3$1;)V

    .line 133
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    goto :goto_0

    .line 146
    :cond_0
    iget-object v1, p0, Llu/snt/trux/koopaapp/MainActivity$3$1;->this$1:Llu/snt/trux/koopaapp/MainActivity$3;

    iget-object v1, v1, Llu/snt/trux/koopaapp/MainActivity$3;->this$0:Llu/snt/trux/koopaapp/MainActivity;

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Llu/snt/trux/koopaapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "\u274c Please enter your email."

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 148
    :goto_0
    return-void
.end method
