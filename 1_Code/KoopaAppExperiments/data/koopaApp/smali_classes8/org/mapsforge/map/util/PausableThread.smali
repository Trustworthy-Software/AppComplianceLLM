.class public abstract Lorg/mapsforge/map/util/PausableThread;
.super Ljava/lang/Thread;
.source "PausableThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mapsforge/map/util/PausableThread$ThreadPriority;
    }
.end annotation


# instance fields
.field private pausing:Z

.field private shouldPause:Z

.field private shouldStop:Z

.field protected waitForWork:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterRun()V
    .locals 0

    .line 164
    return-void
.end method

.method public final awaitPausing()V
    .locals 2

    .line 71
    monitor-enter p0

    .line 72
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/mapsforge/map/util/PausableThread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/mapsforge/map/util/PausableThread;->isPausing()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 74
    const-wide/16 v0, 0x64

    :try_start_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    :goto_1
    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .end local v0    # "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 80
    :cond_0
    monitor-exit p0

    .line 81
    return-void

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method protected abstract doWork()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public final declared-synchronized finish()V
    .locals 1

    monitor-enter p0

    .line 84
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/mapsforge/map/util/PausableThread;->shouldStop:Z

    .line 85
    invoke-virtual {p0}, Lorg/mapsforge/map/util/PausableThread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    monitor-exit p0

    return-void

    .line 83
    .end local p0    # "this":Lorg/mapsforge/map/util/PausableThread;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract getThreadPriority()Lorg/mapsforge/map/util/PausableThread$ThreadPriority;
.end method

.method protected abstract hasWork()Z
.end method

.method public interrupt()V
    .locals 1

    .line 91
    monitor-enter p0

    .line 92
    :try_start_0
    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    .line 93
    monitor-exit p0

    .line 94
    return-void

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final declared-synchronized isPausing()Z
    .locals 1

    monitor-enter p0

    .line 100
    :try_start_0
    iget-boolean v0, p0, Lorg/mapsforge/map/util/PausableThread;->pausing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 100
    .end local p0    # "this":Lorg/mapsforge/map/util/PausableThread;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized pause()V
    .locals 1

    monitor-enter p0

    .line 107
    :try_start_0
    iget-boolean v0, p0, Lorg/mapsforge/map/util/PausableThread;->shouldPause:Z

    if-nez v0, :cond_0

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mapsforge/map/util/PausableThread;->shouldPause:Z

    .line 109
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    .end local p0    # "this":Lorg/mapsforge/map/util/PausableThread;
    :cond_0
    monitor-exit p0

    return-void

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized proceed()V
    .locals 1

    monitor-enter p0

    .line 117
    :try_start_0
    iget-boolean v0, p0, Lorg/mapsforge/map/util/PausableThread;->shouldPause:Z

    if-eqz v0, :cond_0

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mapsforge/map/util/PausableThread;->shouldPause:Z

    .line 119
    iput-boolean v0, p0, Lorg/mapsforge/map/util/PausableThread;->pausing:Z

    .line 120
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    .end local p0    # "this":Lorg/mapsforge/map/util/PausableThread;
    :cond_0
    monitor-exit p0

    return-void

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final run()V
    .locals 1

    .line 126
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mapsforge/map/util/PausableThread;->setName(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lorg/mapsforge/map/util/PausableThread;->getThreadPriority()Lorg/mapsforge/map/util/PausableThread$ThreadPriority;

    move-result-object v0

    iget v0, v0, Lorg/mapsforge/map/util/PausableThread$ThreadPriority;->priority:I

    invoke-virtual {p0, v0}, Lorg/mapsforge/map/util/PausableThread;->setPriority(I)V

    .line 129
    :goto_0
    iget-boolean v0, p0, Lorg/mapsforge/map/util/PausableThread;->shouldStop:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/mapsforge/map/util/PausableThread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lorg/mapsforge/map/util/PausableThread;->waitForWork:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lorg/mapsforge/map/util/PausableThread;->hasWork()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 130
    :cond_1
    monitor-enter p0

    .line 131
    :goto_1
    :try_start_0
    iget-boolean v0, p0, Lorg/mapsforge/map/util/PausableThread;->shouldStop:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lorg/mapsforge/map/util/PausableThread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lorg/mapsforge/map/util/PausableThread;->shouldPause:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/mapsforge/map/util/PausableThread;->hasWork()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_4

    .line 133
    :cond_2
    :try_start_1
    iget-boolean v0, p0, Lorg/mapsforge/map/util/PausableThread;->shouldPause:Z

    if-eqz v0, :cond_3

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mapsforge/map/util/PausableThread;->pausing:Z

    .line 136
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 137
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {p0}, Lorg/mapsforge/map/util/PausableThread;->interrupt()V

    .line 140
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_2
    goto :goto_1

    .line 142
    :cond_4
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 144
    iget-boolean v0, p0, Lorg/mapsforge/map/util/PausableThread;->shouldStop:Z

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lorg/mapsforge/map/util/PausableThread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    iget-boolean v0, p0, Lorg/mapsforge/map/util/PausableThread;->waitForWork:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lorg/mapsforge/map/util/PausableThread;->hasWork()Z

    move-result v0

    if-nez v0, :cond_6

    .line 145
    goto :goto_4

    .line 149
    :cond_6
    :try_start_3
    invoke-virtual {p0}, Lorg/mapsforge/map/util/PausableThread;->doWork()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    .line 153
    :goto_3
    goto :goto_0

    .line 150
    :catch_1
    move-exception v0

    .line 152
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {p0}, Lorg/mapsforge/map/util/PausableThread;->interrupt()V

    .end local v0    # "e":Ljava/lang/InterruptedException;
    goto :goto_3

    .line 142
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 156
    :cond_7
    :goto_4
    invoke-virtual {p0}, Lorg/mapsforge/map/util/PausableThread;->afterRun()V

    .line 157
    return-void
.end method
