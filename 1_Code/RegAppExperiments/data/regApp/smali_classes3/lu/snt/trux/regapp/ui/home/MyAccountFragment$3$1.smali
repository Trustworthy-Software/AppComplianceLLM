.class Llu/snt/trux/regapp/ui/home/MyAccountFragment$3$1;
.super Ljava/lang/Object;
.source "MyAccountFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llu/snt/trux/regapp/ui/home/MyAccountFragment$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Llu/snt/trux/regapp/ui/home/MyAccountFragment$3;

.field final synthetic val$dialogView:Landroid/view/View;


# direct methods
.method constructor <init>(Llu/snt/trux/regapp/ui/home/MyAccountFragment$3;Landroid/view/View;)V
    .locals 0
    .param p1, "this$1"    # Llu/snt/trux/regapp/ui/home/MyAccountFragment$3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 119
    iput-object p1, p0, Llu/snt/trux/regapp/ui/home/MyAccountFragment$3$1;->this$1:Llu/snt/trux/regapp/ui/home/MyAccountFragment$3;

    iput-object p2, p0, Llu/snt/trux/regapp/ui/home/MyAccountFragment$3$1;->val$dialogView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 123
    iget-object v0, p0, Llu/snt/trux/regapp/ui/home/MyAccountFragment$3$1;->this$1:Llu/snt/trux/regapp/ui/home/MyAccountFragment$3;

    iget-object v0, v0, Llu/snt/trux/regapp/ui/home/MyAccountFragment$3;->this$0:Llu/snt/trux/regapp/ui/home/MyAccountFragment;

    invoke-static {v0}, Llu/snt/trux/regapp/ui/home/MyAccountFragment;->-$$Nest$fgetfirebaseCurrentUser(Llu/snt/trux/regapp/ui/home/MyAccountFragment;)Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Llu/snt/trux/regapp/ui/home/MyAccountFragment$3$1;->val$dialogView:Landroid/view/View;

    sget v1, Llu/snt/trux/regapp/R$id;->editTextPassword:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 126
    .local v0, "passwordEditText":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, "userPsw":Ljava/lang/String;
    iget-object v2, p0, Llu/snt/trux/regapp/ui/home/MyAccountFragment$3$1;->this$1:Llu/snt/trux/regapp/ui/home/MyAccountFragment$3;

    iget-object v2, v2, Llu/snt/trux/regapp/ui/home/MyAccountFragment$3;->this$0:Llu/snt/trux/regapp/ui/home/MyAccountFragment;

    invoke-static {v2}, Llu/snt/trux/regapp/ui/home/MyAccountFragment;->-$$Nest$fgetfirebaseCurrentUser(Llu/snt/trux/regapp/ui/home/MyAccountFragment;)Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/auth/FirebaseUser;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/google/firebase/auth/EmailAuthProvider;->getCredential(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/auth/AuthCredential;

    move-result-object v2

    .line 130
    .local v2, "credential":Lcom/google/firebase/auth/AuthCredential;
    iget-object v3, p0, Llu/snt/trux/regapp/ui/home/MyAccountFragment$3$1;->this$1:Llu/snt/trux/regapp/ui/home/MyAccountFragment$3;

    iget-object v3, v3, Llu/snt/trux/regapp/ui/home/MyAccountFragment$3;->this$0:Llu/snt/trux/regapp/ui/home/MyAccountFragment;

    invoke-static {v3}, Llu/snt/trux/regapp/ui/home/MyAccountFragment;->-$$Nest$fgetfirebaseCurrentUser(Llu/snt/trux/regapp/ui/home/MyAccountFragment;)Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/firebase/auth/FirebaseUser;->reauthenticate(Lcom/google/firebase/auth/AuthCredential;)Lcom/google/android/gms/tasks/Task;

    move-result-object v3

    new-instance v4, Llu/snt/trux/regapp/ui/home/MyAccountFragment$3$1$1;

    invoke-direct {v4, p0}, Llu/snt/trux/regapp/ui/home/MyAccountFragment$3$1$1;-><init>(Llu/snt/trux/regapp/ui/home/MyAccountFragment$3$1;)V

    .line 131
    invoke-virtual {v3, v4}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 178
    .end local v0    # "passwordEditText":Landroid/widget/EditText;
    .end local v1    # "userPsw":Ljava/lang/String;
    .end local v2    # "credential":Lcom/google/firebase/auth/AuthCredential;
    :cond_0
    return-void
.end method
