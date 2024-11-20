.class public final synthetic Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;

.field public final synthetic f$1:Lio/grpc/Status;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;Lio/grpc/Status;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver$$ExternalSyntheticLambda1;->f$0:Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;

    iput-object p2, p0, Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver$$ExternalSyntheticLambda1;->f$1:Lio/grpc/Status;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver$$ExternalSyntheticLambda1;->f$0:Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;

    iget-object v1, p0, Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver$$ExternalSyntheticLambda1;->f$1:Lio/grpc/Status;

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;->lambda$onClose$3$com-google-firebase-firestore-remote-AbstractStream$StreamObserver(Lio/grpc/Status;)V

    return-void
.end method
