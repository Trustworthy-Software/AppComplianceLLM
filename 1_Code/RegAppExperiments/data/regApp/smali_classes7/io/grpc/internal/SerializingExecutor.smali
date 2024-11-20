.class public final Lio/grpc/internal/SerializingExecutor;
.super Ljava/lang/Object;
.source "SerializingExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/SerializingExecutor$SynchronizedAtomicHelper;,
        Lio/grpc/internal/SerializingExecutor$FieldUpdaterAtomicHelper;,
        Lio/grpc/internal/SerializingExecutor$AtomicHelper;
    }
.end annotation


# static fields
.field private static final RUNNING:I = -0x1

.field private static final STOPPED:I

.field private static final atomicHelper:Lio/grpc/internal/SerializingExecutor$AtomicHelper;

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private executor:Ljava/util/concurrent/Executor;

.field private final runQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private volatile runState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    nop

    .line 38
    const-class v0, Lio/grpc/internal/SerializingExecutor;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/SerializingExecutor;->log:Ljava/util/logging/Logger;

    .line 43
    invoke-static {}, Lio/grpc/internal/SerializingExecutor;->getAtomicHelper()Lio/grpc/internal/SerializingExecutor$AtomicHelper;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/SerializingExecutor;->atomicHelper:Lio/grpc/internal/SerializingExecutor$AtomicHelper;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/SerializingExecutor;->runQueue:Ljava/util/Queue;

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lio/grpc/internal/SerializingExecutor;->runState:I

    .line 75
    const-string v0, "\'executor\' must not be null."

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iput-object p1, p0, Lio/grpc/internal/SerializingExecutor;->executor:Ljava/util/concurrent/Executor;

    .line 77
    return-void
.end method

.method static synthetic access$300(Lio/grpc/internal/SerializingExecutor;)I
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/SerializingExecutor;

    .line 36
    iget v0, p0, Lio/grpc/internal/SerializingExecutor;->runState:I

    return v0
.end method

.method static synthetic access$302(Lio/grpc/internal/SerializingExecutor;I)I
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/SerializingExecutor;
    .param p1, "x1"    # I

    .line 36
    iput p1, p0, Lio/grpc/internal/SerializingExecutor;->runState:I

    return p1
.end method

.method private static getAtomicHelper()Lio/grpc/internal/SerializingExecutor$AtomicHelper;
    .locals 5

    .line 48
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lio/grpc/internal/SerializingExecutor$FieldUpdaterAtomicHelper;

    const-class v2, Lio/grpc/internal/SerializingExecutor;

    const-string v3, "runState"

    .line 50
    invoke-static {v2, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lio/grpc/internal/SerializingExecutor$FieldUpdaterAtomicHelper;-><init>(Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;Lio/grpc/internal/SerializingExecutor$1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 54
    .local v0, "helper":Lio/grpc/internal/SerializingExecutor$AtomicHelper;
    goto :goto_0

    .line 51
    .end local v0    # "helper":Lio/grpc/internal/SerializingExecutor$AtomicHelper;
    :catchall_0
    move-exception v1

    .line 52
    .local v1, "t":Ljava/lang/Throwable;
    sget-object v2, Lio/grpc/internal/SerializingExecutor;->log:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v4, "FieldUpdaterAtomicHelper failed"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    new-instance v2, Lio/grpc/internal/SerializingExecutor$SynchronizedAtomicHelper;

    invoke-direct {v2, v0}, Lio/grpc/internal/SerializingExecutor$SynchronizedAtomicHelper;-><init>(Lio/grpc/internal/SerializingExecutor$1;)V

    move-object v0, v2

    .line 55
    .end local v1    # "t":Ljava/lang/Throwable;
    .restart local v0    # "helper":Lio/grpc/internal/SerializingExecutor$AtomicHelper;
    :goto_0
    return-object v0
.end method

.method private schedule(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "removable"    # Ljava/lang/Runnable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 99
    sget-object v0, Lio/grpc/internal/SerializingExecutor;->atomicHelper:Lio/grpc/internal/SerializingExecutor$AtomicHelper;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Lio/grpc/internal/SerializingExecutor$AtomicHelper;->runStateCompareAndSet(Lio/grpc/internal/SerializingExecutor;II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 100
    const/4 v1, 0x0

    .line 102
    .local v1, "success":Z
    :try_start_0
    iget-object v3, p0, Lio/grpc/internal/SerializingExecutor;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {v3, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    const/4 v1, 0x1

    .line 109
    if-nez v1, :cond_3

    .line 110
    if-eqz p1, :cond_0

    .line 118
    iget-object v3, p0, Lio/grpc/internal/SerializingExecutor;->runQueue:Ljava/util/Queue;

    invoke-interface {v3, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 120
    :cond_0
    invoke-virtual {v0, p0, v2}, Lio/grpc/internal/SerializingExecutor$AtomicHelper;->runStateSet(Lio/grpc/internal/SerializingExecutor;I)V

    goto :goto_0

    .line 109
    :catchall_0
    move-exception v0

    if-nez v1, :cond_2

    .line 110
    if-eqz p1, :cond_1

    .line 118
    iget-object v3, p0, Lio/grpc/internal/SerializingExecutor;->runQueue:Ljava/util/Queue;

    invoke-interface {v3, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 120
    :cond_1
    sget-object v3, Lio/grpc/internal/SerializingExecutor;->atomicHelper:Lio/grpc/internal/SerializingExecutor$AtomicHelper;

    invoke-virtual {v3, p0, v2}, Lio/grpc/internal/SerializingExecutor$AtomicHelper;->runStateSet(Lio/grpc/internal/SerializingExecutor;I)V

    :cond_2
    throw v0

    .line 124
    .end local v1    # "success":Z
    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 94
    iget-object v0, p0, Lio/grpc/internal/SerializingExecutor;->runQueue:Ljava/util/Queue;

    const-string v1, "\'r\' must not be null."

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 95
    invoke-direct {p0, p1}, Lio/grpc/internal/SerializingExecutor;->schedule(Ljava/lang/Runnable;)V

    .line 96
    return-void
.end method

.method public run()V
    .locals 8

    .line 130
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/SerializingExecutor;->executor:Ljava/util/concurrent/Executor;

    .line 131
    .local v1, "oldExecutor":Ljava/util/concurrent/Executor;
    :goto_0
    iget-object v2, p0, Lio/grpc/internal/SerializingExecutor;->executor:Ljava/util/concurrent/Executor;

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lio/grpc/internal/SerializingExecutor;->runQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    .local v3, "r":Ljava/lang/Runnable;
    if-eqz v2, :cond_0

    .line 133
    :try_start_1
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    :goto_1
    goto :goto_0

    .line 134
    :catch_0
    move-exception v2

    .line 136
    .local v2, "e":Ljava/lang/RuntimeException;
    :try_start_2
    sget-object v4, Lio/grpc/internal/SerializingExecutor;->log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception while executing runnable "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v2    # "e":Ljava/lang/RuntimeException;
    goto :goto_1

    .line 140
    .end local v1    # "oldExecutor":Ljava/util/concurrent/Executor;
    .end local v3    # "r":Ljava/lang/Runnable;
    :cond_0
    sget-object v1, Lio/grpc/internal/SerializingExecutor;->atomicHelper:Lio/grpc/internal/SerializingExecutor$AtomicHelper;

    invoke-virtual {v1, p0, v0}, Lio/grpc/internal/SerializingExecutor$AtomicHelper;->runStateSet(Lio/grpc/internal/SerializingExecutor;I)V

    .line 141
    nop

    .line 142
    iget-object v0, p0, Lio/grpc/internal/SerializingExecutor;->runQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 144
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/grpc/internal/SerializingExecutor;->schedule(Ljava/lang/Runnable;)V

    .line 146
    :cond_1
    return-void

    .line 140
    :catchall_0
    move-exception v1

    sget-object v2, Lio/grpc/internal/SerializingExecutor;->atomicHelper:Lio/grpc/internal/SerializingExecutor$AtomicHelper;

    invoke-virtual {v2, p0, v0}, Lio/grpc/internal/SerializingExecutor$AtomicHelper;->runStateSet(Lio/grpc/internal/SerializingExecutor;I)V

    throw v1
.end method

.method public setExecutor(Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 84
    const-string v0, "\'executor\' must not be null."

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iput-object p1, p0, Lio/grpc/internal/SerializingExecutor;->executor:Ljava/util/concurrent/Executor;

    .line 86
    return-void
.end method
