.class Llu/snt/trux/regapp/RegistrationActivity$1$1;
.super Ljava/lang/Object;
.source "RegistrationActivity.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llu/snt/trux/regapp/RegistrationActivity$1;->onClick(Landroid/view/View;)V
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
.field final synthetic this$1:Llu/snt/trux/regapp/RegistrationActivity$1;

.field final synthetic val$birthDate:Ljava/lang/String;

.field final synthetic val$height:I

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$sex:Ljava/lang/String;

.field final synthetic val$surname:Ljava/lang/String;

.field final synthetic val$weight:D


# direct methods
.method constructor <init>(Llu/snt/trux/regapp/RegistrationActivity$1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IDLjava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Llu/snt/trux/regapp/RegistrationActivity$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 91
    iput-object p1, p0, Llu/snt/trux/regapp/RegistrationActivity$1$1;->this$1:Llu/snt/trux/regapp/RegistrationActivity$1;

    iput-object p2, p0, Llu/snt/trux/regapp/RegistrationActivity$1$1;->val$name:Ljava/lang/String;

    iput-object p3, p0, Llu/snt/trux/regapp/RegistrationActivity$1$1;->val$surname:Ljava/lang/String;

    iput-object p4, p0, Llu/snt/trux/regapp/RegistrationActivity$1$1;->val$birthDate:Ljava/lang/String;

    iput p5, p0, Llu/snt/trux/regapp/RegistrationActivity$1$1;->val$height:I

    iput-wide p6, p0, Llu/snt/trux/regapp/RegistrationActivity$1$1;->val$weight:D

    iput-object p8, p0, Llu/snt/trux/regapp/RegistrationActivity$1$1;->val$sex:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;)V"
        }
    .end annotation

    .line 94
    .local p1, "task":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<Lcom/google/firebase/auth/AuthResult;>;"
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    const/4 v1, 0x0

    const v2, 0x1020002

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Llu/snt/trux/regapp/RegistrationActivity$1$1;->this$1:Llu/snt/trux/regapp/RegistrationActivity$1;

    iget-object v0, v0, Llu/snt/trux/regapp/RegistrationActivity$1;->this$0:Llu/snt/trux/regapp/RegistrationActivity;

    invoke-virtual {v0, v2}, Llu/snt/trux/regapp/RegistrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v2, "\u2705 Registration successful."

    invoke-static {v0, v2, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 99
    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseUser;->getUid()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "userId":Ljava/lang/String;
    iget-object v1, p0, Llu/snt/trux/regapp/RegistrationActivity$1$1;->this$1:Llu/snt/trux/regapp/RegistrationActivity$1;

    iget-object v1, v1, Llu/snt/trux/regapp/RegistrationActivity$1;->this$0:Llu/snt/trux/regapp/RegistrationActivity;

    invoke-static {v1}, Llu/snt/trux/regapp/RegistrationActivity;->-$$Nest$fgetfirebaseDatabase(Llu/snt/trux/regapp/RegistrationActivity;)Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object v1

    const-string v2, "usersDB"

    invoke-virtual {v1, v2}, Lcom/google/firebase/database/FirebaseDatabase;->getReference(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v1

    .line 105
    .local v1, "usersRef":Lcom/google/firebase/database/DatabaseReference;
    new-instance v10, Llu/snt/trux/regapp/Utils/User;

    iget-object v3, p0, Llu/snt/trux/regapp/RegistrationActivity$1$1;->val$name:Ljava/lang/String;

    iget-object v4, p0, Llu/snt/trux/regapp/RegistrationActivity$1$1;->val$surname:Ljava/lang/String;

    iget-object v5, p0, Llu/snt/trux/regapp/RegistrationActivity$1$1;->val$birthDate:Ljava/lang/String;

    iget v6, p0, Llu/snt/trux/regapp/RegistrationActivity$1$1;->val$height:I

    iget-wide v7, p0, Llu/snt/trux/regapp/RegistrationActivity$1$1;->val$weight:D

    iget-object v9, p0, Llu/snt/trux/regapp/RegistrationActivity$1$1;->val$sex:Ljava/lang/String;

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Llu/snt/trux/regapp/Utils/User;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IDLjava/lang/String;)V

    .line 108
    .local v2, "newUser":Llu/snt/trux/regapp/Utils/User;
    invoke-virtual {v1, v0}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/firebase/database/DatabaseReference;->setValue(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 110
    .end local v0    # "userId":Ljava/lang/String;
    .end local v1    # "usersRef":Lcom/google/firebase/database/DatabaseReference;
    .end local v2    # "newUser":Llu/snt/trux/regapp/Utils/User;
    goto :goto_0

    .line 112
    :cond_0
    iget-object v0, p0, Llu/snt/trux/regapp/RegistrationActivity$1$1;->this$1:Llu/snt/trux/regapp/RegistrationActivity$1;

    iget-object v0, v0, Llu/snt/trux/regapp/RegistrationActivity$1;->this$0:Llu/snt/trux/regapp/RegistrationActivity;

    invoke-virtual {v0, v2}, Llu/snt/trux/regapp/RegistrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u274c Registration failed: "

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

    .line 114
    :goto_0
    return-void
.end method
