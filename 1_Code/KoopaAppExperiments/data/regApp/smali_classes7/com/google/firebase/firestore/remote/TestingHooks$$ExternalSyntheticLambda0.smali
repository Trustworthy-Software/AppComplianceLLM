.class public final synthetic Lcom/google/firebase/firestore/remote/TestingHooks$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/firebase/firestore/ListenerRegistration;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/firestore/remote/TestingHooks;

.field public final synthetic f$1:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/firestore/remote/TestingHooks;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/remote/TestingHooks$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/firestore/remote/TestingHooks;

    iput-object p2, p0, Lcom/google/firebase/firestore/remote/TestingHooks$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final remove()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/firestore/remote/TestingHooks$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/firestore/remote/TestingHooks;

    iget-object v1, p0, Lcom/google/firebase/firestore/remote/TestingHooks$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/remote/TestingHooks;->lambda$addExistenceFilterMismatchListener$0$com-google-firebase-firestore-remote-TestingHooks(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method
