.class public final synthetic Lcom/google/firebase/firestore/LoadBundleTask$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/firestore/LoadBundleTask;

.field public final synthetic f$1:Lcom/google/firebase/firestore/OnProgressListener;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/firestore/LoadBundleTask;Lcom/google/firebase/firestore/OnProgressListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/LoadBundleTask$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/firestore/LoadBundleTask;

    iput-object p2, p0, Lcom/google/firebase/firestore/LoadBundleTask$$ExternalSyntheticLambda0;->f$1:Lcom/google/firebase/firestore/OnProgressListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/firestore/LoadBundleTask$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/firestore/LoadBundleTask;

    iget-object v1, p0, Lcom/google/firebase/firestore/LoadBundleTask$$ExternalSyntheticLambda0;->f$1:Lcom/google/firebase/firestore/OnProgressListener;

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/LoadBundleTask;->lambda$addOnProgressListener$0$com-google-firebase-firestore-LoadBundleTask(Lcom/google/firebase/firestore/OnProgressListener;)V

    return-void
.end method
