.class public final synthetic Lcom/google/firebase/firestore/util/ExponentialBackoff$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/firestore/util/ExponentialBackoff;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/firestore/util/ExponentialBackoff;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/util/ExponentialBackoff$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/firestore/util/ExponentialBackoff;

    iput-object p2, p0, Lcom/google/firebase/firestore/util/ExponentialBackoff$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/firestore/util/ExponentialBackoff$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/firestore/util/ExponentialBackoff;

    iget-object v1, p0, Lcom/google/firebase/firestore/util/ExponentialBackoff$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/util/ExponentialBackoff;->lambda$backoffAndRun$0$com-google-firebase-firestore-util-ExponentialBackoff(Ljava/lang/Runnable;)V

    return-void
.end method
