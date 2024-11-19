.class Llu/snt/trux/koopaapp/ui/home/MyAccountFragment$4$1;
.super Ljava/lang/Object;
.source "MyAccountFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llu/snt/trux/koopaapp/ui/home/MyAccountFragment$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Llu/snt/trux/koopaapp/ui/home/MyAccountFragment$4;

.field final synthetic val$editTextConfirmPassword:Landroid/widget/EditText;

.field final synthetic val$editTextNewPassword:Landroid/widget/EditText;

.field final synthetic val$editTextOldPassword:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Llu/snt/trux/koopaapp/ui/home/MyAccountFragment$4;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$1"    # Llu/snt/trux/koopaapp/ui/home/MyAccountFragment$4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 209
    iput-object p1, p0, Llu/snt/trux/koopaapp/ui/home/MyAccountFragment$4$1;->this$1:Llu/snt/trux/koopaapp/ui/home/MyAccountFragment$4;

    iput-object p2, p0, Llu/snt/trux/koopaapp/ui/home/MyAccountFragment$4$1;->val$editTextOldPassword:Landroid/widget/EditText;

    iput-object p3, p0, Llu/snt/trux/koopaapp/ui/home/MyAccountFragment$4$1;->val$editTextNewPassword:Landroid/widget/EditText;

    iput-object p4, p0, Llu/snt/trux/koopaapp/ui/home/MyAccountFragment$4$1;->val$editTextConfirmPassword:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 213
    iget-object v0, p0, Llu/snt/trux/koopaapp/ui/home/MyAccountFragment$4$1;->val$editTextOldPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, "oldPassword":Ljava/lang/String;
    iget-object v1, p0, Llu/snt/trux/koopaapp/ui/home/MyAccountFragment$4$1;->val$editTextNewPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 215
    .local v1, "newPassword":Ljava/lang/String;
    iget-object v2, p0, Llu/snt/trux/koopaapp/ui/home/MyAccountFragment$4$1;->val$editTextConfirmPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 218
    .local v2, "confirmPassword":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 220
    iget-object v3, p0, Llu/snt/trux/koopaapp/ui/home/MyAccountFragment$4$1;->this$1:Llu/snt/trux/koopaapp/ui/home/MyAccountFragment$4;

    iget-object v3, v3, Llu/snt/trux/koopaapp/ui/home/MyAccountFragment$4;->this$0:Llu/snt/trux/koopaapp/ui/home/MyAccountFragment;

    invoke-virtual {v3}, Llu/snt/trux/koopaapp/ui/home/MyAccountFragment;->getView()Landroid/view/View;

    move-result-object v3

    const-string v4, "\u274c New passwords do not match"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    goto :goto_0

    .line 223
    :cond_0
    iget-object v3, p0, Llu/snt/trux/koopaapp/ui/home/MyAccountFragment$4$1;->this$1:Llu/snt/trux/koopaapp/ui/home/MyAccountFragment$4;

    iget-object v3, v3, Llu/snt/trux/koopaapp/ui/home/MyAccountFragment$4;->this$0:Llu/snt/trux/koopaapp/ui/home/MyAccountFragment;

    invoke-static {v3}, Llu/snt/trux/koopaapp/ui/home/MyAccountFragment;->-$$Nest$fgetfirebaseCurrentUser(Llu/snt/trux/koopaapp/ui/home/MyAccountFragment;)Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/auth/FirebaseUser;->getEmail()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/google/firebase/auth/EmailAuthProvider;->getCredential(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/auth/AuthCredential;

    move-result-object v3

    .line 224
    .local v3, "credential":Lcom/google/firebase/auth/AuthCredential;
    iget-object v4, p0, Llu/snt/trux/koopaapp/ui/home/MyAccountFragment$4$1;->this$1:Llu/snt/trux/koopaapp/ui/home/MyAccountFragment$4;

    iget-object v4, v4, Llu/snt/trux/koopaapp/ui/home/MyAccountFragment$4;->this$0:Llu/snt/trux/koopaapp/ui/home/MyAccountFragment;

    invoke-static {v4}, Llu/snt/trux/koopaapp/ui/home/MyAccountFragment;->-$$Nest$fgetfirebaseCurrentUser(Llu/snt/trux/koopaapp/ui/home/MyAccountFragment;)Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/firebase/auth/FirebaseUser;->reauthenticate(Lcom/google/firebase/auth/AuthCredential;)Lcom/google/android/gms/tasks/Task;

    move-result-object v4

    new-instance v5, Llu/snt/trux/koopaapp/ui/home/MyAccountFragment$4$1$1;

    invoke-direct {v5, p0, v1}, Llu/snt/trux/koopaapp/ui/home/MyAccountFragment$4$1$1;-><init>(Llu/snt/trux/koopaapp/ui/home/MyAccountFragment$4$1;Ljava/lang/String;)V

    .line 225
    invoke-virtual {v4, v5}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 250
    .end local v3    # "credential":Lcom/google/firebase/auth/AuthCredential;
    :goto_0
    return-void
.end method
