.class public Lio/grpc/Context;
.super Ljava/lang/Object;
.source "Context.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/Context$CanIgnoreReturnValue;,
        Lio/grpc/Context$CheckReturnValue;,
        Lio/grpc/Context$DirectExecutor;,
        Lio/grpc/Context$ExecutableListener;,
        Lio/grpc/Context$Storage;,
        Lio/grpc/Context$Key;,
        Lio/grpc/Context$CancellationListener;,
        Lio/grpc/Context$CancellableContext;,
        Lio/grpc/Context$LazyStorage;
    }
.end annotation


# static fields
.field static final CONTEXT_DEPTH_WARN_THRESH:I = 0x3e8

.field public static final ROOT:Lio/grpc/Context;

.field static final log:Ljava/util/logging/Logger;


# instance fields
.field final cancellableAncestor:Lio/grpc/Context$CancellableContext;

.field final generation:I

.field final keyValueEntries:Lio/grpc/PersistentHashArrayMappedTrie$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/PersistentHashArrayMappedTrie$Node<",
            "Lio/grpc/Context$Key<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 88
    const-class v0, Lio/grpc/Context;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/Context;->log:Ljava/util/logging/Logger;

    .line 102
    new-instance v0, Lio/grpc/Context;

    invoke-direct {v0}, Lio/grpc/Context;-><init>()V

    sput-object v0, Lio/grpc/Context;->ROOT:Lio/grpc/Context;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    const/4 v0, 0x0

    iput-object v0, p0, Lio/grpc/Context;->cancellableAncestor:Lio/grpc/Context$CancellableContext;

    .line 210
    iput-object v0, p0, Lio/grpc/Context;->keyValueEntries:Lio/grpc/PersistentHashArrayMappedTrie$Node;

    .line 211
    const/4 v0, 0x0

    iput v0, p0, Lio/grpc/Context;->generation:I

    .line 212
    invoke-static {v0}, Lio/grpc/Context;->validateGeneration(I)V

    .line 213
    return-void
.end method

.method private constructor <init>(Lio/grpc/Context;Lio/grpc/PersistentHashArrayMappedTrie$Node;)V
    .locals 1
    .param p1, "parent"    # Lio/grpc/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/Context;",
            "Lio/grpc/PersistentHashArrayMappedTrie$Node<",
            "Lio/grpc/Context$Key<",
            "*>;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 198
    .local p2, "keyValueEntries":Lio/grpc/PersistentHashArrayMappedTrie$Node;, "Lio/grpc/PersistentHashArrayMappedTrie$Node<Lio/grpc/Context$Key<*>;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    invoke-static {p1}, Lio/grpc/Context;->cancellableAncestor(Lio/grpc/Context;)Lio/grpc/Context$CancellableContext;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/Context;->cancellableAncestor:Lio/grpc/Context$CancellableContext;

    .line 200
    iput-object p2, p0, Lio/grpc/Context;->keyValueEntries:Lio/grpc/PersistentHashArrayMappedTrie$Node;

    .line 201
    iget v0, p1, Lio/grpc/Context;->generation:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/Context;->generation:I

    .line 202
    invoke-static {v0}, Lio/grpc/Context;->validateGeneration(I)V

    .line 203
    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/Context;Lio/grpc/PersistentHashArrayMappedTrie$Node;Lio/grpc/Context$1;)V
    .locals 0
    .param p1, "x0"    # Lio/grpc/Context;
    .param p2, "x1"    # Lio/grpc/PersistentHashArrayMappedTrie$Node;
    .param p3, "x2"    # Lio/grpc/Context$1;

    .line 86
    invoke-direct {p0, p1, p2}, Lio/grpc/Context;-><init>(Lio/grpc/Context;Lio/grpc/PersistentHashArrayMappedTrie$Node;)V

    return-void
.end method

.method private constructor <init>(Lio/grpc/PersistentHashArrayMappedTrie$Node;I)V
    .locals 1
    .param p2, "generation"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/PersistentHashArrayMappedTrie$Node<",
            "Lio/grpc/Context$Key<",
            "*>;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .line 187
    .local p1, "keyValueEntries":Lio/grpc/PersistentHashArrayMappedTrie$Node;, "Lio/grpc/PersistentHashArrayMappedTrie$Node<Lio/grpc/Context$Key<*>;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Lio/grpc/Context;->cancellableAncestor:Lio/grpc/Context$CancellableContext;

    .line 189
    iput-object p1, p0, Lio/grpc/Context;->keyValueEntries:Lio/grpc/PersistentHashArrayMappedTrie$Node;

    .line 190
    iput p2, p0, Lio/grpc/Context;->generation:I

    .line 191
    invoke-static {p2}, Lio/grpc/Context;->validateGeneration(I)V

    .line 192
    return-void
.end method

.method static cancellableAncestor(Lio/grpc/Context;)Lio/grpc/Context$CancellableContext;
    .locals 1
    .param p0, "parent"    # Lio/grpc/Context;

    .line 1110
    instance-of v0, p0, Lio/grpc/Context$CancellableContext;

    if-eqz v0, :cond_0

    .line 1111
    move-object v0, p0

    check-cast v0, Lio/grpc/Context$CancellableContext;

    return-object v0

    .line 1115
    :cond_0
    iget-object v0, p0, Lio/grpc/Context;->cancellableAncestor:Lio/grpc/Context$CancellableContext;

    return-object v0
.end method

.method static checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "errorMessage"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 1085
    .local p0, "reference":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    .line 1088
    return-object p0

    .line 1086
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static current()Lio/grpc/Context;
    .locals 2

    .line 172
    invoke-static {}, Lio/grpc/Context;->storage()Lio/grpc/Context$Storage;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/Context$Storage;->current()Lio/grpc/Context;

    move-result-object v0

    .line 173
    .local v0, "current":Lio/grpc/Context;
    if-nez v0, :cond_0

    .line 174
    sget-object v1, Lio/grpc/Context;->ROOT:Lio/grpc/Context;

    return-object v1

    .line 176
    :cond_0
    return-object v0
.end method

.method public static currentContextExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0, "e"    # Ljava/util/concurrent/Executor;

    .line 627
    new-instance v0, Lio/grpc/Context$1CurrentContextExecutor;

    invoke-direct {v0, p0}, Lio/grpc/Context$1CurrentContextExecutor;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static key(Ljava/lang/String;)Lio/grpc/Context$Key;
    .locals 1
    .param p0, "debugString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lio/grpc/Context$Key<",
            "TT;>;"
        }
    .end annotation

    .line 150
    new-instance v0, Lio/grpc/Context$Key;

    invoke-direct {v0, p0}, Lio/grpc/Context$Key;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static keyWithDefault(Ljava/lang/String;Ljava/lang/Object;)Lio/grpc/Context$Key;
    .locals 1
    .param p0, "debugString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)",
            "Lio/grpc/Context$Key<",
            "TT;>;"
        }
    .end annotation

    .line 161
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    new-instance v0, Lio/grpc/Context$Key;

    invoke-direct {v0, p0, p1}, Lio/grpc/Context$Key;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method static storage()Lio/grpc/Context$Storage;
    .locals 1

    .line 106
    sget-object v0, Lio/grpc/Context$LazyStorage;->storage:Lio/grpc/Context$Storage;

    return-object v0
.end method

.method private static validateGeneration(I)V
    .locals 4
    .param p0, "generation"    # I

    .line 1123
    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_0

    .line 1124
    sget-object v0, Lio/grpc/Context;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    const-string v3, "Context ancestry chain length is abnormally long. This suggests an error in application code. Length exceeded: 1000"

    invoke-virtual {v0, v1, v3, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1131
    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Lio/grpc/Context$CancellationListener;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "cancellationListener"    # Lio/grpc/Context$CancellationListener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 501
    const-string v0, "cancellationListener"

    invoke-static {p1, v0}, Lio/grpc/Context;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    const-string v0, "executor"

    invoke-static {p2, v0}, Lio/grpc/Context;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    iget-object v0, p0, Lio/grpc/Context;->cancellableAncestor:Lio/grpc/Context$CancellableContext;

    if-nez v0, :cond_0

    .line 504
    return-void

    .line 506
    :cond_0
    new-instance v1, Lio/grpc/Context$ExecutableListener;

    invoke-direct {v1, p2, p1, p0}, Lio/grpc/Context$ExecutableListener;-><init>(Ljava/util/concurrent/Executor;Lio/grpc/Context$CancellationListener;Lio/grpc/Context;)V

    invoke-static {v0, v1}, Lio/grpc/Context$CancellableContext;->access$300(Lio/grpc/Context$CancellableContext;Lio/grpc/Context$ExecutableListener;)V

    .line 508
    return-void
.end method

.method public attach()Lio/grpc/Context;
    .locals 2

    .line 427
    invoke-static {}, Lio/grpc/Context;->storage()Lio/grpc/Context$Storage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/Context$Storage;->doAttach(Lio/grpc/Context;)Lio/grpc/Context;

    move-result-object v0

    .line 428
    .local v0, "prev":Lio/grpc/Context;
    if-nez v0, :cond_0

    .line 429
    sget-object v1, Lio/grpc/Context;->ROOT:Lio/grpc/Context;

    return-object v1

    .line 431
    :cond_0
    return-object v0
.end method

.method public call(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 549
    .local p1, "c":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    invoke-virtual {p0}, Lio/grpc/Context;->attach()Lio/grpc/Context;

    move-result-object v0

    .line 551
    .local v0, "previous":Lio/grpc/Context;
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 553
    invoke-virtual {p0, v0}, Lio/grpc/Context;->detach(Lio/grpc/Context;)V

    .line 551
    return-object v1

    .line 553
    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Lio/grpc/Context;->detach(Lio/grpc/Context;)V

    throw v1
.end method

.method public cancellationCause()Ljava/lang/Throwable;
    .locals 1

    .line 478
    iget-object v0, p0, Lio/grpc/Context;->cancellableAncestor:Lio/grpc/Context$CancellableContext;

    if-nez v0, :cond_0

    .line 479
    const/4 v0, 0x0

    return-object v0

    .line 481
    :cond_0
    invoke-virtual {v0}, Lio/grpc/Context$CancellableContext;->cancellationCause()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public detach(Lio/grpc/Context;)V
    .locals 1
    .param p1, "toAttach"    # Lio/grpc/Context;

    .line 449
    const-string v0, "toAttach"

    invoke-static {p1, v0}, Lio/grpc/Context;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    invoke-static {}, Lio/grpc/Context;->storage()Lio/grpc/Context$Storage;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lio/grpc/Context$Storage;->detach(Lio/grpc/Context;Lio/grpc/Context;)V

    .line 451
    return-void
.end method

.method public fixedContextExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p1, "e"    # Ljava/util/concurrent/Executor;

    .line 609
    new-instance v0, Lio/grpc/Context$1FixedContextExecutor;

    invoke-direct {v0, p0, p1}, Lio/grpc/Context$1FixedContextExecutor;-><init>(Lio/grpc/Context;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public fork()Lio/grpc/Context;
    .locals 3

    .line 404
    new-instance v0, Lio/grpc/Context;

    iget-object v1, p0, Lio/grpc/Context;->keyValueEntries:Lio/grpc/PersistentHashArrayMappedTrie$Node;

    iget v2, p0, Lio/grpc/Context;->generation:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/grpc/Context;-><init>(Lio/grpc/PersistentHashArrayMappedTrie$Node;I)V

    return-object v0
.end method

.method public getDeadline()Lio/grpc/Deadline;
    .locals 1

    .line 490
    iget-object v0, p0, Lio/grpc/Context;->cancellableAncestor:Lio/grpc/Context$CancellableContext;

    if-nez v0, :cond_0

    .line 491
    const/4 v0, 0x0

    return-object v0

    .line 493
    :cond_0
    invoke-virtual {v0}, Lio/grpc/Context$CancellableContext;->getDeadline()Lio/grpc/Deadline;

    move-result-object v0

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .line 462
    iget-object v0, p0, Lio/grpc/Context;->cancellableAncestor:Lio/grpc/Context$CancellableContext;

    if-nez v0, :cond_0

    .line 463
    const/4 v0, 0x0

    return v0

    .line 465
    :cond_0
    invoke-virtual {v0}, Lio/grpc/Context$CancellableContext;->isCancelled()Z

    move-result v0

    return v0
.end method

.method isCurrent()Z
    .locals 1

    .line 455
    invoke-static {}, Lio/grpc/Context;->current()Lio/grpc/Context;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method listenerCount()I
    .locals 1

    .line 523
    iget-object v0, p0, Lio/grpc/Context;->cancellableAncestor:Lio/grpc/Context$CancellableContext;

    if-nez v0, :cond_0

    .line 524
    const/4 v0, 0x0

    return v0

    .line 526
    :cond_0
    invoke-virtual {v0}, Lio/grpc/Context$CancellableContext;->listenerCount()I

    move-result v0

    return v0
.end method

.method public removeListener(Lio/grpc/Context$CancellationListener;)V
    .locals 1
    .param p1, "cancellationListener"    # Lio/grpc/Context$CancellationListener;

    .line 514
    iget-object v0, p0, Lio/grpc/Context;->cancellableAncestor:Lio/grpc/Context$CancellableContext;

    if-nez v0, :cond_0

    .line 515
    return-void

    .line 517
    :cond_0
    invoke-static {v0, p1, p0}, Lio/grpc/Context$CancellableContext;->access$400(Lio/grpc/Context$CancellableContext;Lio/grpc/Context$CancellationListener;Lio/grpc/Context;)V

    .line 518
    return-void
.end method

.method public run(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 534
    invoke-virtual {p0}, Lio/grpc/Context;->attach()Lio/grpc/Context;

    move-result-object v0

    .line 536
    .local v0, "previous":Lio/grpc/Context;
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 538
    invoke-virtual {p0, v0}, Lio/grpc/Context;->detach(Lio/grpc/Context;)V

    .line 539
    nop

    .line 540
    return-void

    .line 538
    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Lio/grpc/Context;->detach(Lio/grpc/Context;)V

    throw v1
.end method

.method public withCancellation()Lio/grpc/Context$CancellableContext;
    .locals 2

    .line 240
    new-instance v0, Lio/grpc/Context$CancellableContext;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/Context$CancellableContext;-><init>(Lio/grpc/Context;Lio/grpc/Context$1;)V

    return-object v0
.end method

.method public withDeadline(Lio/grpc/Deadline;Ljava/util/concurrent/ScheduledExecutorService;)Lio/grpc/Context$CancellableContext;
    .locals 4
    .param p1, "newDeadline"    # Lio/grpc/Deadline;
    .param p2, "scheduler"    # Ljava/util/concurrent/ScheduledExecutorService;

    .line 299
    const-string v0, "deadline"

    invoke-static {p1, v0}, Lio/grpc/Context;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    const-string v0, "scheduler"

    invoke-static {p2, v0}, Lio/grpc/Context;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    invoke-virtual {p0}, Lio/grpc/Context;->getDeadline()Lio/grpc/Deadline;

    move-result-object v0

    .line 302
    .local v0, "existingDeadline":Lio/grpc/Deadline;
    const/4 v1, 0x1

    .line 303
    .local v1, "scheduleDeadlineCancellation":Z
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lio/grpc/Deadline;->compareTo(Lio/grpc/Deadline;)I

    move-result v2

    if-gtz v2, :cond_0

    .line 305
    move-object p1, v0

    .line 306
    const/4 v1, 0x0

    .line 308
    :cond_0
    new-instance v2, Lio/grpc/Context$CancellableContext;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lio/grpc/Context$CancellableContext;-><init>(Lio/grpc/Context;Lio/grpc/Deadline;Lio/grpc/Context$1;)V

    .line 309
    .local v2, "newCtx":Lio/grpc/Context$CancellableContext;
    if-eqz v1, :cond_1

    .line 310
    invoke-static {v2, p1, p2}, Lio/grpc/Context$CancellableContext;->access$200(Lio/grpc/Context$CancellableContext;Lio/grpc/Deadline;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 312
    :cond_1
    return-object v2
.end method

.method public withDeadlineAfter(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lio/grpc/Context$CancellableContext;
    .locals 1
    .param p1, "duration"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Ljava/util/concurrent/ScheduledExecutorService;

    .line 270
    invoke-static {p1, p2, p3}, Lio/grpc/Deadline;->after(JLjava/util/concurrent/TimeUnit;)Lio/grpc/Deadline;

    move-result-object v0

    invoke-virtual {p0, v0, p4}, Lio/grpc/Context;->withDeadline(Lio/grpc/Deadline;Ljava/util/concurrent/ScheduledExecutorService;)Lio/grpc/Context$CancellableContext;

    move-result-object v0

    return-object v0
.end method

.method public withValue(Lio/grpc/Context$Key;Ljava/lang/Object;)Lio/grpc/Context;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/Context$Key<",
            "TV;>;TV;)",
            "Lio/grpc/Context;"
        }
    .end annotation

    .line 343
    .local p1, "k1":Lio/grpc/Context$Key;, "Lio/grpc/Context$Key<TV;>;"
    .local p2, "v1":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lio/grpc/Context;->keyValueEntries:Lio/grpc/PersistentHashArrayMappedTrie$Node;

    .line 344
    invoke-static {v0, p1, p2}, Lio/grpc/PersistentHashArrayMappedTrie;->put(Lio/grpc/PersistentHashArrayMappedTrie$Node;Ljava/lang/Object;Ljava/lang/Object;)Lio/grpc/PersistentHashArrayMappedTrie$Node;

    move-result-object v0

    .line 345
    .local v0, "newKeyValueEntries":Lio/grpc/PersistentHashArrayMappedTrie$Node;, "Lio/grpc/PersistentHashArrayMappedTrie$Node<Lio/grpc/Context$Key<*>;Ljava/lang/Object;>;"
    new-instance v1, Lio/grpc/Context;

    invoke-direct {v1, p0, v0}, Lio/grpc/Context;-><init>(Lio/grpc/Context;Lio/grpc/PersistentHashArrayMappedTrie$Node;)V

    return-object v1
.end method

.method public withValues(Lio/grpc/Context$Key;Ljava/lang/Object;Lio/grpc/Context$Key;Ljava/lang/Object;)Lio/grpc/Context;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/Context$Key<",
            "TV1;>;TV1;",
            "Lio/grpc/Context$Key<",
            "TV2;>;TV2;)",
            "Lio/grpc/Context;"
        }
    .end annotation

    .line 353
    .local p1, "k1":Lio/grpc/Context$Key;, "Lio/grpc/Context$Key<TV1;>;"
    .local p2, "v1":Ljava/lang/Object;, "TV1;"
    .local p3, "k2":Lio/grpc/Context$Key;, "Lio/grpc/Context$Key<TV2;>;"
    .local p4, "v2":Ljava/lang/Object;, "TV2;"
    iget-object v0, p0, Lio/grpc/Context;->keyValueEntries:Lio/grpc/PersistentHashArrayMappedTrie$Node;

    .line 354
    invoke-static {v0, p1, p2}, Lio/grpc/PersistentHashArrayMappedTrie;->put(Lio/grpc/PersistentHashArrayMappedTrie$Node;Ljava/lang/Object;Ljava/lang/Object;)Lio/grpc/PersistentHashArrayMappedTrie$Node;

    move-result-object v0

    .line 355
    .local v0, "newKeyValueEntries":Lio/grpc/PersistentHashArrayMappedTrie$Node;, "Lio/grpc/PersistentHashArrayMappedTrie$Node<Lio/grpc/Context$Key<*>;Ljava/lang/Object;>;"
    invoke-static {v0, p3, p4}, Lio/grpc/PersistentHashArrayMappedTrie;->put(Lio/grpc/PersistentHashArrayMappedTrie$Node;Ljava/lang/Object;Ljava/lang/Object;)Lio/grpc/PersistentHashArrayMappedTrie$Node;

    move-result-object v0

    .line 356
    new-instance v1, Lio/grpc/Context;

    invoke-direct {v1, p0, v0}, Lio/grpc/Context;-><init>(Lio/grpc/Context;Lio/grpc/PersistentHashArrayMappedTrie$Node;)V

    return-object v1
.end method

.method public withValues(Lio/grpc/Context$Key;Ljava/lang/Object;Lio/grpc/Context$Key;Ljava/lang/Object;Lio/grpc/Context$Key;Ljava/lang/Object;)Lio/grpc/Context;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            "V3:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/Context$Key<",
            "TV1;>;TV1;",
            "Lio/grpc/Context$Key<",
            "TV2;>;TV2;",
            "Lio/grpc/Context$Key<",
            "TV3;>;TV3;)",
            "Lio/grpc/Context;"
        }
    .end annotation

    .line 364
    .local p1, "k1":Lio/grpc/Context$Key;, "Lio/grpc/Context$Key<TV1;>;"
    .local p2, "v1":Ljava/lang/Object;, "TV1;"
    .local p3, "k2":Lio/grpc/Context$Key;, "Lio/grpc/Context$Key<TV2;>;"
    .local p4, "v2":Ljava/lang/Object;, "TV2;"
    .local p5, "k3":Lio/grpc/Context$Key;, "Lio/grpc/Context$Key<TV3;>;"
    .local p6, "v3":Ljava/lang/Object;, "TV3;"
    iget-object v0, p0, Lio/grpc/Context;->keyValueEntries:Lio/grpc/PersistentHashArrayMappedTrie$Node;

    .line 365
    invoke-static {v0, p1, p2}, Lio/grpc/PersistentHashArrayMappedTrie;->put(Lio/grpc/PersistentHashArrayMappedTrie$Node;Ljava/lang/Object;Ljava/lang/Object;)Lio/grpc/PersistentHashArrayMappedTrie$Node;

    move-result-object v0

    .line 366
    .local v0, "newKeyValueEntries":Lio/grpc/PersistentHashArrayMappedTrie$Node;, "Lio/grpc/PersistentHashArrayMappedTrie$Node<Lio/grpc/Context$Key<*>;Ljava/lang/Object;>;"
    invoke-static {v0, p3, p4}, Lio/grpc/PersistentHashArrayMappedTrie;->put(Lio/grpc/PersistentHashArrayMappedTrie$Node;Ljava/lang/Object;Ljava/lang/Object;)Lio/grpc/PersistentHashArrayMappedTrie$Node;

    move-result-object v0

    .line 367
    invoke-static {v0, p5, p6}, Lio/grpc/PersistentHashArrayMappedTrie;->put(Lio/grpc/PersistentHashArrayMappedTrie$Node;Ljava/lang/Object;Ljava/lang/Object;)Lio/grpc/PersistentHashArrayMappedTrie$Node;

    move-result-object v0

    .line 368
    new-instance v1, Lio/grpc/Context;

    invoke-direct {v1, p0, v0}, Lio/grpc/Context;-><init>(Lio/grpc/Context;Lio/grpc/PersistentHashArrayMappedTrie$Node;)V

    return-object v1
.end method

.method public withValues(Lio/grpc/Context$Key;Ljava/lang/Object;Lio/grpc/Context$Key;Ljava/lang/Object;Lio/grpc/Context$Key;Ljava/lang/Object;Lio/grpc/Context$Key;Ljava/lang/Object;)Lio/grpc/Context;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            "V3:",
            "Ljava/lang/Object;",
            "V4:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/Context$Key<",
            "TV1;>;TV1;",
            "Lio/grpc/Context$Key<",
            "TV2;>;TV2;",
            "Lio/grpc/Context$Key<",
            "TV3;>;TV3;",
            "Lio/grpc/Context$Key<",
            "TV4;>;TV4;)",
            "Lio/grpc/Context;"
        }
    .end annotation

    .line 391
    .local p1, "k1":Lio/grpc/Context$Key;, "Lio/grpc/Context$Key<TV1;>;"
    .local p2, "v1":Ljava/lang/Object;, "TV1;"
    .local p3, "k2":Lio/grpc/Context$Key;, "Lio/grpc/Context$Key<TV2;>;"
    .local p4, "v2":Ljava/lang/Object;, "TV2;"
    .local p5, "k3":Lio/grpc/Context$Key;, "Lio/grpc/Context$Key<TV3;>;"
    .local p6, "v3":Ljava/lang/Object;, "TV3;"
    .local p7, "k4":Lio/grpc/Context$Key;, "Lio/grpc/Context$Key<TV4;>;"
    .local p8, "v4":Ljava/lang/Object;, "TV4;"
    iget-object v0, p0, Lio/grpc/Context;->keyValueEntries:Lio/grpc/PersistentHashArrayMappedTrie$Node;

    .line 392
    invoke-static {v0, p1, p2}, Lio/grpc/PersistentHashArrayMappedTrie;->put(Lio/grpc/PersistentHashArrayMappedTrie$Node;Ljava/lang/Object;Ljava/lang/Object;)Lio/grpc/PersistentHashArrayMappedTrie$Node;

    move-result-object v0

    .line 393
    .local v0, "newKeyValueEntries":Lio/grpc/PersistentHashArrayMappedTrie$Node;, "Lio/grpc/PersistentHashArrayMappedTrie$Node<Lio/grpc/Context$Key<*>;Ljava/lang/Object;>;"
    invoke-static {v0, p3, p4}, Lio/grpc/PersistentHashArrayMappedTrie;->put(Lio/grpc/PersistentHashArrayMappedTrie$Node;Ljava/lang/Object;Ljava/lang/Object;)Lio/grpc/PersistentHashArrayMappedTrie$Node;

    move-result-object v0

    .line 394
    invoke-static {v0, p5, p6}, Lio/grpc/PersistentHashArrayMappedTrie;->put(Lio/grpc/PersistentHashArrayMappedTrie$Node;Ljava/lang/Object;Ljava/lang/Object;)Lio/grpc/PersistentHashArrayMappedTrie$Node;

    move-result-object v0

    .line 395
    invoke-static {v0, p7, p8}, Lio/grpc/PersistentHashArrayMappedTrie;->put(Lio/grpc/PersistentHashArrayMappedTrie$Node;Ljava/lang/Object;Ljava/lang/Object;)Lio/grpc/PersistentHashArrayMappedTrie$Node;

    move-result-object v0

    .line 396
    new-instance v1, Lio/grpc/Context;

    invoke-direct {v1, p0, v0}, Lio/grpc/Context;-><init>(Lio/grpc/Context;Lio/grpc/PersistentHashArrayMappedTrie$Node;)V

    return-object v1
.end method

.method public wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 561
    new-instance v0, Lio/grpc/Context$1;

    invoke-direct {v0, p0, p1}, Lio/grpc/Context$1;-><init>(Lio/grpc/Context;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public wrap(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Callable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TC;>;)",
            "Ljava/util/concurrent/Callable<",
            "TC;>;"
        }
    .end annotation

    .line 578
    .local p1, "c":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TC;>;"
    new-instance v0, Lio/grpc/Context$2;

    invoke-direct {v0, p0, p1}, Lio/grpc/Context$2;-><init>(Lio/grpc/Context;Ljava/util/concurrent/Callable;)V

    return-object v0
.end method
