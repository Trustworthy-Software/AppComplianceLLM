.class Llu/snt/trux/koopaapp/ui/home/MyAccountFragment$6$2;
.super Ljava/lang/Object;
.source "MyAccountFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llu/snt/trux/koopaapp/ui/home/MyAccountFragment$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Llu/snt/trux/koopaapp/ui/home/MyAccountFragment$6;

.field final synthetic val$editTextName:Landroid/widget/EditText;

.field final synthetic val$editTextSurname:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Llu/snt/trux/koopaapp/ui/home/MyAccountFragment$6;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$1"    # Llu/snt/trux/koopaapp/ui/home/MyAccountFragment$6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 366
    iput-object p1, p0, Llu/snt/trux/koopaapp/ui/home/MyAccountFragment$6$2;->this$1:Llu/snt/trux/koopaapp/ui/home/MyAccountFragment$6;

    iput-object p2, p0, Llu/snt/trux/koopaapp/ui/home/MyAccountFragment$6$2;->val$editTextName:Landroid/widget/EditText;

    iput-object p3, p0, Llu/snt/trux/koopaapp/ui/home/MyAccountFragment$6$2;->val$editTextSurname:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .line 370
    iget-object v0, p0, Llu/snt/trux/koopaapp/ui/home/MyAccountFragment$6$2;->val$editTextName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 371
    .local v0, "newName":Ljava/lang/String;
    iget-object v1, p0, Llu/snt/trux/koopaapp/ui/home/MyAccountFragment$6$2;->val$editTextSurname:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 374
    .local v1, "newSurname":Ljava/lang/String;
    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance()Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object v2

    const-string v3, "usersDB"

    invoke-virtual {v2, v3}, Lcom/google/firebase/database/FirebaseDatabase;->getReference(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v2

    iget-object v3, p0, Llu/snt/trux/koopaapp/ui/home/MyAccountFragment$6$2;->this$1:Llu/snt/trux/koopaapp/ui/home/MyAccountFragment$6;

    iget-object v3, v3, Llu/snt/trux/koopaapp/ui/home/MyAccountFragment$6;->this$0:Llu/snt/trux/koopaapp/ui/home/MyAccountFragment;

    invoke-static {v3}, Llu/snt/trux/koopaapp/ui/home/MyAccountFragment;->-$$Nest$fgetfirebaseCurrentUser(Llu/snt/trux/koopaapp/ui/home/MyAccountFragment;)Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/auth/FirebaseUser;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v2

    .line 377
    .local v2, "userRef":Lcom/google/firebase/database/DatabaseReference;
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/firebase/database/DatabaseReference;->setValue(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 378
    const-string v3, "surname"

    invoke-virtual {v2, v3}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/firebase/database/DatabaseReference;->setValue(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v3

    new-instance v4, Llu/snt/trux/koopaapp/ui/home/MyAccountFragment$6$2$1;

    invoke-direct {v4, p0, v0, v1, p1}, Llu/snt/trux/koopaapp/ui/home/MyAccountFragment$6$2$1;-><init>(Llu/snt/trux/koopaapp/ui/home/MyAccountFragment$6$2;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface;)V

    .line 379
    invoke-virtual {v3, v4}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 398
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 399
    return-void
.end method
