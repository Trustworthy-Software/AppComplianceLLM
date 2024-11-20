.class public Lcom/google/firebase/firestore/local/LruGarbageCollector$GCScheduler;
.super Ljava/lang/Object;
.source "LruGarbageCollector.java"

# interfaces
.implements Lcom/google/firebase/firestore/local/Scheduler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/local/LruGarbageCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GCScheduler"
.end annotation


# instance fields
.field private final asyncQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

.field private gcTask:Lcom/google/firebase/firestore/util/AsyncQueue$DelayedTask;

.field private hasRun:Z

.field private final localStore:Lcom/google/firebase/firestore/local/LocalStore;

.field final synthetic this$0:Lcom/google/firebase/firestore/local/LruGarbageCollector;


# direct methods
.method public constructor <init>(Lcom/google/firebase/firestore/local/LruGarbageCollector;Lcom/google/firebase/firestore/util/AsyncQueue;Lcom/google/firebase/firestore/local/LocalStore;)V
    .locals 1
    .param p1, "this$0"    # Lcom/google/firebase/firestore/local/LruGarbageCollector;
    .param p2, "asyncQueue"    # Lcom/google/firebase/firestore/util/AsyncQueue;
    .param p3, "localStore"    # Lcom/google/firebase/firestore/local/LocalStore;

    .line 122
    iput-object p1, p0, Lcom/google/firebase/firestore/local/LruGarbageCollector$GCScheduler;->this$0:Lcom/google/firebase/firestore/local/LruGarbageCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/firestore/local/LruGarbageCollector$GCScheduler;->hasRun:Z

    .line 123
    iput-object p2, p0, Lcom/google/firebase/firestore/local/LruGarbageCollector$GCScheduler;->asyncQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

    .line 124
    iput-object p3, p0, Lcom/google/firebase/firestore/local/LruGarbageCollector$GCScheduler;->localStore:Lcom/google/firebase/firestore/local/LocalStore;

    .line 125
    return-void
.end method

.method private scheduleGC()V
    .locals 5

    .line 142
    iget-boolean v0, p0, Lcom/google/firebase/firestore/local/LruGarbageCollector$GCScheduler;->hasRun:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/firebase/firestore/local/LruGarbageCollector;->access$100()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/firebase/firestore/local/LruGarbageCollector;->access$200()J

    move-result-wide v0

    .line 143
    .local v0, "delay":J
    :goto_0
    iget-object v2, p0, Lcom/google/firebase/firestore/local/LruGarbageCollector$GCScheduler;->asyncQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

    sget-object v3, Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;->GARBAGE_COLLECTION:Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;

    new-instance v4, Lcom/google/firebase/firestore/local/LruGarbageCollector$GCScheduler$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/google/firebase/firestore/local/LruGarbageCollector$GCScheduler$$ExternalSyntheticLambda0;-><init>(Lcom/google/firebase/firestore/local/LruGarbageCollector$GCScheduler;)V

    .line 144
    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/google/firebase/firestore/util/AsyncQueue;->enqueueAfterDelay(Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;JLjava/lang/Runnable;)Lcom/google/firebase/firestore/util/AsyncQueue$DelayedTask;

    move-result-object v2

    iput-object v2, p0, Lcom/google/firebase/firestore/local/LruGarbageCollector$GCScheduler;->gcTask:Lcom/google/firebase/firestore/util/AsyncQueue$DelayedTask;

    .line 152
    return-void
.end method


# virtual methods
.method synthetic lambda$scheduleGC$0$com-google-firebase-firestore-local-LruGarbageCollector$GCScheduler()V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LruGarbageCollector$GCScheduler;->localStore:Lcom/google/firebase/firestore/local/LocalStore;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/LruGarbageCollector$GCScheduler;->this$0:Lcom/google/firebase/firestore/local/LruGarbageCollector;

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/local/LocalStore;->collectGarbage(Lcom/google/firebase/firestore/local/LruGarbageCollector;)Lcom/google/firebase/firestore/local/LruGarbageCollector$Results;

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/firebase/firestore/local/LruGarbageCollector$GCScheduler;->hasRun:Z

    .line 150
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/LruGarbageCollector$GCScheduler;->scheduleGC()V

    .line 151
    return-void
.end method

.method public start()V
    .locals 4

    .line 129
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LruGarbageCollector$GCScheduler;->this$0:Lcom/google/firebase/firestore/local/LruGarbageCollector;

    invoke-static {v0}, Lcom/google/firebase/firestore/local/LruGarbageCollector;->access$000(Lcom/google/firebase/firestore/local/LruGarbageCollector;)Lcom/google/firebase/firestore/local/LruGarbageCollector$Params;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/firebase/firestore/local/LruGarbageCollector$Params;->minBytesThreshold:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 130
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/LruGarbageCollector$GCScheduler;->scheduleGC()V

    .line 132
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LruGarbageCollector$GCScheduler;->gcTask:Lcom/google/firebase/firestore/util/AsyncQueue$DelayedTask;

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0}, Lcom/google/firebase/firestore/util/AsyncQueue$DelayedTask;->cancel()V

    .line 139
    :cond_0
    return-void
.end method
