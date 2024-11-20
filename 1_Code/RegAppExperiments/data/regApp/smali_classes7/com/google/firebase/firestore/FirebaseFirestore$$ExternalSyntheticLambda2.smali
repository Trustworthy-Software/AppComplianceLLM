.class public final synthetic Lcom/google/firebase/firestore/FirebaseFirestore$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/firebase/firestore/EventListener;


# instance fields
.field public final synthetic f$0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/FirebaseFirestore$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onEvent(Ljava/lang/Object;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/firestore/FirebaseFirestore$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Runnable;

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/firestore/FirebaseFirestore;->lambda$addSnapshotsInSyncListener$4(Ljava/lang/Runnable;Ljava/lang/Void;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V

    return-void
.end method
