.class public final Lio/grpc/NameResolverRegistry;
.super Ljava/lang/Object;
.source "NameResolverRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/NameResolverRegistry$NameResolverPriorityAccessor;,
        Lio/grpc/NameResolverRegistry$NameResolverFactory;
    }
.end annotation


# static fields
.field private static final UNKNOWN_SCHEME:Ljava/lang/String; = "unknown"

.field private static instance:Lio/grpc/NameResolverRegistry;

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final allProviders:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lio/grpc/NameResolverProvider;",
            ">;"
        }
    .end annotation
.end field

.field private defaultScheme:Ljava/lang/String;

.field private effectiveProviders:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "Lio/grpc/NameResolverProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final factory:Lio/grpc/NameResolver$Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const-class v0, Lio/grpc/NameResolverRegistry;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/NameResolverRegistry;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lio/grpc/NameResolverRegistry$NameResolverFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/NameResolverRegistry$NameResolverFactory;-><init>(Lio/grpc/NameResolverRegistry;Lio/grpc/NameResolverRegistry$1;)V

    iput-object v0, p0, Lio/grpc/NameResolverRegistry;->factory:Lio/grpc/NameResolver$Factory;

    .line 50
    const-string v0, "unknown"

    iput-object v0, p0, Lio/grpc/NameResolverRegistry;->defaultScheme:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lio/grpc/NameResolverRegistry;->allProviders:Ljava/util/LinkedHashSet;

    .line 57
    nop

    .line 58
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/NameResolverRegistry;->effectiveProviders:Lcom/google/common/collect/ImmutableMap;

    .line 57
    return-void
.end method

.method static synthetic access$200(Lio/grpc/NameResolverRegistry;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lio/grpc/NameResolverRegistry;

    .line 44
    iget-object v0, p0, Lio/grpc/NameResolverRegistry;->defaultScheme:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized addProvider(Lio/grpc/NameResolverProvider;)V
    .locals 2
    .param p1, "provider"    # Lio/grpc/NameResolverProvider;

    monitor-enter p0

    .line 76
    :try_start_0
    invoke-virtual {p1}, Lio/grpc/NameResolverProvider;->isAvailable()Z

    move-result v0

    const-string v1, "isAvailable() returned false"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 77
    iget-object v0, p0, Lio/grpc/NameResolverRegistry;->allProviders:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    monitor-exit p0

    return-void

    .line 75
    .end local p0    # "this":Lio/grpc/NameResolverRegistry;
    .end local p1    # "provider":Lio/grpc/NameResolverProvider;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static declared-synchronized getDefaultRegistry()Lio/grpc/NameResolverRegistry;
    .locals 7

    const-class v0, Lio/grpc/NameResolverRegistry;

    monitor-enter v0

    .line 114
    :try_start_0
    sget-object v1, Lio/grpc/NameResolverRegistry;->instance:Lio/grpc/NameResolverRegistry;

    if-nez v1, :cond_2

    .line 115
    const-class v1, Lio/grpc/NameResolverProvider;

    .line 117
    invoke-static {}, Lio/grpc/NameResolverRegistry;->getHardCodedClasses()Ljava/util/List;

    move-result-object v2

    const-class v3, Lio/grpc/NameResolverProvider;

    .line 118
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    new-instance v4, Lio/grpc/NameResolverRegistry$NameResolverPriorityAccessor;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lio/grpc/NameResolverRegistry$NameResolverPriorityAccessor;-><init>(Lio/grpc/NameResolverRegistry$1;)V

    .line 115
    invoke-static {v1, v2, v3, v4}, Lio/grpc/ServiceProviders;->loadAll(Ljava/lang/Class;Ljava/lang/Iterable;Ljava/lang/ClassLoader;Lio/grpc/ServiceProviders$PriorityAccessor;)Ljava/util/List;

    move-result-object v1

    .line 120
    .local v1, "providerList":Ljava/util/List;, "Ljava/util/List<Lio/grpc/NameResolverProvider;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    sget-object v2, Lio/grpc/NameResolverRegistry;->logger:Ljava/util/logging/Logger;

    const-string v3, "No NameResolverProviders found via ServiceLoader, including for DNS. This is probably due to a broken build. If using ProGuard, check your configuration"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 124
    :cond_0
    new-instance v2, Lio/grpc/NameResolverRegistry;

    invoke-direct {v2}, Lio/grpc/NameResolverRegistry;-><init>()V

    sput-object v2, Lio/grpc/NameResolverRegistry;->instance:Lio/grpc/NameResolverRegistry;

    .line 125
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/NameResolverProvider;

    .line 126
    .local v3, "provider":Lio/grpc/NameResolverProvider;
    sget-object v4, Lio/grpc/NameResolverRegistry;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Service loader found "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 127
    sget-object v4, Lio/grpc/NameResolverRegistry;->instance:Lio/grpc/NameResolverRegistry;

    invoke-direct {v4, v3}, Lio/grpc/NameResolverRegistry;->addProvider(Lio/grpc/NameResolverProvider;)V

    .line 128
    .end local v3    # "provider":Lio/grpc/NameResolverProvider;
    goto :goto_0

    .line 129
    :cond_1
    sget-object v2, Lio/grpc/NameResolverRegistry;->instance:Lio/grpc/NameResolverRegistry;

    invoke-direct {v2}, Lio/grpc/NameResolverRegistry;->refreshProviders()V

    .line 131
    .end local v1    # "providerList":Ljava/util/List;, "Ljava/util/List<Lio/grpc/NameResolverProvider;>;"
    :cond_2
    sget-object v1, Lio/grpc/NameResolverRegistry;->instance:Lio/grpc/NameResolverRegistry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 113
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static getHardCodedClasses()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Class<*>;>;"
    :try_start_0
    const-string v1, "io.grpc.internal.DnsNameResolverProvider"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    goto :goto_0

    .line 155
    :catch_0
    move-exception v1

    .line 156
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    sget-object v2, Lio/grpc/NameResolverRegistry;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "Unable to find DNS NameResolver"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 158
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :goto_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private declared-synchronized refreshProviders()V
    .locals 9

    monitor-enter p0

    .line 91
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 92
    .local v0, "refreshedProviders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/grpc/NameResolverProvider;>;"
    const/high16 v1, -0x80000000

    .line 93
    .local v1, "maxPriority":I
    const-string v2, "unknown"

    .line 95
    .local v2, "refreshedDefaultScheme":Ljava/lang/String;
    iget-object v3, p0, Lio/grpc/NameResolverRegistry;->allProviders:Ljava/util/LinkedHashSet;

    invoke-virtual {v3}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/grpc/NameResolverProvider;

    .line 96
    .local v4, "provider":Lio/grpc/NameResolverProvider;
    invoke-virtual {v4}, Lio/grpc/NameResolverProvider;->getScheme()Ljava/lang/String;

    move-result-object v5

    .line 97
    .local v5, "scheme":Ljava/lang/String;
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/grpc/NameResolverProvider;

    .line 98
    .local v6, "existing":Lio/grpc/NameResolverProvider;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lio/grpc/NameResolverProvider;->priority()I

    move-result v7

    invoke-virtual {v4}, Lio/grpc/NameResolverProvider;->priority()I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 99
    .end local p0    # "this":Lio/grpc/NameResolverRegistry;
    :cond_0
    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :cond_1
    invoke-virtual {v4}, Lio/grpc/NameResolverProvider;->priority()I

    move-result v7

    if-ge v1, v7, :cond_2

    .line 102
    invoke-virtual {v4}, Lio/grpc/NameResolverProvider;->priority()I

    move-result v7

    move v1, v7

    .line 103
    invoke-virtual {v4}, Lio/grpc/NameResolverProvider;->getScheme()Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    .line 105
    .end local v4    # "provider":Lio/grpc/NameResolverProvider;
    .end local v5    # "scheme":Ljava/lang/String;
    .end local v6    # "existing":Lio/grpc/NameResolverProvider;
    :cond_2
    goto :goto_0

    .line 106
    :cond_3
    invoke-static {v0}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/NameResolverRegistry;->effectiveProviders:Lcom/google/common/collect/ImmutableMap;

    .line 107
    iput-object v2, p0, Lio/grpc/NameResolverRegistry;->defaultScheme:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    monitor-exit p0

    return-void

    .line 90
    .end local v0    # "refreshedProviders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/grpc/NameResolverProvider;>;"
    .end local v1    # "maxPriority":I
    .end local v2    # "refreshedDefaultScheme":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public asFactory()Lio/grpc/NameResolver$Factory;
    .locals 1

    .line 144
    iget-object v0, p0, Lio/grpc/NameResolverRegistry;->factory:Lio/grpc/NameResolver$Factory;

    return-object v0
.end method

.method public declared-synchronized deregister(Lio/grpc/NameResolverProvider;)V
    .locals 1
    .param p1, "provider"    # Lio/grpc/NameResolverProvider;

    monitor-enter p0

    .line 86
    :try_start_0
    iget-object v0, p0, Lio/grpc/NameResolverRegistry;->allProviders:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 87
    invoke-direct {p0}, Lio/grpc/NameResolverRegistry;->refreshProviders()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit p0

    return-void

    .line 85
    .end local p0    # "this":Lio/grpc/NameResolverRegistry;
    .end local p1    # "provider":Lio/grpc/NameResolverProvider;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized providers()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/grpc/NameResolverProvider;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 140
    :try_start_0
    iget-object v0, p0, Lio/grpc/NameResolverRegistry;->effectiveProviders:Lcom/google/common/collect/ImmutableMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 140
    .end local p0    # "this":Lio/grpc/NameResolverRegistry;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized register(Lio/grpc/NameResolverProvider;)V
    .locals 0
    .param p1, "provider"    # Lio/grpc/NameResolverProvider;

    monitor-enter p0

    .line 71
    :try_start_0
    invoke-direct {p0, p1}, Lio/grpc/NameResolverRegistry;->addProvider(Lio/grpc/NameResolverProvider;)V

    .line 72
    invoke-direct {p0}, Lio/grpc/NameResolverRegistry;->refreshProviders()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    monitor-exit p0

    return-void

    .line 70
    .end local p0    # "this":Lio/grpc/NameResolverRegistry;
    .end local p1    # "provider":Lio/grpc/NameResolverProvider;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
