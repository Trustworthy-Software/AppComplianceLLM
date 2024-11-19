.class Lcom/google/firebase/database/core/ThreadPoolEventTarget;
.super Ljava/lang/Object;
.source "ThreadPoolEventTarget.java"

# interfaces
.implements Lcom/google/firebase/database/core/EventTarget;


# instance fields
.field private final executor:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;Lcom/google/firebase/database/core/ThreadInitializer;)V
    .locals 10
    .param p1, "wrappedFactory"    # Ljava/util/concurrent/ThreadFactory;
    .param p2, "threadInitializer"    # Lcom/google/firebase/database/core/ThreadInitializer;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v8, 0x1

    .line 34
    .local v8, "poolSize":I
    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 36
    .local v6, "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0x3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Lcom/google/firebase/database/core/ThreadPoolEventTarget$1;

    invoke-direct {v7, p0, p1, p2}, Lcom/google/firebase/database/core/ThreadPoolEventTarget$1;-><init>(Lcom/google/firebase/database/core/ThreadPoolEventTarget;Ljava/util/concurrent/ThreadFactory;Lcom/google/firebase/database/core/ThreadInitializer;)V

    move-object v0, v9

    move v1, v8

    move v2, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v9, p0, Lcom/google/firebase/database/core/ThreadPoolEventTarget;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 55
    return-void
.end method


# virtual methods
.method public postEvent(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 59
    iget-object v0, p0, Lcom/google/firebase/database/core/ThreadPoolEventTarget;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 60
    return-void
.end method

.method public restart()V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/google/firebase/database/core/ThreadPoolEventTarget;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    .line 80
    return-void
.end method

.method public shutdown()V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/google/firebase/database/core/ThreadPoolEventTarget;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    .line 70
    return-void
.end method
