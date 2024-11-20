.class public Lcom/google/firebase/firestore/local/IndexBackfiller$Scheduler;
.super Ljava/lang/Object;
.source "IndexBackfiller.java"

# interfaces
.implements Lcom/google/firebase/firestore/local/Scheduler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/local/IndexBackfiller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Scheduler"
.end annotation


# instance fields
.field private final asyncQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

.field private backfillTask:Lcom/google/firebase/firestore/util/AsyncQueue$DelayedTask;

.field final synthetic this$0:Lcom/google/firebase/firestore/local/IndexBackfiller;


# direct methods
.method public constructor <init>(Lcom/google/firebase/firestore/local/IndexBackfiller;Lcom/google/firebase/firestore/util/AsyncQueue;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/firebase/firestore/local/IndexBackfiller;
    .param p2, "asyncQueue"    # Lcom/google/firebase/firestore/util/AsyncQueue;

    .line 70
    iput-object p1, p0, Lcom/google/firebase/firestore/local/IndexBackfiller$Scheduler;->this$0:Lcom/google/firebase/firestore/local/IndexBackfiller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p2, p0, Lcom/google/firebase/firestore/local/IndexBackfiller$Scheduler;->asyncQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

    .line 72
    return-void
.end method

.method private scheduleBackfill(J)V
    .locals 3
    .param p1, "delay"    # J

    .line 87
    iget-object v0, p0, Lcom/google/firebase/firestore/local/IndexBackfiller$Scheduler;->asyncQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

    sget-object v1, Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;->INDEX_BACKFILL:Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;

    new-instance v2, Lcom/google/firebase/firestore/local/IndexBackfiller$Scheduler$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/google/firebase/firestore/local/IndexBackfiller$Scheduler$$ExternalSyntheticLambda0;-><init>(Lcom/google/firebase/firestore/local/IndexBackfiller$Scheduler;)V

    .line 88
    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/google/firebase/firestore/util/AsyncQueue;->enqueueAfterDelay(Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;JLjava/lang/Runnable;)Lcom/google/firebase/firestore/util/AsyncQueue$DelayedTask;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/local/IndexBackfiller$Scheduler;->backfillTask:Lcom/google/firebase/firestore/util/AsyncQueue$DelayedTask;

    .line 96
    return-void
.end method


# virtual methods
.method synthetic lambda$scheduleBackfill$0$com-google-firebase-firestore-local-IndexBackfiller$Scheduler()V
    .locals 4

    .line 92
    iget-object v0, p0, Lcom/google/firebase/firestore/local/IndexBackfiller$Scheduler;->this$0:Lcom/google/firebase/firestore/local/IndexBackfiller;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/local/IndexBackfiller;->backfill()I

    move-result v0

    .line 93
    .local v0, "documentsProcessed":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "IndexBackfiller"

    const-string v3, "Documents written: %s"

    invoke-static {v2, v3, v1}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    invoke-static {}, Lcom/google/firebase/firestore/local/IndexBackfiller;->access$100()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/google/firebase/firestore/local/IndexBackfiller$Scheduler;->scheduleBackfill(J)V

    .line 95
    return-void
.end method

.method public start()V
    .locals 2

    .line 76
    invoke-static {}, Lcom/google/firebase/firestore/local/IndexBackfiller;->access$000()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/firestore/local/IndexBackfiller$Scheduler;->scheduleBackfill(J)V

    .line 77
    return-void
.end method

.method public stop()V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/google/firebase/firestore/local/IndexBackfiller$Scheduler;->backfillTask:Lcom/google/firebase/firestore/util/AsyncQueue$DelayedTask;

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0}, Lcom/google/firebase/firestore/util/AsyncQueue$DelayedTask;->cancel()V

    .line 84
    :cond_0
    return-void
.end method
