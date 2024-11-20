.class public final Lio/grpc/Context$CancellableContext;
.super Lio/grpc/Context;
.source "Context.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/Context;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CancellableContext"
.end annotation


# instance fields
.field private cancellationCause:Ljava/lang/Throwable;

.field private cancelled:Z

.field private final deadline:Lio/grpc/Deadline;

.field private listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/grpc/Context$ExecutableListener;",
            ">;"
        }
    .end annotation
.end field

.field private parentListener:Lio/grpc/Context$CancellationListener;

.field private pendingDeadline:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private final uncancellableSurrogate:Lio/grpc/Context;


# direct methods
.method private constructor <init>(Lio/grpc/Context;)V
    .locals 3
    .param p1, "parent"    # Lio/grpc/Context;

    .line 674
    iget-object v0, p1, Lio/grpc/Context;->keyValueEntries:Lio/grpc/PersistentHashArrayMappedTrie$Node;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lio/grpc/Context;-><init>(Lio/grpc/Context;Lio/grpc/PersistentHashArrayMappedTrie$Node;Lio/grpc/Context$1;)V

    .line 675
    invoke-virtual {p1}, Lio/grpc/Context;->getDeadline()Lio/grpc/Deadline;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/Context$CancellableContext;->deadline:Lio/grpc/Deadline;

    .line 678
    new-instance v0, Lio/grpc/Context;

    iget-object v2, p0, Lio/grpc/Context$CancellableContext;->keyValueEntries:Lio/grpc/PersistentHashArrayMappedTrie$Node;

    invoke-direct {v0, p0, v2, v1}, Lio/grpc/Context;-><init>(Lio/grpc/Context;Lio/grpc/PersistentHashArrayMappedTrie$Node;Lio/grpc/Context$1;)V

    iput-object v0, p0, Lio/grpc/Context$CancellableContext;->uncancellableSurrogate:Lio/grpc/Context;

    .line 679
    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/Context;Lio/grpc/Context$1;)V
    .locals 0
    .param p1, "x0"    # Lio/grpc/Context;
    .param p2, "x1"    # Lio/grpc/Context$1;

    .line 657
    invoke-direct {p0, p1}, Lio/grpc/Context$CancellableContext;-><init>(Lio/grpc/Context;)V

    return-void
.end method

.method private constructor <init>(Lio/grpc/Context;Lio/grpc/Deadline;)V
    .locals 3
    .param p1, "parent"    # Lio/grpc/Context;
    .param p2, "deadline"    # Lio/grpc/Deadline;

    .line 685
    iget-object v0, p1, Lio/grpc/Context;->keyValueEntries:Lio/grpc/PersistentHashArrayMappedTrie$Node;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lio/grpc/Context;-><init>(Lio/grpc/Context;Lio/grpc/PersistentHashArrayMappedTrie$Node;Lio/grpc/Context$1;)V

    .line 686
    iput-object p2, p0, Lio/grpc/Context$CancellableContext;->deadline:Lio/grpc/Deadline;

    .line 687
    new-instance v0, Lio/grpc/Context;

    iget-object v2, p0, Lio/grpc/Context$CancellableContext;->keyValueEntries:Lio/grpc/PersistentHashArrayMappedTrie$Node;

    invoke-direct {v0, p0, v2, v1}, Lio/grpc/Context;-><init>(Lio/grpc/Context;Lio/grpc/PersistentHashArrayMappedTrie$Node;Lio/grpc/Context$1;)V

    iput-object v0, p0, Lio/grpc/Context$CancellableContext;->uncancellableSurrogate:Lio/grpc/Context;

    .line 688
    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/Context;Lio/grpc/Deadline;Lio/grpc/Context$1;)V
    .locals 0
    .param p1, "x0"    # Lio/grpc/Context;
    .param p2, "x1"    # Lio/grpc/Deadline;
    .param p3, "x2"    # Lio/grpc/Context$1;

    .line 657
    invoke-direct {p0, p1, p2}, Lio/grpc/Context$CancellableContext;-><init>(Lio/grpc/Context;Lio/grpc/Deadline;)V

    return-void
.end method

.method static synthetic access$200(Lio/grpc/Context$CancellableContext;Lio/grpc/Deadline;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/Context$CancellableContext;
    .param p1, "x1"    # Lio/grpc/Deadline;
    .param p2, "x2"    # Ljava/util/concurrent/ScheduledExecutorService;

    .line 657
    invoke-direct {p0, p1, p2}, Lio/grpc/Context$CancellableContext;->setUpDeadlineCancellation(Lio/grpc/Deadline;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-void
.end method

.method static synthetic access$300(Lio/grpc/Context$CancellableContext;Lio/grpc/Context$ExecutableListener;)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/Context$CancellableContext;
    .param p1, "x1"    # Lio/grpc/Context$ExecutableListener;

    .line 657
    invoke-direct {p0, p1}, Lio/grpc/Context$CancellableContext;->addListenerInternal(Lio/grpc/Context$ExecutableListener;)V

    return-void
.end method

.method static synthetic access$400(Lio/grpc/Context$CancellableContext;Lio/grpc/Context$CancellationListener;Lio/grpc/Context;)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/Context$CancellableContext;
    .param p1, "x1"    # Lio/grpc/Context$CancellationListener;
    .param p2, "x2"    # Lio/grpc/Context;

    .line 657
    invoke-direct {p0, p1, p2}, Lio/grpc/Context$CancellableContext;->removeListenerInternal(Lio/grpc/Context$CancellationListener;Lio/grpc/Context;)V

    return-void
.end method

.method private addListenerInternal(Lio/grpc/Context$ExecutableListener;)V
    .locals 4
    .param p1, "executableListener"    # Lio/grpc/Context$ExecutableListener;

    .line 731
    monitor-enter p0

    .line 732
    :try_start_0
    invoke-virtual {p0}, Lio/grpc/Context$CancellableContext;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 733
    invoke-virtual {p1}, Lio/grpc/Context$ExecutableListener;->deliver()V

    goto :goto_0

    .line 735
    :cond_0
    iget-object v0, p0, Lio/grpc/Context$CancellableContext;->listeners:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 738
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/grpc/Context$CancellableContext;->listeners:Ljava/util/ArrayList;

    .line 739
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 740
    iget-object v0, p0, Lio/grpc/Context$CancellableContext;->cancellableAncestor:Lio/grpc/Context$CancellableContext;

    if-eqz v0, :cond_2

    .line 741
    new-instance v0, Lio/grpc/Context$CancellableContext$1;

    invoke-direct {v0, p0}, Lio/grpc/Context$CancellableContext$1;-><init>(Lio/grpc/Context$CancellableContext;)V

    iput-object v0, p0, Lio/grpc/Context$CancellableContext;->parentListener:Lio/grpc/Context$CancellationListener;

    .line 748
    iget-object v0, p0, Lio/grpc/Context$CancellableContext;->cancellableAncestor:Lio/grpc/Context$CancellableContext;

    new-instance v1, Lio/grpc/Context$ExecutableListener;

    sget-object v2, Lio/grpc/Context$DirectExecutor;->INSTANCE:Lio/grpc/Context$DirectExecutor;

    iget-object v3, p0, Lio/grpc/Context$CancellableContext;->parentListener:Lio/grpc/Context$CancellationListener;

    invoke-direct {v1, v2, v3, p0}, Lio/grpc/Context$ExecutableListener;-><init>(Ljava/util/concurrent/Executor;Lio/grpc/Context$CancellationListener;Lio/grpc/Context;)V

    invoke-direct {v0, v1}, Lio/grpc/Context$CancellableContext;->addListenerInternal(Lio/grpc/Context$ExecutableListener;)V

    goto :goto_0

    .line 752
    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 755
    :cond_2
    :goto_0
    monitor-exit p0

    .line 756
    return-void

    .line 755
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private notifyAndClearListeners()V
    .locals 5

    .line 845
    monitor-enter p0

    .line 846
    :try_start_0
    iget-object v0, p0, Lio/grpc/Context$CancellableContext;->listeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 847
    monitor-exit p0

    return-void

    .line 849
    :cond_0
    iget-object v1, p0, Lio/grpc/Context$CancellableContext;->parentListener:Lio/grpc/Context$CancellationListener;

    .line 850
    .local v1, "tmpParentListener":Lio/grpc/Context$CancellationListener;
    const/4 v2, 0x0

    iput-object v2, p0, Lio/grpc/Context$CancellableContext;->parentListener:Lio/grpc/Context$CancellationListener;

    .line 851
    nop

    .line 852
    .local v0, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lio/grpc/Context$ExecutableListener;>;"
    iput-object v2, p0, Lio/grpc/Context$CancellableContext;->listeners:Ljava/util/ArrayList;

    .line 853
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 858
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/Context$ExecutableListener;

    .line 859
    .local v3, "tmpListener":Lio/grpc/Context$ExecutableListener;
    invoke-static {v3}, Lio/grpc/Context$ExecutableListener;->access$600(Lio/grpc/Context$ExecutableListener;)Lio/grpc/Context;

    move-result-object v4

    if-ne v4, p0, :cond_1

    .line 860
    invoke-virtual {v3}, Lio/grpc/Context$ExecutableListener;->deliver()V

    .line 862
    .end local v3    # "tmpListener":Lio/grpc/Context$ExecutableListener;
    :cond_1
    goto :goto_0

    .line 863
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/Context$ExecutableListener;

    .line 864
    .restart local v3    # "tmpListener":Lio/grpc/Context$ExecutableListener;
    invoke-static {v3}, Lio/grpc/Context$ExecutableListener;->access$600(Lio/grpc/Context$ExecutableListener;)Lio/grpc/Context;

    move-result-object v4

    if-eq v4, p0, :cond_3

    .line 865
    invoke-virtual {v3}, Lio/grpc/Context$ExecutableListener;->deliver()V

    .line 867
    .end local v3    # "tmpListener":Lio/grpc/Context$ExecutableListener;
    :cond_3
    goto :goto_1

    .line 868
    :cond_4
    iget-object v2, p0, Lio/grpc/Context$CancellableContext;->cancellableAncestor:Lio/grpc/Context$CancellableContext;

    if-eqz v2, :cond_5

    .line 869
    iget-object v2, p0, Lio/grpc/Context$CancellableContext;->cancellableAncestor:Lio/grpc/Context$CancellableContext;

    invoke-virtual {v2, v1}, Lio/grpc/Context$CancellableContext;->removeListener(Lio/grpc/Context$CancellationListener;)V

    .line 871
    :cond_5
    return-void

    .line 853
    .end local v0    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lio/grpc/Context$ExecutableListener;>;"
    .end local v1    # "tmpParentListener":Lio/grpc/Context$CancellationListener;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private removeListenerInternal(Lio/grpc/Context$CancellationListener;Lio/grpc/Context;)V
    .locals 3
    .param p1, "cancellationListener"    # Lio/grpc/Context$CancellationListener;
    .param p2, "context"    # Lio/grpc/Context;

    .line 765
    monitor-enter p0

    .line 766
    :try_start_0
    iget-object v0, p0, Lio/grpc/Context$CancellableContext;->listeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 767
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 768
    iget-object v1, p0, Lio/grpc/Context$CancellableContext;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/Context$ExecutableListener;

    .line 769
    .local v1, "executableListener":Lio/grpc/Context$ExecutableListener;
    iget-object v2, v1, Lio/grpc/Context$ExecutableListener;->listener:Lio/grpc/Context$CancellationListener;

    if-ne v2, p1, :cond_0

    .line 770
    invoke-static {v1}, Lio/grpc/Context$ExecutableListener;->access$600(Lio/grpc/Context$ExecutableListener;)Lio/grpc/Context;

    move-result-object v2

    if-ne v2, p2, :cond_0

    .line 771
    iget-object v2, p0, Lio/grpc/Context$CancellableContext;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 774
    goto :goto_1

    .line 767
    .end local v1    # "executableListener":Lio/grpc/Context$ExecutableListener;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 778
    .end local v0    # "i":I
    :cond_1
    :goto_1
    iget-object v0, p0, Lio/grpc/Context$CancellableContext;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 779
    iget-object v0, p0, Lio/grpc/Context$CancellableContext;->cancellableAncestor:Lio/grpc/Context$CancellableContext;

    if-eqz v0, :cond_2

    .line 780
    iget-object v0, p0, Lio/grpc/Context$CancellableContext;->cancellableAncestor:Lio/grpc/Context$CancellableContext;

    iget-object v1, p0, Lio/grpc/Context$CancellableContext;->parentListener:Lio/grpc/Context$CancellationListener;

    invoke-virtual {v0, v1}, Lio/grpc/Context$CancellableContext;->removeListener(Lio/grpc/Context$CancellationListener;)V

    .line 782
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lio/grpc/Context$CancellableContext;->parentListener:Lio/grpc/Context$CancellationListener;

    .line 783
    iput-object v0, p0, Lio/grpc/Context$CancellableContext;->listeners:Ljava/util/ArrayList;

    .line 786
    :cond_3
    monitor-exit p0

    .line 787
    return-void

    .line 786
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setUpDeadlineCancellation(Lio/grpc/Deadline;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 2
    .param p1, "deadline"    # Lio/grpc/Deadline;
    .param p2, "scheduler"    # Ljava/util/concurrent/ScheduledExecutorService;

    .line 691
    invoke-virtual {p1}, Lio/grpc/Deadline;->isExpired()Z

    move-result v0

    if-nez v0, :cond_0

    .line 703
    monitor-enter p0

    .line 704
    :try_start_0
    new-instance v0, Lio/grpc/Context$CancellableContext$1CancelOnExpiration;

    invoke-direct {v0, p0}, Lio/grpc/Context$CancellableContext$1CancelOnExpiration;-><init>(Lio/grpc/Context$CancellableContext;)V

    invoke-virtual {p1, v0, p2}, Lio/grpc/Deadline;->runOnExpiration(Ljava/lang/Runnable;Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/Context$CancellableContext;->pendingDeadline:Ljava/util/concurrent/ScheduledFuture;

    .line 705
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 708
    :cond_0
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    const-string v1, "context timed out"

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/grpc/Context$CancellableContext;->cancel(Ljava/lang/Throwable;)Z

    .line 710
    :goto_0
    return-void
.end method


# virtual methods
.method public addListener(Lio/grpc/Context$CancellationListener;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "cancellationListener"    # Lio/grpc/Context$CancellationListener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 725
    const-string v0, "cancellationListener"

    invoke-static {p1, v0}, Lio/grpc/Context$CancellableContext;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    const-string v0, "executor"

    invoke-static {p2, v0}, Lio/grpc/Context$CancellableContext;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    new-instance v0, Lio/grpc/Context$ExecutableListener;

    invoke-direct {v0, p2, p1, p0}, Lio/grpc/Context$ExecutableListener;-><init>(Ljava/util/concurrent/Executor;Lio/grpc/Context$CancellationListener;Lio/grpc/Context;)V

    invoke-direct {p0, v0}, Lio/grpc/Context$CancellableContext;->addListenerInternal(Lio/grpc/Context$ExecutableListener;)V

    .line 728
    return-void
.end method

.method public attach()Lio/grpc/Context;
    .locals 1

    .line 714
    iget-object v0, p0, Lio/grpc/Context$CancellableContext;->uncancellableSurrogate:Lio/grpc/Context;

    invoke-virtual {v0}, Lio/grpc/Context;->attach()Lio/grpc/Context;

    move-result-object v0

    return-object v0
.end method

.method public cancel(Ljava/lang/Throwable;)Z
    .locals 3
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 815
    const/4 v0, 0x0

    .line 816
    .local v0, "triggeredCancel":Z
    const/4 v1, 0x0

    .line 817
    .local v1, "localPendingDeadline":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    monitor-enter p0

    .line 818
    :try_start_0
    iget-boolean v2, p0, Lio/grpc/Context$CancellableContext;->cancelled:Z

    if-nez v2, :cond_1

    .line 819
    const/4 v2, 0x1

    iput-boolean v2, p0, Lio/grpc/Context$CancellableContext;->cancelled:Z

    .line 820
    iget-object v2, p0, Lio/grpc/Context$CancellableContext;->pendingDeadline:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v2, :cond_0

    .line 822
    move-object v1, v2

    .line 823
    const/4 v2, 0x0

    iput-object v2, p0, Lio/grpc/Context$CancellableContext;->pendingDeadline:Ljava/util/concurrent/ScheduledFuture;

    .line 825
    :cond_0
    iput-object p1, p0, Lio/grpc/Context$CancellableContext;->cancellationCause:Ljava/lang/Throwable;

    .line 826
    const/4 v0, 0x1

    .line 828
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 829
    if-eqz v1, :cond_2

    .line 830
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 832
    :cond_2
    if-eqz v0, :cond_3

    .line 833
    invoke-direct {p0}, Lio/grpc/Context$CancellableContext;->notifyAndClearListeners()V

    .line 835
    :cond_3
    return v0

    .line 828
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public cancellationCause()Ljava/lang/Throwable;
    .locals 1

    .line 912
    invoke-virtual {p0}, Lio/grpc/Context$CancellableContext;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 913
    iget-object v0, p0, Lio/grpc/Context$CancellableContext;->cancellationCause:Ljava/lang/Throwable;

    return-object v0

    .line 915
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public close()V
    .locals 1

    .line 928
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/grpc/Context$CancellableContext;->cancel(Ljava/lang/Throwable;)Z

    .line 929
    return-void
.end method

.method public detach(Lio/grpc/Context;)V
    .locals 1
    .param p1, "toAttach"    # Lio/grpc/Context;

    .line 719
    iget-object v0, p0, Lio/grpc/Context$CancellableContext;->uncancellableSurrogate:Lio/grpc/Context;

    invoke-virtual {v0, p1}, Lio/grpc/Context;->detach(Lio/grpc/Context;)V

    .line 720
    return-void
.end method

.method public detachAndCancel(Lio/grpc/Context;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "toAttach"    # Lio/grpc/Context;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 888
    :try_start_0
    invoke-virtual {p0, p1}, Lio/grpc/Context$CancellableContext;->detach(Lio/grpc/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 890
    invoke-virtual {p0, p2}, Lio/grpc/Context$CancellableContext;->cancel(Ljava/lang/Throwable;)Z

    .line 891
    nop

    .line 892
    return-void

    .line 890
    :catchall_0
    move-exception v0

    invoke-virtual {p0, p2}, Lio/grpc/Context$CancellableContext;->cancel(Ljava/lang/Throwable;)Z

    throw v0
.end method

.method public getDeadline()Lio/grpc/Deadline;
    .locals 1

    .line 920
    iget-object v0, p0, Lio/grpc/Context$CancellableContext;->deadline:Lio/grpc/Deadline;

    return-object v0
.end method

.method public isCancelled()Z
    .locals 2

    .line 896
    monitor-enter p0

    .line 897
    :try_start_0
    iget-boolean v0, p0, Lio/grpc/Context$CancellableContext;->cancelled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 898
    monitor-exit p0

    return v1

    .line 900
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 903
    invoke-super {p0}, Lio/grpc/Context;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 904
    invoke-super {p0}, Lio/grpc/Context;->cancellationCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/Context$CancellableContext;->cancel(Ljava/lang/Throwable;)Z

    .line 905
    return v1

    .line 907
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 900
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public isCurrent()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 800
    iget-object v0, p0, Lio/grpc/Context$CancellableContext;->uncancellableSurrogate:Lio/grpc/Context;

    invoke-virtual {v0}, Lio/grpc/Context;->isCurrent()Z

    move-result v0

    return v0
.end method

.method listenerCount()I
    .locals 1

    .line 875
    monitor-enter p0

    .line 876
    :try_start_0
    iget-object v0, p0, Lio/grpc/Context$CancellableContext;->listeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    monitor-exit p0

    return v0

    .line 877
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeListener(Lio/grpc/Context$CancellationListener;)V
    .locals 0
    .param p1, "cancellationListener"    # Lio/grpc/Context$CancellationListener;

    .line 760
    invoke-direct {p0, p1, p0}, Lio/grpc/Context$CancellableContext;->removeListenerInternal(Lio/grpc/Context$CancellationListener;Lio/grpc/Context;)V

    .line 761
    return-void
.end method
