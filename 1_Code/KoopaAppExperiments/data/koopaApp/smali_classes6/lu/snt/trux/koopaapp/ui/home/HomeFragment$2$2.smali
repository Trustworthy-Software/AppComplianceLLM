.class Llu/snt/trux/koopaapp/ui/home/HomeFragment$2$2;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llu/snt/trux/koopaapp/ui/home/HomeFragment$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Llu/snt/trux/koopaapp/ui/home/HomeFragment$2;

.field final synthetic val$editTextHeight:Landroid/widget/EditText;

.field final synthetic val$editTextWeight:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Llu/snt/trux/koopaapp/ui/home/HomeFragment$2;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$1"    # Llu/snt/trux/koopaapp/ui/home/HomeFragment$2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 184
    iput-object p1, p0, Llu/snt/trux/koopaapp/ui/home/HomeFragment$2$2;->this$1:Llu/snt/trux/koopaapp/ui/home/HomeFragment$2;

    iput-object p2, p0, Llu/snt/trux/koopaapp/ui/home/HomeFragment$2$2;->val$editTextHeight:Landroid/widget/EditText;

    iput-object p3, p0, Llu/snt/trux/koopaapp/ui/home/HomeFragment$2$2;->val$editTextWeight:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .line 187
    iget-object v0, p0, Llu/snt/trux/koopaapp/ui/home/HomeFragment$2$2;->val$editTextHeight:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "newHeightStr":Ljava/lang/String;
    iget-object v1, p0, Llu/snt/trux/koopaapp/ui/home/HomeFragment$2$2;->val$editTextWeight:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, "newWeightStr":Ljava/lang/String;
    const/4 v2, 0x0

    .line 192
    .local v2, "newHeight":I
    const-wide/16 v3, 0x0

    .line 194
    .local v3, "newWeight":D
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v2, v5

    .line 195
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v3, v5

    .line 199
    goto :goto_0

    .line 196
    :catch_0
    move-exception v5

    .line 198
    .local v5, "e":Ljava/lang/NumberFormatException;
    iget-object v6, p0, Llu/snt/trux/koopaapp/ui/home/HomeFragment$2$2;->this$1:Llu/snt/trux/koopaapp/ui/home/HomeFragment$2;

    iget-object v6, v6, Llu/snt/trux/koopaapp/ui/home/HomeFragment$2;->this$0:Llu/snt/trux/koopaapp/ui/home/HomeFragment;

    invoke-virtual {v6}, Llu/snt/trux/koopaapp/ui/home/HomeFragment;->getView()Landroid/view/View;

    move-result-object v6

    const-string v7, "\u274c Please provide a valid number"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 202
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    :goto_0
    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance()Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object v5

    const-string v6, "usersDB"

    invoke-virtual {v5, v6}, Lcom/google/firebase/database/FirebaseDatabase;->getReference(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v5

    iget-object v6, p0, Llu/snt/trux/koopaapp/ui/home/HomeFragment$2$2;->this$1:Llu/snt/trux/koopaapp/ui/home/HomeFragment$2;

    iget-object v6, v6, Llu/snt/trux/koopaapp/ui/home/HomeFragment$2;->this$0:Llu/snt/trux/koopaapp/ui/home/HomeFragment;

    invoke-static {v6}, Llu/snt/trux/koopaapp/ui/home/HomeFragment;->-$$Nest$fgetfirebaseCurrentUser(Llu/snt/trux/koopaapp/ui/home/HomeFragment;)Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/firebase/auth/FirebaseUser;->getUid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v5

    .line 205
    .local v5, "userRef":Lcom/google/firebase/database/DatabaseReference;
    const-string v6, "height"

    invoke-virtual {v5, v6}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/firebase/database/DatabaseReference;->setValue(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 206
    const-string v6, "weight"

    invoke-virtual {v5, v6}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v6

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/firebase/database/DatabaseReference;->setValue(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v6

    new-instance v7, Llu/snt/trux/koopaapp/ui/home/HomeFragment$2$2$1;

    invoke-direct {v7, p0, p1}, Llu/snt/trux/koopaapp/ui/home/HomeFragment$2$2$1;-><init>(Llu/snt/trux/koopaapp/ui/home/HomeFragment$2$2;Landroid/content/DialogInterface;)V

    .line 207
    invoke-virtual {v6, v7}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 226
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 227
    return-void
.end method
