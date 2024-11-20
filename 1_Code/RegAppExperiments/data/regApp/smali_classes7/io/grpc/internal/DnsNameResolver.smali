.class public Lio/grpc/internal/DnsNameResolver;
.super Lio/grpc/NameResolver;
.source "DnsNameResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/DnsNameResolver$ResourceResolver;,
        Lio/grpc/internal/DnsNameResolver$JdkAddressResolver;,
        Lio/grpc/internal/DnsNameResolver$AddressResolver;,
        Lio/grpc/internal/DnsNameResolver$ResourceResolverFactory;,
        Lio/grpc/internal/DnsNameResolver$SrvRecord;,
        Lio/grpc/internal/DnsNameResolver$InternalResolutionResult;,
        Lio/grpc/internal/DnsNameResolver$Resolve;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final DEFAULT_NETWORK_CACHE_TTL_SECONDS:J = 0x1eL

.field private static final JNDI_LOCALHOST_PROPERTY:Ljava/lang/String;

.field private static final JNDI_PROPERTY:Ljava/lang/String;

.field private static final JNDI_TXT_PROPERTY:Ljava/lang/String;

.field static final NETWORKADDRESS_CACHE_TTL_PROPERTY:Ljava/lang/String; = "networkaddress.cache.ttl"

.field private static final SERVICE_CONFIG_CHOICE_CLIENT_HOSTNAME_KEY:Ljava/lang/String; = "clientHostname"

.field private static final SERVICE_CONFIG_CHOICE_CLIENT_LANGUAGE_KEY:Ljava/lang/String; = "clientLanguage"

.field private static final SERVICE_CONFIG_CHOICE_KEYS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SERVICE_CONFIG_CHOICE_PERCENTAGE_KEY:Ljava/lang/String; = "percentage"

.field private static final SERVICE_CONFIG_CHOICE_SERVICE_CONFIG_KEY:Ljava/lang/String; = "serviceConfig"

.field private static final SERVICE_CONFIG_NAME_PREFIX:Ljava/lang/String; = "_grpc_config."

.field static final SERVICE_CONFIG_PREFIX:Ljava/lang/String; = "grpc_config="

.field static enableJndi:Z

.field static enableJndiLocalhost:Z

.field protected static enableTxt:Z

.field private static localHostname:Ljava/lang/String;

.field private static final logger:Ljava/util/logging/Logger;

.field private static final resourceResolverFactory:Lio/grpc/internal/DnsNameResolver$ResourceResolverFactory;


# instance fields
.field protected volatile addressResolver:Lio/grpc/internal/DnsNameResolver$AddressResolver;

.field private final authority:Ljava/lang/String;

.field private final cacheTtlNanos:J

.field private executor:Ljava/util/concurrent/Executor;

.field private final executorResource:Lio/grpc/internal/SharedResourceHolder$Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/SharedResourceHolder$Resource<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final host:Ljava/lang/String;

.field private listener:Lio/grpc/NameResolver$Listener2;

.field private final port:I

.field final proxyDetector:Lio/grpc/ProxyDetector;

.field private final random:Ljava/util/Random;

.field protected resolved:Z

.field private resolving:Z

.field private final resourceResolver:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/grpc/internal/DnsNameResolver$ResourceResolver;",
            ">;"
        }
    .end annotation
.end field

.field private final serviceConfigParser:Lio/grpc/NameResolver$ServiceConfigParser;

.field private shutdown:Z

.field private final stopwatch:Lcom/google/common/base/Stopwatch;

.field private final syncContext:Lio/grpc/SynchronizationContext;

.field private final usingExecutorResource:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 66
    nop

    .line 68
    const-class v0, Lio/grpc/internal/DnsNameResolver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sput-object v1, Lio/grpc/internal/DnsNameResolver;->logger:Ljava/util/logging/Logger;

    .line 77
    new-instance v1, Ljava/util/HashSet;

    const-string v2, "clientHostname"

    const-string v3, "serviceConfig"

    const-string v4, "clientLanguage"

    const-string v5, "percentage"

    filled-new-array {v4, v5, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    .line 80
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 78
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lio/grpc/internal/DnsNameResolver;->SERVICE_CONFIG_CHOICE_KEYS:Ljava/util/Set;

    .line 89
    nop

    .line 90
    const-string v1, "io.grpc.internal.DnsNameResolverProvider.enable_jndi"

    const-string v2, "true"

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lio/grpc/internal/DnsNameResolver;->JNDI_PROPERTY:Ljava/lang/String;

    .line 91
    nop

    .line 92
    const-string v2, "io.grpc.internal.DnsNameResolverProvider.enable_jndi_localhost"

    const-string v3, "false"

    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lio/grpc/internal/DnsNameResolver;->JNDI_LOCALHOST_PROPERTY:Ljava/lang/String;

    .line 93
    nop

    .line 94
    const-string v4, "io.grpc.internal.DnsNameResolverProvider.enable_service_config"

    invoke-static {v4, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lio/grpc/internal/DnsNameResolver;->JNDI_TXT_PROPERTY:Ljava/lang/String;

    .line 112
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lio/grpc/internal/DnsNameResolver;->enableJndi:Z

    .line 114
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lio/grpc/internal/DnsNameResolver;->enableJndiLocalhost:Z

    .line 116
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lio/grpc/internal/DnsNameResolver;->enableTxt:Z

    .line 118
    nop

    .line 119
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/internal/DnsNameResolver;->getResourceResolverFactory(Ljava/lang/ClassLoader;)Lio/grpc/internal/DnsNameResolver$ResourceResolverFactory;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/DnsNameResolver;->resourceResolverFactory:Lio/grpc/internal/DnsNameResolver$ResourceResolverFactory;

    .line 118
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Lio/grpc/NameResolver$Args;Lio/grpc/internal/SharedResourceHolder$Resource;Lcom/google/common/base/Stopwatch;Z)V
    .locals 6
    .param p1, "nsAuthority"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "args"    # Lio/grpc/NameResolver$Args;
    .param p5, "stopwatch"    # Lcom/google/common/base/Stopwatch;
    .param p6, "isAndroid"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/grpc/NameResolver$Args;",
            "Lio/grpc/internal/SharedResourceHolder$Resource<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lcom/google/common/base/Stopwatch;",
            "Z)V"
        }
    .end annotation

    .line 163
    .local p4, "executorResource":Lio/grpc/internal/SharedResourceHolder$Resource;, "Lio/grpc/internal/SharedResourceHolder$Resource<Ljava/util/concurrent/Executor;>;"
    invoke-direct {p0}, Lio/grpc/NameResolver;-><init>()V

    .line 127
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/DnsNameResolver;->random:Ljava/util/Random;

    .line 129
    sget-object v0, Lio/grpc/internal/DnsNameResolver$JdkAddressResolver;->INSTANCE:Lio/grpc/internal/DnsNameResolver$JdkAddressResolver;

    iput-object v0, p0, Lio/grpc/internal/DnsNameResolver;->addressResolver:Lio/grpc/internal/DnsNameResolver$AddressResolver;

    .line 130
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/DnsNameResolver;->resourceResolver:Ljava/util/concurrent/atomic/AtomicReference;

    .line 164
    const-string v0, "args"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iput-object p4, p0, Lio/grpc/internal/DnsNameResolver;->executorResource:Lio/grpc/internal/SharedResourceHolder$Resource;

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "name"

    invoke-static {p2, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 171
    .local v0, "nameUri":Ljava/net/URI;
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const-string v4, "Invalid DNS name: %s"

    invoke-static {v1, v4, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 172
    invoke-virtual {v0}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-string v4, "nameUri (%s) doesn\'t have an authority"

    invoke-static {v1, v4, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lio/grpc/internal/DnsNameResolver;->authority:Ljava/lang/String;

    .line 174
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/internal/DnsNameResolver;->host:Ljava/lang/String;

    .line 175
    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_1

    .line 176
    invoke-virtual {p3}, Lio/grpc/NameResolver$Args;->getDefaultPort()I

    move-result v1

    iput v1, p0, Lio/grpc/internal/DnsNameResolver;->port:I

    goto :goto_1

    .line 178
    :cond_1
    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v1

    iput v1, p0, Lio/grpc/internal/DnsNameResolver;->port:I

    .line 180
    :goto_1
    invoke-virtual {p3}, Lio/grpc/NameResolver$Args;->getProxyDetector()Lio/grpc/ProxyDetector;

    move-result-object v1

    const-string v4, "proxyDetector"

    invoke-static {v1, v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/ProxyDetector;

    iput-object v1, p0, Lio/grpc/internal/DnsNameResolver;->proxyDetector:Lio/grpc/ProxyDetector;

    .line 181
    invoke-static {p6}, Lio/grpc/internal/DnsNameResolver;->getNetworkAddressCacheTtlNanos(Z)J

    move-result-wide v4

    iput-wide v4, p0, Lio/grpc/internal/DnsNameResolver;->cacheTtlNanos:J

    .line 182
    const-string v1, "stopwatch"

    invoke-static {p5, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/base/Stopwatch;

    iput-object v1, p0, Lio/grpc/internal/DnsNameResolver;->stopwatch:Lcom/google/common/base/Stopwatch;

    .line 183
    invoke-virtual {p3}, Lio/grpc/NameResolver$Args;->getSynchronizationContext()Lio/grpc/SynchronizationContext;

    move-result-object v1

    const-string v4, "syncContext"

    invoke-static {v1, v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/SynchronizationContext;

    iput-object v1, p0, Lio/grpc/internal/DnsNameResolver;->syncContext:Lio/grpc/SynchronizationContext;

    .line 184
    invoke-virtual {p3}, Lio/grpc/NameResolver$Args;->getOffloadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/internal/DnsNameResolver;->executor:Ljava/util/concurrent/Executor;

    .line 185
    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lio/grpc/internal/DnsNameResolver;->usingExecutorResource:Z

    .line 186
    invoke-virtual {p3}, Lio/grpc/NameResolver$Args;->getServiceConfigParser()Lio/grpc/NameResolver$ServiceConfigParser;

    move-result-object v1

    const-string v2, "serviceConfigParser"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/NameResolver$ServiceConfigParser;

    iput-object v1, p0, Lio/grpc/internal/DnsNameResolver;->serviceConfigParser:Lio/grpc/NameResolver$ServiceConfigParser;

    .line 187
    return-void
.end method

.method static synthetic access$1000(Lio/grpc/internal/DnsNameResolver;)Lio/grpc/SynchronizationContext;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/DnsNameResolver;

    .line 66
    iget-object v0, p0, Lio/grpc/internal/DnsNameResolver;->syncContext:Lio/grpc/SynchronizationContext;

    return-object v0
.end method

.method static synthetic access$400()Ljava/util/logging/Logger;
    .locals 1

    .line 66
    sget-object v0, Lio/grpc/internal/DnsNameResolver;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$500(Lio/grpc/internal/DnsNameResolver;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/DnsNameResolver;

    .line 66
    iget-object v0, p0, Lio/grpc/internal/DnsNameResolver;->host:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lio/grpc/internal/DnsNameResolver;)Lio/grpc/EquivalentAddressGroup;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/DnsNameResolver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Lio/grpc/internal/DnsNameResolver;->detectProxy()Lio/grpc/EquivalentAddressGroup;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lio/grpc/internal/DnsNameResolver;)J
    .locals 2
    .param p0, "x0"    # Lio/grpc/internal/DnsNameResolver;

    .line 66
    iget-wide v0, p0, Lio/grpc/internal/DnsNameResolver;->cacheTtlNanos:J

    return-wide v0
.end method

.method static synthetic access$800(Lio/grpc/internal/DnsNameResolver;)Lcom/google/common/base/Stopwatch;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/DnsNameResolver;

    .line 66
    iget-object v0, p0, Lio/grpc/internal/DnsNameResolver;->stopwatch:Lcom/google/common/base/Stopwatch;

    return-object v0
.end method

.method static synthetic access$902(Lio/grpc/internal/DnsNameResolver;Z)Z
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/DnsNameResolver;
    .param p1, "x1"    # Z

    .line 66
    iput-boolean p1, p0, Lio/grpc/internal/DnsNameResolver;->resolving:Z

    return p1
.end method

.method private cacheRefreshRequired()Z
    .locals 5

    .line 393
    iget-boolean v0, p0, Lio/grpc/internal/DnsNameResolver;->resolved:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lio/grpc/internal/DnsNameResolver;->cacheTtlNanos:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lio/grpc/internal/DnsNameResolver;->stopwatch:Lcom/google/common/base/Stopwatch;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 395
    invoke-virtual {v0, v1}, Lcom/google/common/base/Stopwatch;->elapsed(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iget-wide v2, p0, Lio/grpc/internal/DnsNameResolver;->cacheTtlNanos:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 393
    :goto_1
    return v0
.end method

.method private detectProxy()Lio/grpc/EquivalentAddressGroup;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 267
    iget-object v0, p0, Lio/grpc/internal/DnsNameResolver;->host:Ljava/lang/String;

    iget v1, p0, Lio/grpc/internal/DnsNameResolver;->port:I

    .line 268
    invoke-static {v0, v1}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v0

    .line 269
    .local v0, "destination":Ljava/net/InetSocketAddress;
    iget-object v1, p0, Lio/grpc/internal/DnsNameResolver;->proxyDetector:Lio/grpc/ProxyDetector;

    invoke-interface {v1, v0}, Lio/grpc/ProxyDetector;->proxyFor(Ljava/net/SocketAddress;)Lio/grpc/ProxiedSocketAddress;

    move-result-object v1

    .line 270
    .local v1, "proxiedAddr":Lio/grpc/ProxiedSocketAddress;
    if-eqz v1, :cond_0

    .line 271
    new-instance v2, Lio/grpc/EquivalentAddressGroup;

    invoke-direct {v2, v1}, Lio/grpc/EquivalentAddressGroup;-><init>(Ljava/net/SocketAddress;)V

    return-object v2

    .line 273
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method private static final getClientLanguagesFromChoice(Ljava/util/Map;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 443
    .local p0, "serviceConfigChoice":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const-string v0, "clientLanguage"

    invoke-static {p0, v0}, Lio/grpc/internal/JsonUtil;->getListOfStrings(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static final getHostnamesFromChoice(Ljava/util/Map;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 449
    .local p0, "serviceConfigChoice":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const-string v0, "clientHostname"

    invoke-static {p0, v0}, Lio/grpc/internal/JsonUtil;->getListOfStrings(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static getLocalHostname()Ljava/lang/String;
    .locals 2

    .line 706
    sget-object v0, Lio/grpc/internal/DnsNameResolver;->localHostname:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 708
    :try_start_0
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/DnsNameResolver;->localHostname:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 711
    goto :goto_0

    .line 709
    :catch_0
    move-exception v0

    .line 710
    .local v0, "e":Ljava/net/UnknownHostException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 713
    .end local v0    # "e":Ljava/net/UnknownHostException;
    :cond_0
    :goto_0
    sget-object v0, Lio/grpc/internal/DnsNameResolver;->localHostname:Ljava/lang/String;

    return-object v0
.end method

.method private static getNetworkAddressCacheTtlNanos(Z)J
    .locals 10
    .param p0, "isAndroid"    # Z

    .line 458
    const-wide/16 v0, 0x0

    if-eqz p0, :cond_0

    .line 460
    return-wide v0

    .line 463
    :cond_0
    const-string v2, "networkaddress.cache.ttl"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 464
    .local v3, "cacheTtlPropertyValue":Ljava/lang/String;
    const-wide/16 v4, 0x1e

    .line 465
    .local v4, "cacheTtl":J
    if-eqz v3, :cond_1

    .line 467
    :try_start_0
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v4, v6

    .line 473
    goto :goto_0

    .line 468
    :catch_0
    move-exception v6

    .line 469
    .local v6, "e":Ljava/lang/NumberFormatException;
    sget-object v7, Lio/grpc/internal/DnsNameResolver;->logger:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 472
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    filled-new-array {v2, v3, v9}, [Ljava/lang/Object;

    move-result-object v2

    .line 469
    const-string v9, "Property({0}) valid is not valid number format({1}), fall back to default({2})"

    invoke-virtual {v7, v8, v9, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 475
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    :goto_0
    cmp-long v0, v4, v0

    if-lez v0, :cond_2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    goto :goto_1

    :cond_2
    move-wide v0, v4

    :goto_1
    return-wide v0
.end method

.method private static final getPercentageFromChoice(Ljava/util/Map;)Ljava/lang/Double;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljava/lang/Double;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 437
    .local p0, "serviceConfigChoice":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const-string v0, "percentage"

    invoke-static {p0, v0}, Lio/grpc/internal/JsonUtil;->getNumberAsDouble(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static getResourceResolverFactory(Ljava/lang/ClassLoader;)Lio/grpc/internal/DnsNameResolver$ResourceResolverFactory;
    .locals 8
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 665
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "io.grpc.internal.JndiResourceResolverFactory"

    .line 666
    const/4 v2, 0x1

    invoke-static {v1, v2, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lio/grpc/internal/DnsNameResolver$ResourceResolverFactory;

    .line 667
    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2

    .line 680
    .local v1, "jndiClazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lio/grpc/internal/DnsNameResolver$ResourceResolverFactory;>;"
    nop

    .line 683
    const/4 v2, 0x0

    :try_start_1
    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 687
    .local v3, "jndiCtor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lio/grpc/internal/DnsNameResolver$ResourceResolverFactory;>;"
    nop

    .line 690
    :try_start_2
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/internal/DnsNameResolver$ResourceResolverFactory;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 694
    .local v2, "rrf":Lio/grpc/internal/DnsNameResolver$ResourceResolverFactory;
    nop

    .line 695
    invoke-interface {v2}, Lio/grpc/internal/DnsNameResolver$ResourceResolverFactory;->unavailabilityCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 696
    sget-object v4, Lio/grpc/internal/DnsNameResolver;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 699
    invoke-interface {v2}, Lio/grpc/internal/DnsNameResolver$ResourceResolverFactory;->unavailabilityCause()Ljava/lang/Throwable;

    move-result-object v6

    .line 696
    const-string v7, "JndiResourceResolverFactory not available, skipping."

    invoke-virtual {v4, v5, v7, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 700
    return-object v0

    .line 702
    :cond_0
    return-object v2

    .line 691
    .end local v2    # "rrf":Lio/grpc/internal/DnsNameResolver$ResourceResolverFactory;
    :catch_0
    move-exception v2

    .line 692
    .local v2, "e":Ljava/lang/Exception;
    sget-object v4, Lio/grpc/internal/DnsNameResolver;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v6, "Can\'t construct JndiResourceResolverFactory, skipping."

    invoke-virtual {v4, v5, v6, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 693
    return-object v0

    .line 684
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "jndiCtor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lio/grpc/internal/DnsNameResolver$ResourceResolverFactory;>;"
    :catch_1
    move-exception v2

    .line 685
    .restart local v2    # "e":Ljava/lang/Exception;
    sget-object v3, Lio/grpc/internal/DnsNameResolver;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v5, "Can\'t find JndiResourceResolverFactory ctor, skipping."

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 686
    return-object v0

    .line 671
    .end local v1    # "jndiClazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lio/grpc/internal/DnsNameResolver$ResourceResolverFactory;>;"
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 678
    .local v1, "e":Ljava/lang/ClassCastException;
    sget-object v2, Lio/grpc/internal/DnsNameResolver;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "Unable to cast JndiResourceResolverFactory, skipping."

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 679
    return-object v0

    .line 668
    .end local v1    # "e":Ljava/lang/ClassCastException;
    :catch_3
    move-exception v1

    .line 669
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    sget-object v2, Lio/grpc/internal/DnsNameResolver;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "Unable to find JndiResourceResolverFactory, skipping."

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 670
    return-object v0
.end method

.method static maybeChooseServiceConfig(Ljava/util/Map;Ljava/util/Random;Ljava/lang/String;)Ljava/util/Map;
    .locals 8
    .param p1, "random"    # Ljava/util/Random;
    .param p2, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/util/Random;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 490
    .local p0, "choice":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 491
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    sget-object v2, Lio/grpc/internal/DnsNameResolver;->SERVICE_CONFIG_CHOICE_KEYS:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "Bad key: %s"

    invoke-static {v2, v3, v1}, Lcom/google/common/base/Verify;->verify(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 492
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    goto :goto_0

    .line 494
    :cond_0
    invoke-static {p0}, Lio/grpc/internal/DnsNameResolver;->getClientLanguagesFromChoice(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    .line 495
    .local v0, "clientLanguages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 496
    const/4 v2, 0x0

    .line 497
    .local v2, "javaPresent":Z
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 498
    .local v4, "lang":Ljava/lang/String;
    const-string v5, "java"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 499
    const/4 v2, 0x1

    .line 500
    goto :goto_2

    .line 502
    .end local v4    # "lang":Ljava/lang/String;
    :cond_1
    goto :goto_1

    .line 503
    :cond_2
    :goto_2
    if-nez v2, :cond_3

    .line 504
    return-object v1

    .line 507
    .end local v2    # "javaPresent":Z
    :cond_3
    invoke-static {p0}, Lio/grpc/internal/DnsNameResolver;->getPercentageFromChoice(Ljava/util/Map;)Ljava/lang/Double;

    move-result-object v2

    .line 508
    .local v2, "percentage":Ljava/lang/Double;
    if-eqz v2, :cond_5

    .line 509
    invoke-virtual {v2}, Ljava/lang/Double;->intValue()I

    move-result v3

    .line 510
    .local v3, "pct":I
    const/16 v4, 0x64

    if-ltz v3, :cond_4

    if-gt v3, v4, :cond_4

    const/4 v5, 0x1

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_3
    const-string v6, "Bad percentage: %s"

    invoke-static {v5, v6, v2}, Lcom/google/common/base/Verify;->verify(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 511
    invoke-virtual {p1, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    if-lt v4, v3, :cond_5

    .line 512
    return-object v1

    .line 515
    .end local v3    # "pct":I
    :cond_5
    invoke-static {p0}, Lio/grpc/internal/DnsNameResolver;->getHostnamesFromChoice(Ljava/util/Map;)Ljava/util/List;

    move-result-object v3

    .line 516
    .local v3, "clientHostnames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_8

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    .line 517
    const/4 v4, 0x0

    .line 518
    .local v4, "hostnamePresent":Z
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 519
    .local v6, "clientHostname":Ljava/lang/String;
    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 520
    const/4 v4, 0x1

    .line 521
    goto :goto_5

    .line 523
    .end local v6    # "clientHostname":Ljava/lang/String;
    :cond_6
    goto :goto_4

    .line 524
    :cond_7
    :goto_5
    if-nez v4, :cond_8

    .line 525
    return-object v1

    .line 528
    .end local v4    # "hostnamePresent":Z
    :cond_8
    nop

    .line 529
    const-string v1, "serviceConfig"

    invoke-static {p0, v1}, Lio/grpc/internal/JsonUtil;->getObject(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 530
    .local v4, "sc":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    if-eqz v4, :cond_9

    .line 534
    return-object v4

    .line 531
    :cond_9
    new-instance v5, Lcom/google/common/base/VerifyException;

    const-string v6, "key \'%s\' missing in \'%s\'"

    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Lcom/google/common/base/VerifyException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method static parseServiceConfig(Ljava/util/List;Ljava/util/Random;Ljava/lang/String;)Lio/grpc/NameResolver$ConfigOrError;
    .locals 6
    .param p1, "random"    # Ljava/util/Random;
    .param p2, "localHostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Random;",
            "Ljava/lang/String;",
            ")",
            "Lio/grpc/NameResolver$ConfigOrError;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 360
    .local p0, "rawTxtRecords":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-static {p0}, Lio/grpc/internal/DnsNameResolver;->parseTxtResults(Ljava/util/List;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 364
    .local v0, "possibleServiceConfigChoices":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    nop

    .line 365
    const/4 v1, 0x0

    .line 366
    .local v1, "possibleServiceConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 368
    .local v3, "possibleServiceConfigChoice":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    nop

    .line 369
    :try_start_1
    invoke-static {v3, p1, p2}, Lio/grpc/internal/DnsNameResolver;->maybeChooseServiceConfig(Ljava/util/Map;Ljava/util/Random;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v4

    .line 373
    nop

    .line 374
    if-eqz v1, :cond_0

    .line 375
    goto :goto_1

    .line 377
    .end local v3    # "possibleServiceConfigChoice":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    :cond_0
    goto :goto_0

    .line 370
    .restart local v3    # "possibleServiceConfigChoice":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    :catch_0
    move-exception v2

    .line 371
    .local v2, "e":Ljava/lang/RuntimeException;
    sget-object v4, Lio/grpc/Status;->UNKNOWN:Lio/grpc/Status;

    .line 372
    const-string v5, "failed to pick service config choice"

    invoke-virtual {v4, v5}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v4

    invoke-virtual {v4, v2}, Lio/grpc/Status;->withCause(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v4

    .line 371
    invoke-static {v4}, Lio/grpc/NameResolver$ConfigOrError;->fromError(Lio/grpc/Status;)Lio/grpc/NameResolver$ConfigOrError;

    move-result-object v4

    return-object v4

    .line 378
    .end local v2    # "e":Ljava/lang/RuntimeException;
    .end local v3    # "possibleServiceConfigChoice":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    :cond_1
    :goto_1
    if-nez v1, :cond_2

    .line 379
    const/4 v2, 0x0

    return-object v2

    .line 381
    :cond_2
    invoke-static {v1}, Lio/grpc/NameResolver$ConfigOrError;->fromConfig(Ljava/lang/Object;)Lio/grpc/NameResolver$ConfigOrError;

    move-result-object v2

    return-object v2

    .line 361
    .end local v0    # "possibleServiceConfigChoices":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    .end local v1    # "possibleServiceConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    .line 362
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    sget-object v1, Lio/grpc/Status;->UNKNOWN:Lio/grpc/Status;

    .line 363
    const-string v2, "failed to parse TXT records"

    invoke-virtual {v1, v2}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/grpc/Status;->withCause(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v1

    .line 362
    invoke-static {v1}, Lio/grpc/NameResolver$ConfigOrError;->fromError(Lio/grpc/Status;)Lio/grpc/NameResolver$ConfigOrError;

    move-result-object v1

    return-object v1
.end method

.method static parseTxtResults(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 419
    .local p0, "txtRecords":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 420
    .local v0, "possibleServiceConfigChoices":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 421
    .local v2, "txtRecord":Ljava/lang/String;
    const-string v3, "grpc_config="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 422
    sget-object v3, Lio/grpc/internal/DnsNameResolver;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v5, "Ignoring non service config {0}"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 423
    goto :goto_0

    .line 425
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/grpc/internal/JsonParser;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 426
    .local v3, "rawChoices":Ljava/lang/Object;
    instance-of v4, v3, Ljava/util/List;

    if-eqz v4, :cond_1

    .line 429
    move-object v4, v3

    check-cast v4, Ljava/util/List;

    .line 430
    .local v4, "listChoices":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-static {v4}, Lio/grpc/internal/JsonUtil;->checkObjectList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 431
    .end local v2    # "txtRecord":Ljava/lang/String;
    .end local v3    # "rawChoices":Ljava/lang/Object;
    .end local v4    # "listChoices":Ljava/util/List;, "Ljava/util/List<*>;"
    goto :goto_0

    .line 427
    .restart local v2    # "txtRecord":Ljava/lang/String;
    .restart local v3    # "rawChoices":Ljava/lang/Object;
    :cond_1
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wrong type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 432
    .end local v2    # "txtRecord":Ljava/lang/String;
    .end local v3    # "rawChoices":Ljava/lang/Object;
    :cond_2
    return-object v0
.end method

.method private resolve()V
    .locals 3

    .line 385
    iget-boolean v0, p0, Lio/grpc/internal/DnsNameResolver;->resolving:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lio/grpc/internal/DnsNameResolver;->shutdown:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lio/grpc/internal/DnsNameResolver;->cacheRefreshRequired()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 388
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/internal/DnsNameResolver;->resolving:Z

    .line 389
    iget-object v0, p0, Lio/grpc/internal/DnsNameResolver;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lio/grpc/internal/DnsNameResolver$Resolve;

    iget-object v2, p0, Lio/grpc/internal/DnsNameResolver;->listener:Lio/grpc/NameResolver$Listener2;

    invoke-direct {v1, p0, v2}, Lio/grpc/internal/DnsNameResolver$Resolve;-><init>(Lio/grpc/internal/DnsNameResolver;Lio/grpc/NameResolver$Listener2;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 390
    return-void

    .line 386
    :cond_1
    :goto_0
    return-void
.end method

.method private resolveAddresses()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/EquivalentAddressGroup;",
            ">;"
        }
    .end annotation

    .line 217
    const-string v0, "Address resolution failure"

    const/4 v1, 0x0

    .line 219
    .local v1, "addressesException":Ljava/lang/Exception;
    :try_start_0
    iget-object v2, p0, Lio/grpc/internal/DnsNameResolver;->addressResolver:Lio/grpc/internal/DnsNameResolver$AddressResolver;

    iget-object v3, p0, Lio/grpc/internal/DnsNameResolver;->host:Ljava/lang/String;

    invoke-interface {v2, v3}, Lio/grpc/internal/DnsNameResolver$AddressResolver;->resolveAddress(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    .local v2, "addresses":Ljava/util/List;, "Ljava/util/List<+Ljava/net/InetAddress;>;"
    if-eqz v1, :cond_0

    .line 226
    sget-object v3, Lio/grpc/internal/DnsNameResolver;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 230
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 231
    .local v0, "servers":Ljava/util/List;, "Ljava/util/List<Lio/grpc/EquivalentAddressGroup;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    .line 232
    .local v4, "inetAddr":Ljava/net/InetAddress;
    new-instance v5, Lio/grpc/EquivalentAddressGroup;

    new-instance v6, Ljava/net/InetSocketAddress;

    iget v7, p0, Lio/grpc/internal/DnsNameResolver;->port:I

    invoke-direct {v6, v4, v7}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v5, v6}, Lio/grpc/EquivalentAddressGroup;-><init>(Ljava/net/SocketAddress;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    .end local v4    # "inetAddr":Ljava/net/InetAddress;
    goto :goto_0

    .line 234
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 225
    .end local v0    # "servers":Ljava/util/List;, "Ljava/util/List<Lio/grpc/EquivalentAddressGroup;>;"
    .end local v2    # "addresses":Ljava/util/List;, "Ljava/util/List<+Ljava/net/InetAddress;>;"
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 220
    :catch_0
    move-exception v2

    .line 221
    .local v2, "e":Ljava/lang/Exception;
    move-object v1, v2

    .line 222
    :try_start_1
    invoke-static {v2}, Lcom/google/common/base/Throwables;->throwIfUnchecked(Ljava/lang/Throwable;)V

    .line 223
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v1    # "addressesException":Ljava/lang/Exception;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 225
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "addressesException":Ljava/lang/Exception;
    :goto_1
    if-eqz v1, :cond_2

    .line 226
    sget-object v3, Lio/grpc/internal/DnsNameResolver;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    throw v2
.end method

.method private resolveServiceConfig()Lio/grpc/NameResolver$ConfigOrError;
    .locals 6
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 239
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 240
    .local v0, "txtRecords":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lio/grpc/internal/DnsNameResolver;->getResourceResolver()Lio/grpc/internal/DnsNameResolver$ResourceResolver;

    move-result-object v1

    .line 241
    .local v1, "resourceResolver":Lio/grpc/internal/DnsNameResolver$ResourceResolver;
    if-eqz v1, :cond_0

    .line 243
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_grpc_config."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lio/grpc/internal/DnsNameResolver;->host:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/grpc/internal/DnsNameResolver$ResourceResolver;->resolveTxt(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 246
    goto :goto_0

    .line 244
    :catch_0
    move-exception v2

    .line 245
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lio/grpc/internal/DnsNameResolver;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v5, "ServiceConfig resolution failure"

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 248
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 249
    iget-object v2, p0, Lio/grpc/internal/DnsNameResolver;->random:Ljava/util/Random;

    invoke-static {}, Lio/grpc/internal/DnsNameResolver;->getLocalHostname()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lio/grpc/internal/DnsNameResolver;->parseServiceConfig(Ljava/util/List;Ljava/util/Random;Ljava/lang/String;)Lio/grpc/NameResolver$ConfigOrError;

    move-result-object v2

    .line 250
    .local v2, "rawServiceConfig":Lio/grpc/NameResolver$ConfigOrError;
    if-eqz v2, :cond_2

    .line 251
    invoke-virtual {v2}, Lio/grpc/NameResolver$ConfigOrError;->getError()Lio/grpc/Status;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 252
    invoke-virtual {v2}, Lio/grpc/NameResolver$ConfigOrError;->getError()Lio/grpc/Status;

    move-result-object v3

    invoke-static {v3}, Lio/grpc/NameResolver$ConfigOrError;->fromError(Lio/grpc/Status;)Lio/grpc/NameResolver$ConfigOrError;

    move-result-object v3

    return-object v3

    .line 256
    :cond_1
    invoke-virtual {v2}, Lio/grpc/NameResolver$ConfigOrError;->getConfig()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 257
    .local v3, "verifiedRawServiceConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    iget-object v4, p0, Lio/grpc/internal/DnsNameResolver;->serviceConfigParser:Lio/grpc/NameResolver$ServiceConfigParser;

    invoke-virtual {v4, v3}, Lio/grpc/NameResolver$ServiceConfigParser;->parseServiceConfig(Ljava/util/Map;)Lio/grpc/NameResolver$ConfigOrError;

    move-result-object v4

    return-object v4

    .line 259
    .end local v2    # "rawServiceConfig":Lio/grpc/NameResolver$ConfigOrError;
    .end local v3    # "verifiedRawServiceConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    :cond_2
    goto :goto_1

    .line 260
    :cond_3
    sget-object v2, Lio/grpc/internal/DnsNameResolver;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    iget-object v4, p0, Lio/grpc/internal/DnsNameResolver;->host:Ljava/lang/String;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "No TXT records found for {0}"

    invoke-virtual {v2, v3, v5, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 262
    :goto_1
    const/4 v2, 0x0

    return-object v2
.end method

.method protected static shouldUseJndi(ZZLjava/lang/String;)Z
    .locals 5
    .param p0, "jndiEnabled"    # Z
    .param p1, "jndiLocalhostEnabled"    # Z
    .param p2, "target"    # Ljava/lang/String;

    .line 719
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 720
    return v0

    .line 722
    :cond_0
    const-string v1, "localhost"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 723
    return p1

    .line 726
    :cond_1
    const-string v1, ":"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 727
    return v0

    .line 731
    :cond_2
    const/4 v1, 0x1

    .line 732
    .local v1, "alldigits":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 733
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 734
    .local v3, "c":C
    const/16 v4, 0x2e

    if-eq v3, v4, :cond_4

    .line 735
    const/16 v4, 0x30

    if-lt v3, v4, :cond_3

    const/16 v4, 0x39

    if-gt v3, v4, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    move v4, v0

    :goto_1
    and-int/2addr v1, v4

    .line 732
    .end local v3    # "c":C
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 738
    .end local v2    # "i":I
    :cond_5
    xor-int/lit8 v0, v1, 0x1

    return v0
.end method


# virtual methods
.method protected doResolve(Z)Lio/grpc/internal/DnsNameResolver$InternalResolutionResult;
    .locals 5
    .param p1, "forceTxt"    # Z

    .line 280
    new-instance v0, Lio/grpc/internal/DnsNameResolver$InternalResolutionResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/grpc/internal/DnsNameResolver$InternalResolutionResult;-><init>(Lio/grpc/internal/DnsNameResolver$1;)V

    .line 282
    .local v0, "result":Lio/grpc/internal/DnsNameResolver$InternalResolutionResult;
    :try_start_0
    invoke-direct {p0}, Lio/grpc/internal/DnsNameResolver;->resolveAddresses()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/internal/DnsNameResolver$InternalResolutionResult;->access$102(Lio/grpc/internal/DnsNameResolver$InternalResolutionResult;Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    goto :goto_0

    .line 283
    :catch_0
    move-exception v1

    .line 284
    .local v1, "e":Ljava/lang/Exception;
    if-nez p1, :cond_0

    .line 285
    sget-object v2, Lio/grpc/Status;->UNAVAILABLE:Lio/grpc/Status;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to resolve host "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lio/grpc/internal/DnsNameResolver;->host:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 286
    invoke-virtual {v2, v3}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/grpc/Status;->withCause(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v2

    .line 285
    invoke-static {v0, v2}, Lio/grpc/internal/DnsNameResolver$InternalResolutionResult;->access$202(Lio/grpc/internal/DnsNameResolver$InternalResolutionResult;Lio/grpc/Status;)Lio/grpc/Status;

    .line 287
    return-object v0

    .line 290
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    sget-boolean v1, Lio/grpc/internal/DnsNameResolver;->enableTxt:Z

    if-eqz v1, :cond_1

    .line 291
    invoke-direct {p0}, Lio/grpc/internal/DnsNameResolver;->resolveServiceConfig()Lio/grpc/NameResolver$ConfigOrError;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/internal/DnsNameResolver$InternalResolutionResult;->access$302(Lio/grpc/internal/DnsNameResolver$InternalResolutionResult;Lio/grpc/NameResolver$ConfigOrError;)Lio/grpc/NameResolver$ConfigOrError;

    .line 293
    :cond_1
    return-object v0
.end method

.method protected getHost()Ljava/lang/String;
    .locals 1

    .line 196
    iget-object v0, p0, Lio/grpc/internal/DnsNameResolver;->host:Ljava/lang/String;

    return-object v0
.end method

.method final getPort()I
    .locals 1

    .line 410
    iget v0, p0, Lio/grpc/internal/DnsNameResolver;->port:I

    return v0
.end method

.method protected getResourceResolver()Lio/grpc/internal/DnsNameResolver$ResourceResolver;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 647
    sget-boolean v0, Lio/grpc/internal/DnsNameResolver;->enableJndi:Z

    sget-boolean v1, Lio/grpc/internal/DnsNameResolver;->enableJndiLocalhost:Z

    iget-object v2, p0, Lio/grpc/internal/DnsNameResolver;->host:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lio/grpc/internal/DnsNameResolver;->shouldUseJndi(ZZLjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 648
    const/4 v0, 0x0

    return-object v0

    .line 651
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/DnsNameResolver;->resourceResolver:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/DnsNameResolver$ResourceResolver;

    move-object v1, v0

    .local v1, "rr":Lio/grpc/internal/DnsNameResolver$ResourceResolver;
    if-nez v0, :cond_2

    .line 652
    sget-object v0, Lio/grpc/internal/DnsNameResolver;->resourceResolverFactory:Lio/grpc/internal/DnsNameResolver$ResourceResolverFactory;

    if-eqz v0, :cond_2

    .line 653
    invoke-interface {v0}, Lio/grpc/internal/DnsNameResolver$ResourceResolverFactory;->unavailabilityCause()Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_1

    .line 654
    invoke-interface {v0}, Lio/grpc/internal/DnsNameResolver$ResourceResolverFactory;->newResourceResolver()Lio/grpc/internal/DnsNameResolver$ResourceResolver;

    move-result-object v1

    goto :goto_0

    .line 653
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 657
    :cond_2
    :goto_0
    return-object v1
.end method

.method public getServiceAuthority()Ljava/lang/String;
    .locals 1

    .line 191
    iget-object v0, p0, Lio/grpc/internal/DnsNameResolver;->authority:Ljava/lang/String;

    return-object v0
.end method

.method public refresh()V
    .locals 2

    .line 211
    iget-object v0, p0, Lio/grpc/internal/DnsNameResolver;->listener:Lio/grpc/NameResolver$Listener2;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "not started"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 212
    invoke-direct {p0}, Lio/grpc/internal/DnsNameResolver;->resolve()V

    .line 213
    return-void
.end method

.method protected setAddressResolver(Lio/grpc/internal/DnsNameResolver$AddressResolver;)V
    .locals 0
    .param p1, "addressResolver"    # Lio/grpc/internal/DnsNameResolver$AddressResolver;

    .line 591
    iput-object p1, p0, Lio/grpc/internal/DnsNameResolver;->addressResolver:Lio/grpc/internal/DnsNameResolver$AddressResolver;

    .line 592
    return-void
.end method

.method protected setResourceResolver(Lio/grpc/internal/DnsNameResolver$ResourceResolver;)V
    .locals 1
    .param p1, "resourceResolver"    # Lio/grpc/internal/DnsNameResolver$ResourceResolver;

    .line 596
    iget-object v0, p0, Lio/grpc/internal/DnsNameResolver;->resourceResolver:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 597
    return-void
.end method

.method public shutdown()V
    .locals 2

    .line 400
    iget-boolean v0, p0, Lio/grpc/internal/DnsNameResolver;->shutdown:Z

    if-eqz v0, :cond_0

    .line 401
    return-void

    .line 403
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/internal/DnsNameResolver;->shutdown:Z

    .line 404
    iget-object v0, p0, Lio/grpc/internal/DnsNameResolver;->executor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lio/grpc/internal/DnsNameResolver;->usingExecutorResource:Z

    if-eqz v1, :cond_1

    .line 405
    iget-object v1, p0, Lio/grpc/internal/DnsNameResolver;->executorResource:Lio/grpc/internal/SharedResourceHolder$Resource;

    invoke-static {v1, v0}, Lio/grpc/internal/SharedResourceHolder;->release(Lio/grpc/internal/SharedResourceHolder$Resource;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lio/grpc/internal/DnsNameResolver;->executor:Ljava/util/concurrent/Executor;

    .line 407
    :cond_1
    return-void
.end method

.method public start(Lio/grpc/NameResolver$Listener2;)V
    .locals 2
    .param p1, "listener"    # Lio/grpc/NameResolver$Listener2;

    .line 201
    iget-object v0, p0, Lio/grpc/internal/DnsNameResolver;->listener:Lio/grpc/NameResolver$Listener2;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "already started"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 202
    iget-boolean v0, p0, Lio/grpc/internal/DnsNameResolver;->usingExecutorResource:Z

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lio/grpc/internal/DnsNameResolver;->executorResource:Lio/grpc/internal/SharedResourceHolder$Resource;

    invoke-static {v0}, Lio/grpc/internal/SharedResourceHolder;->get(Lio/grpc/internal/SharedResourceHolder$Resource;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lio/grpc/internal/DnsNameResolver;->executor:Ljava/util/concurrent/Executor;

    .line 205
    :cond_1
    const-string v0, "listener"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/NameResolver$Listener2;

    iput-object v0, p0, Lio/grpc/internal/DnsNameResolver;->listener:Lio/grpc/NameResolver$Listener2;

    .line 206
    invoke-direct {p0}, Lio/grpc/internal/DnsNameResolver;->resolve()V

    .line 207
    return-void
.end method
