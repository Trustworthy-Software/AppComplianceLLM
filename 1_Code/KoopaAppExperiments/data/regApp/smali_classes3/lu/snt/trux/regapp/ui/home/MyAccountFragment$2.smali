.class Llu/snt/trux/regapp/ui/home/MyAccountFragment$2;
.super Ljava/lang/Object;
.source "MyAccountFragment.java"

# interfaces
.implements Lcom/google/firebase/database/ValueEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llu/snt/trux/regapp/ui/home/MyAccountFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llu/snt/trux/regapp/ui/home/MyAccountFragment;


# direct methods
.method constructor <init>(Llu/snt/trux/regapp/ui/home/MyAccountFragment;)V
    .locals 0
    .param p1, "this$0"    # Llu/snt/trux/regapp/ui/home/MyAccountFragment;

    .line 84
    iput-object p1, p0, Llu/snt/trux/regapp/ui/home/MyAccountFragment$2;->this$0:Llu/snt/trux/regapp/ui/home/MyAccountFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Lcom/google/firebase/database/DatabaseError;)V
    .locals 2
    .param p1, "databaseError"    # Lcom/google/firebase/database/DatabaseError;

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u274c Failed to show data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/firebase/database/DatabaseError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegApp"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-void
.end method

.method public onDataChange(Lcom/google/firebase/database/DataSnapshot;)V
    .locals 3
    .param p1, "dataSnapshot"    # Lcom/google/firebase/database/DataSnapshot;

    .line 87
    invoke-virtual {p1}, Lcom/google/firebase/database/DataSnapshot;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    const-class v0, Llu/snt/trux/regapp/Utils/User;

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/DataSnapshot;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llu/snt/trux/regapp/Utils/User;

    .line 91
    .local v0, "user":Llu/snt/trux/regapp/Utils/User;
    if-eqz v0, :cond_0

    .line 93
    iget-object v1, p0, Llu/snt/trux/regapp/ui/home/MyAccountFragment$2;->this$0:Llu/snt/trux/regapp/ui/home/MyAccountFragment;

    invoke-static {v1}, Llu/snt/trux/regapp/ui/home/MyAccountFragment;->-$$Nest$fgettextViewNameUser(Llu/snt/trux/regapp/ui/home/MyAccountFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Llu/snt/trux/regapp/Utils/User;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v1, p0, Llu/snt/trux/regapp/ui/home/MyAccountFragment$2;->this$0:Llu/snt/trux/regapp/ui/home/MyAccountFragment;

    invoke-static {v1}, Llu/snt/trux/regapp/ui/home/MyAccountFragment;->-$$Nest$fgettextViewSurnameUser(Llu/snt/trux/regapp/ui/home/MyAccountFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Llu/snt/trux/regapp/Utils/User;->getSurname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v1, p0, Llu/snt/trux/regapp/ui/home/MyAccountFragment$2;->this$0:Llu/snt/trux/regapp/ui/home/MyAccountFragment;

    invoke-static {v1}, Llu/snt/trux/regapp/ui/home/MyAccountFragment;->-$$Nest$fgettextViewEmailUser(Llu/snt/trux/regapp/ui/home/MyAccountFragment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Llu/snt/trux/regapp/ui/home/MyAccountFragment$2;->this$0:Llu/snt/trux/regapp/ui/home/MyAccountFragment;

    invoke-static {v2}, Llu/snt/trux/regapp/ui/home/MyAccountFragment;->-$$Nest$fgetfirebaseCurrentUser(Llu/snt/trux/regapp/ui/home/MyAccountFragment;)Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/auth/FirebaseUser;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    .end local v0    # "user":Llu/snt/trux/regapp/Utils/User;
    :cond_0
    return-void
.end method
