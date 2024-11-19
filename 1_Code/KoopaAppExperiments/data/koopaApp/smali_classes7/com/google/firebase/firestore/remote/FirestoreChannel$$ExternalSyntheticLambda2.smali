.class public final synthetic Lcom/google/firebase/firestore/remote/FirestoreChannel$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/firestore/remote/FirestoreChannel;

.field public final synthetic f$1:[Lio/grpc/ClientCall;

.field public final synthetic f$2:Lcom/google/firebase/firestore/remote/IncomingStreamObserver;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/firestore/remote/FirestoreChannel;[Lio/grpc/ClientCall;Lcom/google/firebase/firestore/remote/IncomingStreamObserver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/remote/FirestoreChannel$$ExternalSyntheticLambda2;->f$0:Lcom/google/firebase/firestore/remote/FirestoreChannel;

    iput-object p2, p0, Lcom/google/firebase/firestore/remote/FirestoreChannel$$ExternalSyntheticLambda2;->f$1:[Lio/grpc/ClientCall;

    iput-object p3, p0, Lcom/google/firebase/firestore/remote/FirestoreChannel$$ExternalSyntheticLambda2;->f$2:Lcom/google/firebase/firestore/remote/IncomingStreamObserver;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/firestore/remote/FirestoreChannel$$ExternalSyntheticLambda2;->f$0:Lcom/google/firebase/firestore/remote/FirestoreChannel;

    iget-object v1, p0, Lcom/google/firebase/firestore/remote/FirestoreChannel$$ExternalSyntheticLambda2;->f$1:[Lio/grpc/ClientCall;

    iget-object v2, p0, Lcom/google/firebase/firestore/remote/FirestoreChannel$$ExternalSyntheticLambda2;->f$2:Lcom/google/firebase/firestore/remote/IncomingStreamObserver;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/firebase/firestore/remote/FirestoreChannel;->lambda$runBidiStreamingRpc$0$com-google-firebase-firestore-remote-FirestoreChannel([Lio/grpc/ClientCall;Lcom/google/firebase/firestore/remote/IncomingStreamObserver;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method
