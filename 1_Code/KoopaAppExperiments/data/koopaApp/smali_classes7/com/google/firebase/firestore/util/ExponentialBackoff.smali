.class public Lcom/google/firebase/firestore/util/ExponentialBackoff;
.super Ljava/lang/Object;
.source "ExponentialBackoff.java"


# static fields
.field public static final DEFAULT_BACKOFF_FACTOR:D = 1.5

.field public static final DEFAULT_BACKOFF_INITIAL_DELAY_MS:J = 0x3e8L

.field public static final DEFAULT_BACKOFF_MAX_DELAY_MS:J = 0xea60L


# instance fields
.field private final backoffFactor:D

.field private currentBaseMs:J

.field private final initialDelayMs:J

.field private lastAttemptTime:J

.field private final maxDelayMs:J

.field private nextMaxDelayMs:J

.field private final queue:Lcom/google/firebase/firestore/util/AsyncQueue;

.field private final timerId:Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;

.field private timerTask:Lcom/google/firebase/firestore/util/AsyncQueue$DelayedTask;


# direct methods
.method public constructor <init>(Lcom/google/firebase/firestore/util/AsyncQueue;Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;)V
    .locals 9
    .param p1, "queue"    # Lcom/google/firebase/firestore/util/AsyncQueue;
    .param p2, "timerId"    # Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;

    .line 88
    const-wide/16 v3, 0x3e8

    const-wide/high16 v5, 0x3ff8000000000000L    # 1.5

    const-wide/32 v7, 0xea60

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v8}, Lcom/google/firebase/firestore/util/ExponentialBackoff;-><init>(Lcom/google/firebase/firestore/util/AsyncQueue;Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;JDJ)V

    .line 94
    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/firestore/util/AsyncQueue;Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;JDJ)V
    .locals 2
    .param p1, "queue"    # Lcom/google/firebase/firestore/util/AsyncQueue;
    .param p2, "timerId"    # Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;
    .param p3, "initialDelayMs"    # J
    .param p5, "backoffFactor"    # D
    .param p7, "maxDelayMs"    # J

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/google/firebase/firestore/util/ExponentialBackoff;->queue:Lcom/google/firebase/firestore/util/AsyncQueue;

    .line 77
    iput-object p2, p0, Lcom/google/firebase/firestore/util/ExponentialBackoff;->timerId:Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;

    .line 78
    iput-wide p3, p0, Lcom/google/firebase/firestore/util/ExponentialBackoff;->initialDelayMs:J

    .line 79
    iput-wide p5, p0, Lcom/google/firebase/firestore/util/ExponentialBackoff;->backoffFactor:D

    .line 80
    iput-wide p7, p0, Lcom/google/firebase/firestore/util/ExponentialBackoff;->maxDelayMs:J

    .line 81
    iput-wide p7, p0, Lcom/google/firebase/firestore/util/ExponentialBackoff;->nextMaxDelayMs:J

    .line 82
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/firebase/firestore/util/ExponentialBackoff;->lastAttemptTime:J

    .line 84
    invoke-virtual {p0}, Lcom/google/firebase/firestore/util/ExponentialBackoff;->reset()V

    .line 85
    return-void
.end method

.method private jitterDelayMs()J
    .locals 4

    .line 186
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lcom/google/firebase/firestore/util/ExponentialBackoff;->currentBaseMs:J

    long-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method


# virtual methods
.method public backoffAndRun(Ljava/lang/Runnable;)V
    .locals 11
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 132
    invoke-virtual {p0}, Lcom/google/firebase/firestore/util/ExponentialBackoff;->cancel()V

    .line 135
    iget-wide v0, p0, Lcom/google/firebase/firestore/util/ExponentialBackoff;->currentBaseMs:J

    invoke-direct {p0}, Lcom/google/firebase/firestore/util/ExponentialBackoff;->jitterDelayMs()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 138
    .local v0, "desiredDelayWithJitterMs":J
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/firebase/firestore/util/ExponentialBackoff;->lastAttemptTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 141
    .local v2, "delaySoFarMs":J
    sub-long v6, v0, v2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 143
    .local v6, "remainingDelayMs":J
    iget-wide v8, p0, Lcom/google/firebase/firestore/util/ExponentialBackoff;->currentBaseMs:J

    cmp-long v4, v8, v4

    if-lez v4, :cond_0

    .line 144
    nop

    .line 145
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    .line 150
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-wide v8, p0, Lcom/google/firebase/firestore/util/ExponentialBackoff;->currentBaseMs:J

    .line 151
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 152
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 153
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    filled-new-array {v5, v8, v9, v10}, [Ljava/lang/Object;

    move-result-object v5

    .line 144
    const-string v8, "Backing off for %d ms (base delay: %d ms, delay with jitter: %d ms, last attempt: %d ms ago)"

    invoke-static {v4, v8, v5}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    :cond_0
    iget-object v4, p0, Lcom/google/firebase/firestore/util/ExponentialBackoff;->queue:Lcom/google/firebase/firestore/util/AsyncQueue;

    iget-object v5, p0, Lcom/google/firebase/firestore/util/ExponentialBackoff;->timerId:Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;

    new-instance v8, Lcom/google/firebase/firestore/util/ExponentialBackoff$$ExternalSyntheticLambda0;

    invoke-direct {v8, p0, p1}, Lcom/google/firebase/firestore/util/ExponentialBackoff$$ExternalSyntheticLambda0;-><init>(Lcom/google/firebase/firestore/util/ExponentialBackoff;Ljava/lang/Runnable;)V

    .line 157
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/firebase/firestore/util/AsyncQueue;->enqueueAfterDelay(Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;JLjava/lang/Runnable;)Lcom/google/firebase/firestore/util/AsyncQueue$DelayedTask;

    move-result-object v4

    iput-object v4, p0, Lcom/google/firebase/firestore/util/ExponentialBackoff;->timerTask:Lcom/google/firebase/firestore/util/AsyncQueue$DelayedTask;

    .line 166
    iget-wide v4, p0, Lcom/google/firebase/firestore/util/ExponentialBackoff;->currentBaseMs:J

    long-to-double v4, v4

    iget-wide v8, p0, Lcom/google/firebase/firestore/util/ExponentialBackoff;->backoffFactor:D

    mul-double/2addr v4, v8

    double-to-long v4, v4

    iput-wide v4, p0, Lcom/google/firebase/firestore/util/ExponentialBackoff;->currentBaseMs:J

    .line 167
    iget-wide v8, p0, Lcom/google/firebase/firestore/util/ExponentialBackoff;->initialDelayMs:J

    cmp-long v10, v4, v8

    if-gez v10, :cond_1

    .line 168
    iput-wide v8, p0, Lcom/google/firebase/firestore/util/ExponentialBackoff;->currentBaseMs:J

    goto :goto_0

    .line 169
    :cond_1
    iget-wide v8, p0, Lcom/google/firebase/firestore/util/ExponentialBackoff;->nextMaxDelayMs:J

    cmp-long v4, v4, v8

    if-lez v4, :cond_2

    .line 170
    iput-wide v8, p0, Lcom/google/firebase/firestore/util/ExponentialBackoff;->currentBaseMs:J

    .line 174
    :cond_2
    :goto_0
    iget-wide v4, p0, Lcom/google/firebase/firestore/util/ExponentialBackoff;->maxDelayMs:J

    iput-wide v4, p0, Lcom/google/firebase/firestore/util/ExponentialBackoff;->nextMaxDelayMs:J

    .line 175
    return-void
.end method

.method public cancel()V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/google/firebase/firestore/util/ExponentialBackoff;->timerTask:Lcom/google/firebase/firestore/util/AsyncQueue$DelayedTask;

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {v0}, Lcom/google/firebase/firestore/util/AsyncQueue$DelayedTask;->cancel()V

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/firestore/util/ExponentialBackoff;->timerTask:Lcom/google/firebase/firestore/util/AsyncQueue$DelayedTask;

    .line 182
    :cond_0
    return-void
.end method

.method synthetic lambda$backoffAndRun$0$com-google-firebase-firestore-util-ExponentialBackoff(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 161
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/firebase/firestore/util/ExponentialBackoff;->lastAttemptTime:J

    .line 162
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 163
    return-void
.end method

.method public reset()V
    .locals 2

    .line 104
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/firebase/firestore/util/ExponentialBackoff;->currentBaseMs:J

    .line 105
    return-void
.end method

.method public resetToMax()V
    .locals 2

    .line 111
    iget-wide v0, p0, Lcom/google/firebase/firestore/util/ExponentialBackoff;->nextMaxDelayMs:J

    iput-wide v0, p0, Lcom/google/firebase/firestore/util/ExponentialBackoff;->currentBaseMs:J

    .line 112
    return-void
.end method

.method public setTemporaryMaxDelay(J)V
    .locals 0
    .param p1, "newMax"    # J

    .line 121
    iput-wide p1, p0, Lcom/google/firebase/firestore/util/ExponentialBackoff;->nextMaxDelayMs:J

    .line 122
    return-void
.end method
