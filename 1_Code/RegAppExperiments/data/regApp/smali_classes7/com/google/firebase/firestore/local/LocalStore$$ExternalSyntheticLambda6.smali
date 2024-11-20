.class public final synthetic Lcom/google/firebase/firestore/local/LocalStore$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/firestore/local/LocalStore;

.field public final synthetic f$1:Lcom/google/firebase/firestore/local/LocalStore$AllocateQueryHolder;

.field public final synthetic f$2:Lcom/google/firebase/firestore/core/Target;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/firestore/local/LocalStore;Lcom/google/firebase/firestore/local/LocalStore$AllocateQueryHolder;Lcom/google/firebase/firestore/core/Target;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/local/LocalStore$$ExternalSyntheticLambda6;->f$0:Lcom/google/firebase/firestore/local/LocalStore;

    iput-object p2, p0, Lcom/google/firebase/firestore/local/LocalStore$$ExternalSyntheticLambda6;->f$1:Lcom/google/firebase/firestore/local/LocalStore$AllocateQueryHolder;

    iput-object p3, p0, Lcom/google/firebase/firestore/local/LocalStore$$ExternalSyntheticLambda6;->f$2:Lcom/google/firebase/firestore/core/Target;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore$$ExternalSyntheticLambda6;->f$0:Lcom/google/firebase/firestore/local/LocalStore;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/LocalStore$$ExternalSyntheticLambda6;->f$1:Lcom/google/firebase/firestore/local/LocalStore$AllocateQueryHolder;

    iget-object v2, p0, Lcom/google/firebase/firestore/local/LocalStore$$ExternalSyntheticLambda6;->f$2:Lcom/google/firebase/firestore/core/Target;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/firestore/local/LocalStore;->lambda$allocateTarget$8$com-google-firebase-firestore-local-LocalStore(Lcom/google/firebase/firestore/local/LocalStore$AllocateQueryHolder;Lcom/google/firebase/firestore/core/Target;)V

    return-void
.end method
