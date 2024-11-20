.class public final synthetic Lcom/google/firebase/firestore/remote/RemoteStore$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/firestore/remote/RemoteStore;

.field public final synthetic f$1:Lcom/google/firebase/firestore/remote/ConnectivityMonitor$NetworkStatus;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/firestore/remote/RemoteStore;Lcom/google/firebase/firestore/remote/ConnectivityMonitor$NetworkStatus;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/remote/RemoteStore$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/firestore/remote/RemoteStore;

    iput-object p2, p0, Lcom/google/firebase/firestore/remote/RemoteStore$$ExternalSyntheticLambda0;->f$1:Lcom/google/firebase/firestore/remote/ConnectivityMonitor$NetworkStatus;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/firestore/remote/RemoteStore;

    iget-object v1, p0, Lcom/google/firebase/firestore/remote/RemoteStore$$ExternalSyntheticLambda0;->f$1:Lcom/google/firebase/firestore/remote/ConnectivityMonitor$NetworkStatus;

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/remote/RemoteStore;->lambda$new$0$com-google-firebase-firestore-remote-RemoteStore(Lcom/google/firebase/firestore/remote/ConnectivityMonitor$NetworkStatus;)V

    return-void
.end method
