.class public final synthetic Lcom/google/firebase/firestore/remote/OnlineStateTracker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/firestore/remote/OnlineStateTracker;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/firestore/remote/OnlineStateTracker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/remote/OnlineStateTracker$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/firestore/remote/OnlineStateTracker;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/firestore/remote/OnlineStateTracker$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/firestore/remote/OnlineStateTracker;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/remote/OnlineStateTracker;->lambda$handleWatchStreamStart$0$com-google-firebase-firestore-remote-OnlineStateTracker()V

    return-void
.end method
