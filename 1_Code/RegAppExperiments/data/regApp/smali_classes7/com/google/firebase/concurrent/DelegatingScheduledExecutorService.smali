.class Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService;
.super Ljava/lang/Object;
.source "DelegatingScheduledExecutorService.java"

# interfaces
.implements Ljava/util/concurrent/ScheduledExecutorService;


# instance fields
.field private final delegate:Ljava/util/concurrent/ExecutorService;

.field private final scheduler:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0
    .param p1, "delegate"    # Ljava/util/concurrent/ExecutorService;
    .param p2, "scheduler"    # Ljava/util/concurrent/ScheduledExecutorService;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService;->delegate:Ljava/util/concurrent/ExecutorService;

    .line 34
    iput-object p2, p0, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 35
    return-void
.end method

.method static synthetic lambda$schedule$0(Ljava/lang/Runnable;Lcom/google/firebase/concurrent/DelegatingScheduledFuture$Completer;)V
    .locals 1
    .param p0, "command"    # Ljava/lang/Runnable;
    .param p1, "completer"    # Lcom/google/firebase/concurrent/DelegatingScheduledFuture$Completer;

    .line 116
    :try_start_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 117
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/firebase/concurrent/DelegatingScheduledFuture$Completer;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "ex":Ljava/lang/Exception;
    invoke-interface {p1, v0}, Lcom/google/firebase/concurrent/DelegatingScheduledFuture$Completer;->setException(Ljava/lang/Throwable;)V

    .line 121
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method static synthetic lambda$schedule$3(Ljava/util/concurrent/Callable;Lcom/google/firebase/concurrent/DelegatingScheduledFuture$Completer;)V
    .locals 1
    .param p0, "callable"    # Ljava/util/concurrent/Callable;
    .param p1, "completer"    # Lcom/google/firebase/concurrent/DelegatingScheduledFuture$Completer;

    .line 136
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    .line 137
    .local v0, "result":Ljava/lang/Object;, "TV;"
    invoke-interface {p1, v0}, Lcom/google/firebase/concurrent/DelegatingScheduledFuture$Completer;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .end local v0    # "result":Ljava/lang/Object;, "TV;"
    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "ex":Ljava/lang/Exception;
    invoke-interface {p1, v0}, Lcom/google/firebase/concurrent/DelegatingScheduledFuture$Completer;->setException(Ljava/lang/Throwable;)V

    .line 141
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method static synthetic lambda$scheduleAtFixedRate$6(Ljava/lang/Runnable;Lcom/google/firebase/concurrent/DelegatingScheduledFuture$Completer;)V
    .locals 1
    .param p0, "command"    # Ljava/lang/Runnable;
    .param p1, "completer"    # Lcom/google/firebase/concurrent/DelegatingScheduledFuture$Completer;

    .line 156
    :try_start_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    nop

    .line 161
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "ex":Ljava/lang/Exception;
    invoke-interface {p1, v0}, Lcom/google/firebase/concurrent/DelegatingScheduledFuture$Completer;->setException(Ljava/lang/Throwable;)V

    .line 159
    throw v0
.end method

.method static synthetic lambda$scheduleWithFixedDelay$9(Ljava/lang/Runnable;Lcom/google/firebase/concurrent/DelegatingScheduledFuture$Completer;)V
    .locals 1
    .param p0, "command"    # Ljava/lang/Runnable;
    .param p1, "completer"    # Lcom/google/firebase/concurrent/DelegatingScheduledFuture$Completer;

    .line 177
    :try_start_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    goto :goto_0

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "ex":Ljava/lang/Exception;
    invoke-interface {p1, v0}, Lcom/google/firebase/concurrent/DelegatingScheduledFuture$Completer;->setException(Ljava/lang/Throwable;)V

    .line 181
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService;->delegate:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/Runnable;

    .line 104
    iget-object v0, p0, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService;->delegate:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 105
    return-void
.end method

.method public invokeAll(Ljava/util/Collection;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;)",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 80
    .local p1, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    iget-object v0, p0, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService;->delegate:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;
    .locals 1
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 87
    .local p1, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    iget-object v0, p0, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService;->delegate:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public invokeAny(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 93
    .local p1, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    iget-object v0, p0, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService;->delegate:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->invokeAny(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public invokeAny(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 99
    .local p1, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    iget-object v0, p0, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService;->delegate:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/concurrent/ExecutorService;->invokeAny(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isShutdown()Z
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService;->delegate:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    return v0
.end method

.method public isTerminated()Z
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService;->delegate:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    return v0
.end method

.method synthetic lambda$schedule$1$com-google-firebase-concurrent-DelegatingScheduledExecutorService(Ljava/lang/Runnable;Lcom/google/firebase/concurrent/DelegatingScheduledFuture$Completer;)V
    .locals 2
    .param p1, "command"    # Ljava/lang/Runnable;
    .param p2, "completer"    # Lcom/google/firebase/concurrent/DelegatingScheduledFuture$Completer;

    .line 113
    iget-object v0, p0, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService;->delegate:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService$$ExternalSyntheticLambda11;

    invoke-direct {v1, p1, p2}, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService$$ExternalSyntheticLambda11;-><init>(Ljava/lang/Runnable;Lcom/google/firebase/concurrent/DelegatingScheduledFuture$Completer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$schedule$2$com-google-firebase-concurrent-DelegatingScheduledExecutorService(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Lcom/google/firebase/concurrent/DelegatingScheduledFuture$Completer;)Ljava/util/concurrent/ScheduledFuture;
    .locals 2
    .param p1, "command"    # Ljava/lang/Runnable;
    .param p2, "delay"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "completer"    # Lcom/google/firebase/concurrent/DelegatingScheduledFuture$Completer;

    .line 111
    iget-object v0, p0, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1, p5}, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService$$ExternalSyntheticLambda10;-><init>(Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService;Ljava/lang/Runnable;Lcom/google/firebase/concurrent/DelegatingScheduledFuture$Completer;)V

    invoke-interface {v0, v1, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$schedule$4$com-google-firebase-concurrent-DelegatingScheduledExecutorService(Ljava/util/concurrent/Callable;Lcom/google/firebase/concurrent/DelegatingScheduledFuture$Completer;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "callable"    # Ljava/util/concurrent/Callable;
    .param p2, "completer"    # Lcom/google/firebase/concurrent/DelegatingScheduledFuture$Completer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService;->delegate:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1, p2}, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService$$ExternalSyntheticLambda3;-><init>(Ljava/util/concurrent/Callable;Lcom/google/firebase/concurrent/DelegatingScheduledFuture$Completer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$schedule$5$com-google-firebase-concurrent-DelegatingScheduledExecutorService(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;Lcom/google/firebase/concurrent/DelegatingScheduledFuture$Completer;)Ljava/util/concurrent/ScheduledFuture;
    .locals 2
    .param p1, "callable"    # Ljava/util/concurrent/Callable;
    .param p2, "delay"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "completer"    # Lcom/google/firebase/concurrent/DelegatingScheduledFuture$Completer;

    .line 131
    iget-object v0, p0, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p5}, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService$$ExternalSyntheticLambda2;-><init>(Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService;Ljava/util/concurrent/Callable;Lcom/google/firebase/concurrent/DelegatingScheduledFuture$Completer;)V

    invoke-interface {v0, v1, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$scheduleAtFixedRate$7$com-google-firebase-concurrent-DelegatingScheduledExecutorService(Ljava/lang/Runnable;Lcom/google/firebase/concurrent/DelegatingScheduledFuture$Completer;)V
    .locals 2
    .param p1, "command"    # Ljava/lang/Runnable;
    .param p2, "completer"    # Lcom/google/firebase/concurrent/DelegatingScheduledFuture$Completer;

    .line 153
    iget-object v0, p0, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService;->delegate:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1, p2}, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Runnable;Lcom/google/firebase/concurrent/DelegatingScheduledFuture$Completer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$scheduleAtFixedRate$8$com-google-firebase-concurrent-DelegatingScheduledExecutorService(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;Lcom/google/firebase/concurrent/DelegatingScheduledFuture$Completer;)Ljava/util/concurrent/ScheduledFuture;
    .locals 7
    .param p1, "command"    # Ljava/lang/Runnable;
    .param p2, "initialDelay"    # J
    .param p4, "period"    # J
    .param p6, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p7, "completer"    # Lcom/google/firebase/concurrent/DelegatingScheduledFuture$Completer;

    .line 151
    iget-object v0, p0, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p7}, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService$$ExternalSyntheticLambda5;-><init>(Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService;Ljava/lang/Runnable;Lcom/google/firebase/concurrent/DelegatingScheduledFuture$Completer;)V

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$scheduleWithFixedDelay$10$com-google-firebase-concurrent-DelegatingScheduledExecutorService(Ljava/lang/Runnable;Lcom/google/firebase/concurrent/DelegatingScheduledFuture$Completer;)V
    .locals 2
    .param p1, "command"    # Ljava/lang/Runnable;
    .param p2, "completer"    # Lcom/google/firebase/concurrent/DelegatingScheduledFuture$Completer;

    .line 174
    iget-object v0, p0, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService;->delegate:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p2}, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Runnable;Lcom/google/firebase/concurrent/DelegatingScheduledFuture$Completer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$scheduleWithFixedDelay$11$com-google-firebase-concurrent-DelegatingScheduledExecutorService(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;Lcom/google/firebase/concurrent/DelegatingScheduledFuture$Completer;)Ljava/util/concurrent/ScheduledFuture;
    .locals 7
    .param p1, "command"    # Ljava/lang/Runnable;
    .param p2, "initialDelay"    # J
    .param p4, "delay"    # J
    .param p6, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p7, "completer"    # Lcom/google/firebase/concurrent/DelegatingScheduledFuture$Completer;

    .line 172
    iget-object v0, p0, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1, p7}, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService$$ExternalSyntheticLambda8;-><init>(Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService;Ljava/lang/Runnable;Lcom/google/firebase/concurrent/DelegatingScheduledFuture$Completer;)V

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 8
    .param p1, "command"    # Ljava/lang/Runnable;
    .param p2, "delay"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    .line 109
    new-instance v0, Lcom/google/firebase/concurrent/DelegatingScheduledFuture;

    new-instance v7, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService$$ExternalSyntheticLambda6;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService$$ExternalSyntheticLambda6;-><init>(Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService;Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    invoke-direct {v0, v7}, Lcom/google/firebase/concurrent/DelegatingScheduledFuture;-><init>(Lcom/google/firebase/concurrent/DelegatingScheduledFuture$Resolver;)V

    return-object v0
.end method

.method public schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 8
    .param p2, "delay"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture<",
            "TV;>;"
        }
    .end annotation

    .line 129
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    new-instance v0, Lcom/google/firebase/concurrent/DelegatingScheduledFuture;

    new-instance v7, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService$$ExternalSyntheticLambda0;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService$$ExternalSyntheticLambda0;-><init>(Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService;Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)V

    invoke-direct {v0, v7}, Lcom/google/firebase/concurrent/DelegatingScheduledFuture;-><init>(Lcom/google/firebase/concurrent/DelegatingScheduledFuture$Resolver;)V

    return-object v0
.end method

.method public scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 10
    .param p1, "command"    # Ljava/lang/Runnable;
    .param p2, "initialDelay"    # J
    .param p4, "period"    # J
    .param p6, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    .line 149
    new-instance v0, Lcom/google/firebase/concurrent/DelegatingScheduledFuture;

    new-instance v9, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService$$ExternalSyntheticLambda9;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService$$ExternalSyntheticLambda9;-><init>(Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService;Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)V

    invoke-direct {v0, v9}, Lcom/google/firebase/concurrent/DelegatingScheduledFuture;-><init>(Lcom/google/firebase/concurrent/DelegatingScheduledFuture$Resolver;)V

    return-object v0
.end method

.method public scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 10
    .param p1, "command"    # Ljava/lang/Runnable;
    .param p2, "initialDelay"    # J
    .param p4, "delay"    # J
    .param p6, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    .line 170
    new-instance v0, Lcom/google/firebase/concurrent/DelegatingScheduledFuture;

    new-instance v9, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService$$ExternalSyntheticLambda7;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService$$ExternalSyntheticLambda7;-><init>(Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService;Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)V

    invoke-direct {v0, v9}, Lcom/google/firebase/concurrent/DelegatingScheduledFuture;-><init>(Lcom/google/firebase/concurrent/DelegatingScheduledFuture$Resolver;)V

    return-object v0
.end method

.method public shutdown()V
    .locals 2

    .line 39
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Shutting down is not allowed."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public shutdownNow()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 44
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Shutting down is not allowed."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService;->delegate:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 69
    .local p2, "result":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService;->delegate:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 64
    .local p1, "task":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    iget-object v0, p0, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService;->delegate:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method
