.class Llu/snt/trux/regapp/ui/home/MyAccountFragment$5$1;
.super Ljava/lang/Object;
.source "MyAccountFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llu/snt/trux/regapp/ui/home/MyAccountFragment$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Llu/snt/trux/regapp/ui/home/MyAccountFragment$5;

.field final synthetic val$editTextNewEmail:Landroid/widget/EditText;

.field final synthetic val$editTextOldPassword:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Llu/snt/trux/regapp/ui/home/MyAccountFragment$5;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$1"    # Llu/snt/trux/regapp/ui/home/MyAccountFragment$5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 282
    iput-object p1, p0, Llu/snt/trux/regapp/ui/home/MyAccountFragment$5$1;->this$1:Llu/snt/trux/regapp/ui/home/MyAccountFragment$5;

    iput-object p2, p0, Llu/snt/trux/regapp/ui/home/MyAccountFragment$5$1;->val$editTextNewEmail:Landroid/widget/EditText;

    iput-object p3, p0, Llu/snt/trux/regapp/ui/home/MyAccountFragment$5$1;->val$editTextOldPassword:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 286
    iget-object v0, p0, Llu/snt/trux/regapp/ui/home/MyAccountFragment$5$1;->val$editTextNewEmail:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, "newEmail":Ljava/lang/String;
    iget-object v1, p0, Llu/snt/trux/regapp/ui/home/MyAccountFragment$5$1;->val$editTextOldPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 289
    .local v1, "oldPassword":Ljava/lang/String;
    iget-object v2, p0, Llu/snt/trux/regapp/ui/home/MyAccountFragment$5$1;->this$1:Llu/snt/trux/regapp/ui/home/MyAccountFragment$5;

    iget-object v2, v2, Llu/snt/trux/regapp/ui/home/MyAccountFragment$5;->this$0:Llu/snt/trux/regapp/ui/home/MyAccountFragment;

    invoke-static {v2}, Llu/snt/trux/regapp/ui/home/MyAccountFragment;->-$$Nest$fgetfirebaseCurrentUser(Llu/snt/trux/regapp/ui/home/MyAccountFragment;)Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 290
    iget-object v2, p0, Llu/snt/trux/regapp/ui/home/MyAccountFragment$5$1;->this$1:Llu/snt/trux/regapp/ui/home/MyAccountFragment$5;

    iget-object v2, v2, Llu/snt/trux/regapp/ui/home/MyAccountFragment$5;->this$0:Llu/snt/trux/regapp/ui/home/MyAccountFragment;

    invoke-static {v2}, Llu/snt/trux/regapp/ui/home/MyAccountFragment;->-$$Nest$fgetfirebaseCurrentUser(Llu/snt/trux/regapp/ui/home/MyAccountFragment;)Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/auth/FirebaseUser;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 291
    iget-object v2, p0, Llu/snt/trux/regapp/ui/home/MyAccountFragment$5$1;->this$1:Llu/snt/trux/regapp/ui/home/MyAccountFragment$5;

    iget-object v2, v2, Llu/snt/trux/regapp/ui/home/MyAccountFragment$5;->this$0:Llu/snt/trux/regapp/ui/home/MyAccountFragment;

    invoke-virtual {v2}, Llu/snt/trux/regapp/ui/home/MyAccountFragment;->getView()Landroid/view/View;

    move-result-object v2

    const-string v3, "\u274c New email is the same as the old one."

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    goto :goto_0

    .line 295
    :cond_0
    iget-object v2, p0, Llu/snt/trux/regapp/ui/home/MyAccountFragment$5$1;->this$1:Llu/snt/trux/regapp/ui/home/MyAccountFragment$5;

    iget-object v2, v2, Llu/snt/trux/regapp/ui/home/MyAccountFragment$5;->this$0:Llu/snt/trux/regapp/ui/home/MyAccountFragment;

    invoke-static {v2}, Llu/snt/trux/regapp/ui/home/MyAccountFragment;->-$$Nest$fgetfirebaseCurrentUser(Llu/snt/trux/regapp/ui/home/MyAccountFragment;)Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/auth/FirebaseUser;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/google/firebase/auth/EmailAuthProvider;->getCredential(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/auth/AuthCredential;

    move-result-object v2

    .line 296
    .local v2, "credential":Lcom/google/firebase/auth/AuthCredential;
    iget-object v3, p0, Llu/snt/trux/regapp/ui/home/MyAccountFragment$5$1;->this$1:Llu/snt/trux/regapp/ui/home/MyAccountFragment$5;

    iget-object v3, v3, Llu/snt/trux/regapp/ui/home/MyAccountFragment$5;->this$0:Llu/snt/trux/regapp/ui/home/MyAccountFragment;

    invoke-static {v3}, Llu/snt/trux/regapp/ui/home/MyAccountFragment;->-$$Nest$fgetfirebaseCurrentUser(Llu/snt/trux/regapp/ui/home/MyAccountFragment;)Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/firebase/auth/FirebaseUser;->reauthenticate(Lcom/google/firebase/auth/AuthCredential;)Lcom/google/android/gms/tasks/Task;

    move-result-object v3

    new-instance v4, Llu/snt/trux/regapp/ui/home/MyAccountFragment$5$1$1;

    invoke-direct {v4, p0, v0}, Llu/snt/trux/regapp/ui/home/MyAccountFragment$5$1$1;-><init>(Llu/snt/trux/regapp/ui/home/MyAccountFragment$5$1;Ljava/lang/String;)V

    .line 297
    invoke-virtual {v3, v4}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 328
    .end local v2    # "credential":Lcom/google/firebase/auth/AuthCredential;
    :cond_1
    :goto_0
    return-void
.end method
