.class Lcom/google/firebase/firestore/remote/OnlineStateTracker;
.super Ljava/lang/Object;
.source "OnlineStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/remote/OnlineStateTracker$OnlineStateCallback;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "OnlineStateTracker"

.field private static final MAX_WATCH_STREAM_FAILURES:I = 0x1

.field private static final ONLINE_STATE_TIMEOUT_MS:I = 0x2710


# instance fields
.field private final onlineStateCallback:Lcom/google/firebase/firestore/remote/OnlineStateTracker$OnlineStateCallback;

.field private onlineStateTimer:Lcom/google/firebase/firestore/util/AsyncQueue$DelayedTask;

.field private shouldWarnClientIsOffline:Z

.field private state:Lcom/google/firebase/firestore/core/OnlineState;

.field private watchStreamFailures:I

.field private final workerQueue:Lcom/google/firebase/firestore/util/AsyncQueue;


# direct methods
.method constructor <init>(Lcom/google/firebase/firestore/util/AsyncQueue;Lcom/google/firebase/firestore/remote/OnlineStateTracker$OnlineStateCallback;)V
    .locals 1
    .param p1, "workerQueue"    # Lcom/google/firebase/firestore/util/AsyncQueue;
    .param p2, "onlineStateCallback"    # Lcom/google/firebase/firestore/remote/OnlineStateTracker$OnlineStateCallback;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/google/firebase/firestore/remote/OnlineStateTracker;->workerQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

    .line 86
    iput-object p2, p0, Lcom/google/firebase/firestore/remote/OnlineStateTracker;->onlineStateCallback:Lcom/google/firebase/firestore/remote/OnlineStateTracker$OnlineStateCallback;

    .line 87
    sget-object v0, Lcom/google/firebase/firestore/core/OnlineState;->UNKNOWN:Lcom/google/firebase/firestore/core/OnlineState;

    iput-object v0, p0, Lcom/google/firebase/firestore/remote/OnlineStateTracker;->state:Lcom/google/firebase/firestore/core/OnlineState;

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/firebase/firestore/remote/OnlineStateTracker;->shouldWarnClientIsOffline:Z

    .line 89
    return-void
.end method

.method private clearOnlineStateTimer()V
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/OnlineStateTracker;->onlineStateTimer:Lcom/google/firebase/firestore/util/AsyncQueue$DelayedTask;

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {v0}, Lcom/google/firebase/firestore/util/AsyncQueue$DelayedTask;->cancel()V

    .line 205
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/firestore/remote/OnlineStateTracker;->onlineStateTimer:Lcom/google/firebase/firestore/util/AsyncQueue$DelayedTask;

    .line 207
    :cond_0
    return-void
.end method

.method private logClientOfflineWarningIfNecessary(Ljava/lang/String;)V
    .locals 4
    .param p1, "reason"    # Ljava/lang/String;

    .line 186
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v0

    .line 187
    const-string v1, "Could not reach Cloud Firestore backend. %s\nThis typically indicates that your device does not have a healthy Internet connection at the moment. The client will operate in offline mode until it is able to successfully connect to the backend."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "message":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/google/firebase/firestore/remote/OnlineStateTracker;->shouldWarnClientIsOffline:Z

    const-string v2, "%s"

    const-string v3, "OnlineStateTracker"

    if-eqz v1, :cond_0

    .line 195
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v2, v1}, Lcom/google/firebase/firestore/util/Logger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/firebase/firestore/remote/OnlineStateTracker;->shouldWarnClientIsOffline:Z

    goto :goto_0

    .line 198
    :cond_0
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v2, v1}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    :goto_0
    return-void
.end method

.method private setAndBroadcastState(Lcom/google/firebase/firestore/core/OnlineState;)V
    .locals 1
    .param p1, "newState"    # Lcom/google/firebase/firestore/core/OnlineState;

    .line 179
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/OnlineStateTracker;->state:Lcom/google/firebase/firestore/core/OnlineState;

    if-eq p1, v0, :cond_0

    .line 180
    iput-object p1, p0, Lcom/google/firebase/firestore/remote/OnlineStateTracker;->state:Lcom/google/firebase/firestore/core/OnlineState;

    .line 181
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/OnlineStateTracker;->onlineStateCallback:Lcom/google/firebase/firestore/remote/OnlineStateTracker$OnlineStateCallback;

    invoke-interface {v0, p1}, Lcom/google/firebase/firestore/remote/OnlineStateTracker$OnlineStateCallback;->handleOnlineStateChange(Lcom/google/firebase/firestore/core/OnlineState;)V

    .line 183
    :cond_0
    return-void
.end method


# virtual methods
.method getState()Lcom/google/firebase/firestore/core/OnlineState;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/OnlineStateTracker;->state:Lcom/google/firebase/firestore/core/OnlineState;

    return-object v0
.end method

.method handleWatchStreamFailure(Lio/grpc/Status;)V
    .locals 5
    .param p1, "status"    # Lio/grpc/Status;

    .line 137
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/OnlineStateTracker;->state:Lcom/google/firebase/firestore/core/OnlineState;

    sget-object v1, Lcom/google/firebase/firestore/core/OnlineState;->ONLINE:Lcom/google/firebase/firestore/core/OnlineState;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2

    .line 138
    sget-object v0, Lcom/google/firebase/firestore/core/OnlineState;->UNKNOWN:Lcom/google/firebase/firestore/core/OnlineState;

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/remote/OnlineStateTracker;->setAndBroadcastState(Lcom/google/firebase/firestore/core/OnlineState;)V

    .line 142
    iget v0, p0, Lcom/google/firebase/firestore/remote/OnlineStateTracker;->watchStreamFailures:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v3, "watchStreamFailures must be 0"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 143
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/OnlineStateTracker;->onlineStateTimer:Lcom/google/firebase/firestore/util/AsyncQueue$DelayedTask;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    const-string v0, "onlineStateTimer must be null"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 145
    :cond_2
    iget v0, p0, Lcom/google/firebase/firestore/remote/OnlineStateTracker;->watchStreamFailures:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/firebase/firestore/remote/OnlineStateTracker;->watchStreamFailures:I

    .line 146
    if-lt v0, v2, :cond_3

    .line 147
    invoke-direct {p0}, Lcom/google/firebase/firestore/remote/OnlineStateTracker;->clearOnlineStateTimer()V

    .line 148
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 152
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object v1

    .line 149
    const-string v2, "Connection failed %d times. Most recent error: %s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/remote/OnlineStateTracker;->logClientOfflineWarningIfNecessary(Ljava/lang/String;)V

    .line 154
    sget-object v0, Lcom/google/firebase/firestore/core/OnlineState;->OFFLINE:Lcom/google/firebase/firestore/core/OnlineState;

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/remote/OnlineStateTracker;->setAndBroadcastState(Lcom/google/firebase/firestore/core/OnlineState;)V

    .line 157
    :cond_3
    :goto_2
    return-void
.end method

.method handleWatchStreamStart()V
    .locals 5

    .line 103
    iget v0, p0, Lcom/google/firebase/firestore/remote/OnlineStateTracker;->watchStreamFailures:I

    if-nez v0, :cond_1

    .line 104
    sget-object v0, Lcom/google/firebase/firestore/core/OnlineState;->UNKNOWN:Lcom/google/firebase/firestore/core/OnlineState;

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/remote/OnlineStateTracker;->setAndBroadcastState(Lcom/google/firebase/firestore/core/OnlineState;)V

    .line 106
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/OnlineStateTracker;->onlineStateTimer:Lcom/google/firebase/firestore/util/AsyncQueue$DelayedTask;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "onlineStateTimer shouldn\'t be started yet"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 107
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/OnlineStateTracker;->workerQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

    sget-object v1, Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;->ONLINE_STATE_TIMEOUT:Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;

    new-instance v2, Lcom/google/firebase/firestore/remote/OnlineStateTracker$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/google/firebase/firestore/remote/OnlineStateTracker$$ExternalSyntheticLambda0;-><init>(Lcom/google/firebase/firestore/remote/OnlineStateTracker;)V

    .line 108
    const-wide/16 v3, 0x2710

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/google/firebase/firestore/util/AsyncQueue;->enqueueAfterDelay(Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;JLjava/lang/Runnable;)Lcom/google/firebase/firestore/util/AsyncQueue$DelayedTask;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/remote/OnlineStateTracker;->onlineStateTimer:Lcom/google/firebase/firestore/util/AsyncQueue$DelayedTask;

    .line 127
    :cond_1
    return-void
.end method

.method synthetic lambda$handleWatchStreamStart$0$com-google-firebase-firestore-remote-OnlineStateTracker()V
    .locals 3

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/firestore/remote/OnlineStateTracker;->onlineStateTimer:Lcom/google/firebase/firestore/util/AsyncQueue$DelayedTask;

    .line 113
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/OnlineStateTracker;->state:Lcom/google/firebase/firestore/core/OnlineState;

    sget-object v1, Lcom/google/firebase/firestore/core/OnlineState;->UNKNOWN:Lcom/google/firebase/firestore/core/OnlineState;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v1, "Timer should be canceled if we transitioned to a different state."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 116
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 120
    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 117
    const-string v2, "Backend didn\'t respond within %d seconds\n"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/remote/OnlineStateTracker;->logClientOfflineWarningIfNecessary(Ljava/lang/String;)V

    .line 121
    sget-object v0, Lcom/google/firebase/firestore/core/OnlineState;->OFFLINE:Lcom/google/firebase/firestore/core/OnlineState;

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/remote/OnlineStateTracker;->setAndBroadcastState(Lcom/google/firebase/firestore/core/OnlineState;)V

    .line 125
    return-void
.end method

.method updateState(Lcom/google/firebase/firestore/core/OnlineState;)V
    .locals 2
    .param p1, "newState"    # Lcom/google/firebase/firestore/core/OnlineState;

    .line 166
    invoke-direct {p0}, Lcom/google/firebase/firestore/remote/OnlineStateTracker;->clearOnlineStateTimer()V

    .line 167
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/firestore/remote/OnlineStateTracker;->watchStreamFailures:I

    .line 169
    sget-object v1, Lcom/google/firebase/firestore/core/OnlineState;->ONLINE:Lcom/google/firebase/firestore/core/OnlineState;

    if-ne p1, v1, :cond_0

    .line 172
    iput-boolean v0, p0, Lcom/google/firebase/firestore/remote/OnlineStateTracker;->shouldWarnClientIsOffline:Z

    .line 175
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/remote/OnlineStateTracker;->setAndBroadcastState(Lcom/google/firebase/firestore/core/OnlineState;)V

    .line 176
    return-void
.end method
