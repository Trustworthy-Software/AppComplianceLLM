.class final Lio/grpc/internal/ManagedChannelOrphanWrapper$ManagedChannelReference;
.super Ljava/lang/ref/WeakReference;
.source "ManagedChannelOrphanWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/ManagedChannelOrphanWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ManagedChannelReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "Lio/grpc/internal/ManagedChannelOrphanWrapper;",
        ">;"
    }
.end annotation


# static fields
.field private static final ALLOCATION_SITE_PROPERTY_NAME:Ljava/lang/String; = "io.grpc.ManagedChannel.enableAllocationTracking"

.field private static final ENABLE_ALLOCATION_TRACKING:Z

.field private static final missingCallSite:Ljava/lang/RuntimeException;


# instance fields
.field private final allocationSite:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "Ljava/lang/RuntimeException;",
            ">;"
        }
    .end annotation
.end field

.field private final channelStr:Ljava/lang/String;

.field private final refqueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Lio/grpc/internal/ManagedChannelOrphanWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final refs:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lio/grpc/internal/ManagedChannelOrphanWrapper$ManagedChannelReference;",
            "Lio/grpc/internal/ManagedChannelOrphanWrapper$ManagedChannelReference;",
            ">;"
        }
    .end annotation
.end field

.field private final shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 81
    nop

    .line 82
    const-string v0, "io.grpc.ManagedChannel.enableAllocationTracking"

    const-string v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lio/grpc/internal/ManagedChannelOrphanWrapper$ManagedChannelReference;->ENABLE_ALLOCATION_TRACKING:Z

    .line 83
    invoke-static {}, Lio/grpc/internal/ManagedChannelOrphanWrapper$ManagedChannelReference;->missingCallSite()Ljava/lang/RuntimeException;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/ManagedChannelOrphanWrapper$ManagedChannelReference;->missingCallSite:Ljava/lang/RuntimeException;

    return-void
.end method

.method constructor <init>(Lio/grpc/internal/ManagedChannelOrphanWrapper;Lio/grpc/ManagedChannel;Ljava/lang/ref/ReferenceQueue;Ljava/util/concurrent/ConcurrentMap;)V
    .locals 3
    .param p1, "orphanable"    # Lio/grpc/internal/ManagedChannelOrphanWrapper;
    .param p2, "channel"    # Lio/grpc/ManagedChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/internal/ManagedChannelOrphanWrapper;",
            "Lio/grpc/ManagedChannel;",
            "Ljava/lang/ref/ReferenceQueue<",
            "Lio/grpc/internal/ManagedChannelOrphanWrapper;",
            ">;",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lio/grpc/internal/ManagedChannelOrphanWrapper$ManagedChannelReference;",
            "Lio/grpc/internal/ManagedChannelOrphanWrapper$ManagedChannelReference;",
            ">;)V"
        }
    .end annotation

    .line 97
    .local p3, "refqueue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<Lio/grpc/internal/ManagedChannelOrphanWrapper;>;"
    .local p4, "refs":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Lio/grpc/internal/ManagedChannelOrphanWrapper$ManagedChannelReference;Lio/grpc/internal/ManagedChannelOrphanWrapper$ManagedChannelReference;>;"
    invoke-direct {p0, p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 90
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelOrphanWrapper$ManagedChannelReference;->shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 98
    new-instance v0, Ljava/lang/ref/SoftReference;

    .line 99
    sget-boolean v1, Lio/grpc/internal/ManagedChannelOrphanWrapper$ManagedChannelReference;->ENABLE_ALLOCATION_TRACKING:Z

    if-eqz v1, :cond_0

    .line 100
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ManagedChannel allocation site"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :cond_0
    sget-object v1, Lio/grpc/internal/ManagedChannelOrphanWrapper$ManagedChannelReference;->missingCallSite:Ljava/lang/RuntimeException;

    :goto_0
    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelOrphanWrapper$ManagedChannelReference;->allocationSite:Ljava/lang/ref/Reference;

    .line 102
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelOrphanWrapper$ManagedChannelReference;->channelStr:Ljava/lang/String;

    .line 103
    iput-object p3, p0, Lio/grpc/internal/ManagedChannelOrphanWrapper$ManagedChannelReference;->refqueue:Ljava/lang/ref/ReferenceQueue;

    .line 104
    iput-object p4, p0, Lio/grpc/internal/ManagedChannelOrphanWrapper$ManagedChannelReference;->refs:Ljava/util/concurrent/ConcurrentMap;

    .line 105
    invoke-interface {p4, p0, p0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-static {p3}, Lio/grpc/internal/ManagedChannelOrphanWrapper$ManagedChannelReference;->cleanQueue(Ljava/lang/ref/ReferenceQueue;)I

    .line 107
    return-void
.end method

.method static synthetic access$000(Lio/grpc/internal/ManagedChannelOrphanWrapper$ManagedChannelReference;)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelOrphanWrapper$ManagedChannelReference;

    .line 76
    invoke-direct {p0}, Lio/grpc/internal/ManagedChannelOrphanWrapper$ManagedChannelReference;->clearSafely()V

    return-void
.end method

.method static cleanQueue(Ljava/lang/ref/ReferenceQueue;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "Lio/grpc/internal/ManagedChannelOrphanWrapper;",
            ">;)I"
        }
    .end annotation

    .line 149
    .local p0, "refqueue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<Lio/grpc/internal/ManagedChannelOrphanWrapper;>;"
    const/4 v0, 0x0

    .line 150
    .local v0, "orphanedChannels":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    check-cast v1, Lio/grpc/internal/ManagedChannelOrphanWrapper$ManagedChannelReference;

    move-object v2, v1

    .local v2, "ref":Lio/grpc/internal/ManagedChannelOrphanWrapper$ManagedChannelReference;
    if-eqz v1, :cond_1

    .line 151
    iget-object v1, v2, Lio/grpc/internal/ManagedChannelOrphanWrapper$ManagedChannelReference;->allocationSite:Ljava/lang/ref/Reference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/RuntimeException;

    .line 152
    .local v1, "maybeAllocationSite":Ljava/lang/RuntimeException;
    invoke-direct {v2}, Lio/grpc/internal/ManagedChannelOrphanWrapper$ManagedChannelReference;->clearInternal()V

    .line 153
    iget-object v3, v2, Lio/grpc/internal/ManagedChannelOrphanWrapper$ManagedChannelReference;->shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_0

    .line 154
    add-int/lit8 v0, v0, 0x1

    .line 155
    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 156
    .local v3, "level":Ljava/util/logging/Level;
    invoke-static {}, Lio/grpc/internal/ManagedChannelOrphanWrapper;->access$100()Ljava/util/logging/Logger;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 157
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "*~*~*~ Previous channel {0} was not shutdown properly!!! ~*~*~*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 159
    const-string v5, "line.separator"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "    Make sure to call shutdown()/shutdownNow() and wait until awaitTermination() returns true."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 162
    .local v4, "fmt":Ljava/lang/String;
    new-instance v5, Ljava/util/logging/LogRecord;

    invoke-direct {v5, v3, v4}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 163
    .local v5, "lr":Ljava/util/logging/LogRecord;
    invoke-static {}, Lio/grpc/internal/ManagedChannelOrphanWrapper;->access$100()Ljava/util/logging/Logger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/logging/Logger;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 164
    iget-object v6, v2, Lio/grpc/internal/ManagedChannelOrphanWrapper$ManagedChannelReference;->channelStr:Ljava/lang/String;

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    .line 165
    invoke-virtual {v5, v1}, Ljava/util/logging/LogRecord;->setThrown(Ljava/lang/Throwable;)V

    .line 166
    invoke-static {}, Lio/grpc/internal/ManagedChannelOrphanWrapper;->access$100()Ljava/util/logging/Logger;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    .line 169
    .end local v1    # "maybeAllocationSite":Ljava/lang/RuntimeException;
    .end local v3    # "level":Ljava/util/logging/Level;
    .end local v4    # "fmt":Ljava/lang/String;
    .end local v5    # "lr":Ljava/util/logging/LogRecord;
    :cond_0
    goto :goto_0

    .line 170
    :cond_1
    return v0
.end method

.method private clearInternal()V
    .locals 1

    .line 133
    invoke-super {p0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 134
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelOrphanWrapper$ManagedChannelReference;->refs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelOrphanWrapper$ManagedChannelReference;->allocationSite:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 136
    return-void
.end method

.method private clearSafely()V
    .locals 2

    .line 126
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelOrphanWrapper$ManagedChannelReference;->shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    invoke-virtual {p0}, Lio/grpc/internal/ManagedChannelOrphanWrapper$ManagedChannelReference;->clear()V

    .line 129
    :cond_0
    return-void
.end method

.method private static missingCallSite()Ljava/lang/RuntimeException;
    .locals 2

    .line 139
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ManagedChannel allocation site not recorded.  Set -Dio.grpc.ManagedChannel.enableAllocationTracking=true to enable it"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 142
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/StackTraceElement;

    invoke-virtual {v0, v1}, Ljava/lang/RuntimeException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 143
    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 116
    invoke-direct {p0}, Lio/grpc/internal/ManagedChannelOrphanWrapper$ManagedChannelReference;->clearInternal()V

    .line 119
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelOrphanWrapper$ManagedChannelReference;->refqueue:Ljava/lang/ref/ReferenceQueue;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelOrphanWrapper$ManagedChannelReference;->cleanQueue(Ljava/lang/ref/ReferenceQueue;)I

    .line 120
    return-void
.end method
