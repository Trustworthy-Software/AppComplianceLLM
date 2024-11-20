.class public final synthetic Lcom/google/firebase/firestore/core/FirestoreClient$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/firestore/core/FirestoreClient;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/firestore/core/FirestoreClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/core/FirestoreClient$$ExternalSyntheticLambda13;->f$0:Lcom/google/firebase/firestore/core/FirestoreClient;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/firestore/core/FirestoreClient$$ExternalSyntheticLambda13;->f$0:Lcom/google/firebase/firestore/core/FirestoreClient;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/FirestoreClient;->lambda$disableNetwork$4$com-google-firebase-firestore-core-FirestoreClient()V

    return-void
.end method
