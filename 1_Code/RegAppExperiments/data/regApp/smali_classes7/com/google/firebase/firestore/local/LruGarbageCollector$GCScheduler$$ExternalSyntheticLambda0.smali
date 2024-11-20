.class public final synthetic Lcom/google/firebase/firestore/local/LruGarbageCollector$GCScheduler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/firestore/local/LruGarbageCollector$GCScheduler;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/firestore/local/LruGarbageCollector$GCScheduler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/local/LruGarbageCollector$GCScheduler$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/firestore/local/LruGarbageCollector$GCScheduler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/firestore/local/LruGarbageCollector$GCScheduler$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/firestore/local/LruGarbageCollector$GCScheduler;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/local/LruGarbageCollector$GCScheduler;->lambda$scheduleGC$0$com-google-firebase-firestore-local-LruGarbageCollector$GCScheduler()V

    return-void
.end method
