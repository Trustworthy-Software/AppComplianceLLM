.class public final Lio/grpc/ManagedChannelRegistry;
.super Ljava/lang/Object;
.source "ManagedChannelRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/ManagedChannelRegistry$ProviderNotFoundException;,
        Lio/grpc/ManagedChannelRegistry$ManagedChannelPriorityAccessor;
    }
.end annotation


# static fields
.field private static instance:Lio/grpc/ManagedChannelRegistry;

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final allProviders:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lio/grpc/ManagedChannelProvider;",
            ">;"
        }
    .end annotation
.end field

.field private effectiveProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/ManagedChannelProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const-class v0, Lio/grpc/ManagedChannelRegistry;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/ManagedChannelRegistry;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lio/grpc/ManagedChannelRegistry;->allProviders:Ljava/util/LinkedHashSet;

    .line 51
    nop

    .line 52
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/ManagedChannelRegistry;->effectiveProviders:Ljava/util/List;

    .line 51
    return-void
.end method

.method private declared-synchronized addProvider(Lio/grpc/ManagedChannelProvider;)V
    .locals 2
    .param p1, "provider"    # Lio/grpc/ManagedChannelProvider;

    monitor-enter p0

    .line 69
    :try_start_0
    invoke-virtual {p1}, Lio/grpc/ManagedChannelProvider;->isAvailable()Z

    move-result v0

    const-string v1, "isAvailable() returned false"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lio/grpc/ManagedChannelRegistry;->allProviders:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit p0

    return-void

    .line 68
    .end local p0    # "this":Lio/grpc/ManagedChannelRegistry;
    .end local p1    # "provider":Lio/grpc/ManagedChannelProvider;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static declared-synchronized getDefaultRegistry()Lio/grpc/ManagedChannelRegistry;
    .locals 7

    const-class v0, Lio/grpc/ManagedChannelRegistry;

    monitor-enter v0

    .line 100
    :try_start_0
    sget-object v1, Lio/grpc/ManagedChannelRegistry;->instance:Lio/grpc/ManagedChannelRegistry;

    if-nez v1, :cond_1

    .line 101
    const-class v1, Lio/grpc/ManagedChannelProvider;

    .line 103
    invoke-static {}, Lio/grpc/ManagedChannelRegistry;->getHardCodedClasses()Ljava/util/List;

    move-result-object v2

    const-class v3, Lio/grpc/ManagedChannelProvider;

    .line 104
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    new-instance v4, Lio/grpc/ManagedChannelRegistry$ManagedChannelPriorityAccessor;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lio/grpc/ManagedChannelRegistry$ManagedChannelPriorityAccessor;-><init>(Lio/grpc/ManagedChannelRegistry$1;)V

    .line 101
    invoke-static {v1, v2, v3, v4}, Lio/grpc/ServiceProviders;->loadAll(Ljava/lang/Class;Ljava/lang/Iterable;Ljava/lang/ClassLoader;Lio/grpc/ServiceProviders$PriorityAccessor;)Ljava/util/List;

    move-result-object v1

    .line 106
    .local v1, "providerList":Ljava/util/List;, "Ljava/util/List<Lio/grpc/ManagedChannelProvider;>;"
    new-instance v2, Lio/grpc/ManagedChannelRegistry;

    invoke-direct {v2}, Lio/grpc/ManagedChannelRegistry;-><init>()V

    sput-object v2, Lio/grpc/ManagedChannelRegistry;->instance:Lio/grpc/ManagedChannelRegistry;

    .line 107
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/ManagedChannelProvider;

    .line 108
    .local v3, "provider":Lio/grpc/ManagedChannelProvider;
    sget-object v4, Lio/grpc/ManagedChannelRegistry;->logger:Ljava/util/logging/Logger;

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

    .line 109
    sget-object v4, Lio/grpc/ManagedChannelRegistry;->instance:Lio/grpc/ManagedChannelRegistry;

    invoke-direct {v4, v3}, Lio/grpc/ManagedChannelRegistry;->addProvider(Lio/grpc/ManagedChannelProvider;)V

    .line 110
    .end local v3    # "provider":Lio/grpc/ManagedChannelProvider;
    goto :goto_0

    .line 111
    :cond_0
    sget-object v2, Lio/grpc/ManagedChannelRegistry;->instance:Lio/grpc/ManagedChannelRegistry;

    invoke-direct {v2}, Lio/grpc/ManagedChannelRegistry;->refreshProviders()V

    .line 113
    .end local v1    # "providerList":Ljava/util/List;, "Ljava/util/List<Lio/grpc/ManagedChannelProvider;>;"
    :cond_1
    sget-object v1, Lio/grpc/ManagedChannelRegistry;->instance:Lio/grpc/ManagedChannelRegistry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 99
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

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    :try_start_0
    const-string v1, "io.grpc.okhttp.OkHttpChannelProvider"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    goto :goto_0

    .line 138
    :catch_0
    move-exception v1

    .line 139
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    sget-object v2, Lio/grpc/ManagedChannelRegistry;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "Unable to find OkHttpChannelProvider"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 142
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :goto_0
    :try_start_1
    const-string v1, "io.grpc.netty.NettyChannelProvider"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 145
    goto :goto_1

    .line 143
    :catch_1
    move-exception v1

    .line 144
    .restart local v1    # "e":Ljava/lang/ClassNotFoundException;
    sget-object v2, Lio/grpc/ManagedChannelRegistry;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "Unable to find NettyChannelProvider"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 147
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :goto_1
    :try_start_2
    const-string v1, "io.grpc.netty.UdsNettyChannelProvider"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 150
    goto :goto_2

    .line 148
    :catch_2
    move-exception v1

    .line 149
    .restart local v1    # "e":Ljava/lang/ClassNotFoundException;
    sget-object v2, Lio/grpc/ManagedChannelRegistry;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "Unable to find UdsNettyChannelProvider"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 151
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :goto_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private declared-synchronized refreshProviders()V
    .locals 2

    monitor-enter p0

    .line 84
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/grpc/ManagedChannelRegistry;->allProviders:Ljava/util/LinkedHashSet;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 87
    .local v0, "providers":Ljava/util/List;, "Ljava/util/List<Lio/grpc/ManagedChannelProvider;>;"
    new-instance v1, Lio/grpc/ManagedChannelRegistry$1;

    invoke-direct {v1, p0}, Lio/grpc/ManagedChannelRegistry$1;-><init>(Lio/grpc/ManagedChannelRegistry;)V

    invoke-static {v1}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 93
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/ManagedChannelRegistry;->effectiveProviders:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    monitor-exit p0

    return-void

    .line 83
    .end local v0    # "providers":Ljava/util/List;, "Ljava/util/List<Lio/grpc/ManagedChannelProvider;>;"
    .end local p0    # "this":Lio/grpc/ManagedChannelRegistry;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized deregister(Lio/grpc/ManagedChannelProvider;)V
    .locals 1
    .param p1, "provider"    # Lio/grpc/ManagedChannelProvider;

    monitor-enter p0

    .line 79
    :try_start_0
    iget-object v0, p0, Lio/grpc/ManagedChannelRegistry;->allProviders:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 80
    invoke-direct {p0}, Lio/grpc/ManagedChannelRegistry;->refreshProviders()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    monitor-exit p0

    return-void

    .line 78
    .end local p0    # "this":Lio/grpc/ManagedChannelRegistry;
    .end local p1    # "provider":Lio/grpc/ManagedChannelProvider;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method newChannelBuilder(Lio/grpc/NameResolverRegistry;Ljava/lang/String;Lio/grpc/ChannelCredentials;)Lio/grpc/ManagedChannelBuilder;
    .locals 10
    .param p1, "nameResolverRegistry"    # Lio/grpc/NameResolverRegistry;
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "creds"    # Lio/grpc/ChannelCredentials;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/NameResolverRegistry;",
            "Ljava/lang/String;",
            "Lio/grpc/ChannelCredentials;",
            ")",
            "Lio/grpc/ManagedChannelBuilder<",
            "*>;"
        }
    .end annotation

    .line 161
    const/4 v0, 0x0

    .line 163
    .local v0, "nameResolverProvider":Lio/grpc/NameResolverProvider;
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 164
    .local v1, "uri":Ljava/net/URI;
    invoke-virtual {p1}, Lio/grpc/NameResolverRegistry;->providers()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/NameResolverProvider;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 167
    .end local v1    # "uri":Ljava/net/URI;
    goto :goto_0

    .line 165
    :catch_0
    move-exception v1

    .line 168
    :goto_0
    if-nez v0, :cond_0

    .line 169
    invoke-virtual {p1}, Lio/grpc/NameResolverRegistry;->providers()Ljava/util/Map;

    move-result-object v1

    .line 170
    invoke-virtual {p1}, Lio/grpc/NameResolverRegistry;->asFactory()Lio/grpc/NameResolver$Factory;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/NameResolver$Factory;->getDefaultScheme()Ljava/lang/String;

    move-result-object v2

    .line 169
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lio/grpc/NameResolverProvider;

    .line 173
    :cond_0
    if-eqz v0, :cond_1

    .line 174
    invoke-virtual {v0}, Lio/grpc/NameResolverProvider;->getProducedSocketAddressTypes()Ljava/util/Collection;

    move-result-object v1

    goto :goto_1

    .line 175
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    :goto_1
    nop

    .line 177
    .local v1, "nameResolverSocketAddressTypes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Class<+Ljava/net/SocketAddress;>;>;"
    invoke-virtual {p0}, Lio/grpc/ManagedChannelRegistry;->providers()Ljava/util/List;

    move-result-object v2

    .line 178
    .local v2, "providers":Ljava/util/List;, "Ljava/util/List<Lio/grpc/ManagedChannelProvider;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 183
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    .local v3, "error":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lio/grpc/ManagedChannelRegistry;->providers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/grpc/ManagedChannelProvider;

    .line 185
    .local v5, "provider":Lio/grpc/ManagedChannelProvider;
    nop

    .line 186
    invoke-virtual {v5}, Lio/grpc/ManagedChannelProvider;->getSupportedSocketAddressTypes()Ljava/util/Collection;

    move-result-object v6

    .line 187
    .local v6, "channelProviderSocketAddressTypes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Class<+Ljava/net/SocketAddress;>;>;"
    invoke-interface {v6, v1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v7

    const-string v8, "; "

    if-nez v7, :cond_2

    .line 188
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    const-string v7, ": does not support 1 or more of "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-interface {v1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    goto :goto_2

    .line 194
    :cond_2
    nop

    .line 195
    invoke-virtual {v5, p2, p3}, Lio/grpc/ManagedChannelProvider;->newChannelBuilder(Ljava/lang/String;Lio/grpc/ChannelCredentials;)Lio/grpc/ManagedChannelProvider$NewChannelBuilderResult;

    move-result-object v7

    .line 196
    .local v7, "result":Lio/grpc/ManagedChannelProvider$NewChannelBuilderResult;
    invoke-virtual {v7}, Lio/grpc/ManagedChannelProvider$NewChannelBuilderResult;->getChannelBuilder()Lio/grpc/ManagedChannelBuilder;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 197
    invoke-virtual {v7}, Lio/grpc/ManagedChannelProvider$NewChannelBuilderResult;->getChannelBuilder()Lio/grpc/ManagedChannelBuilder;

    move-result-object v4

    return-object v4

    .line 199
    :cond_3
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    const-string v8, ": "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {v7}, Lio/grpc/ManagedChannelProvider$NewChannelBuilderResult;->getError()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .end local v5    # "provider":Lio/grpc/ManagedChannelProvider;
    .end local v6    # "channelProviderSocketAddressTypes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Class<+Ljava/net/SocketAddress;>;>;"
    .end local v7    # "result":Lio/grpc/ManagedChannelProvider$NewChannelBuilderResult;
    goto :goto_2

    .line 204
    :cond_4
    new-instance v4, Lio/grpc/ManagedChannelRegistry$ProviderNotFoundException;

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lio/grpc/ManagedChannelRegistry$ProviderNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 179
    .end local v3    # "error":Ljava/lang/StringBuilder;
    :cond_5
    new-instance v3, Lio/grpc/ManagedChannelRegistry$ProviderNotFoundException;

    const-string v4, "No functional channel service provider found. Try adding a dependency on the grpc-okhttp, grpc-netty, or grpc-netty-shaded artifact"

    invoke-direct {v3, v4}, Lio/grpc/ManagedChannelRegistry$ProviderNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method newChannelBuilder(Ljava/lang/String;Lio/grpc/ChannelCredentials;)Lio/grpc/ManagedChannelBuilder;
    .locals 1
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "creds"    # Lio/grpc/ChannelCredentials;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/grpc/ChannelCredentials;",
            ")",
            "Lio/grpc/ManagedChannelBuilder<",
            "*>;"
        }
    .end annotation

    .line 155
    invoke-static {}, Lio/grpc/NameResolverRegistry;->getDefaultRegistry()Lio/grpc/NameResolverRegistry;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lio/grpc/ManagedChannelRegistry;->newChannelBuilder(Lio/grpc/NameResolverRegistry;Ljava/lang/String;Lio/grpc/ChannelCredentials;)Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method provider()Lio/grpc/ManagedChannelProvider;
    .locals 2

    .line 126
    invoke-virtual {p0}, Lio/grpc/ManagedChannelRegistry;->providers()Ljava/util/List;

    move-result-object v0

    .line 127
    .local v0, "providers":Ljava/util/List;, "Ljava/util/List<Lio/grpc/ManagedChannelProvider;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/ManagedChannelProvider;

    :goto_0
    return-object v1
.end method

.method declared-synchronized providers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/ManagedChannelProvider;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 121
    :try_start_0
    iget-object v0, p0, Lio/grpc/ManagedChannelRegistry;->effectiveProviders:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 121
    .end local p0    # "this":Lio/grpc/ManagedChannelRegistry;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized register(Lio/grpc/ManagedChannelProvider;)V
    .locals 0
    .param p1, "provider"    # Lio/grpc/ManagedChannelProvider;

    monitor-enter p0

    .line 64
    :try_start_0
    invoke-direct {p0, p1}, Lio/grpc/ManagedChannelRegistry;->addProvider(Lio/grpc/ManagedChannelProvider;)V

    .line 65
    invoke-direct {p0}, Lio/grpc/ManagedChannelRegistry;->refreshProviders()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    monitor-exit p0

    return-void

    .line 63
    .end local p0    # "this":Lio/grpc/ManagedChannelRegistry;
    .end local p1    # "provider":Lio/grpc/ManagedChannelProvider;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
