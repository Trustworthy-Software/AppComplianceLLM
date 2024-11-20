.class public final Lio/grpc/NameResolver$Args;
.super Ljava/lang/Object;
.source "NameResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/NameResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Args"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/NameResolver$Args$Builder;
    }
.end annotation


# instance fields
.field private final channelLogger:Lio/grpc/ChannelLogger;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final defaultPort:I

.field private final executor:Ljava/util/concurrent/Executor;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final overrideAuthority:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final proxyDetector:Lio/grpc/ProxyDetector;

.field private final scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final serviceConfigParser:Lio/grpc/NameResolver$ServiceConfigParser;

.field private final syncContext:Lio/grpc/SynchronizationContext;


# direct methods
.method private constructor <init>(Ljava/lang/Integer;Lio/grpc/ProxyDetector;Lio/grpc/SynchronizationContext;Lio/grpc/NameResolver$ServiceConfigParser;Ljava/util/concurrent/ScheduledExecutorService;Lio/grpc/ChannelLogger;Ljava/util/concurrent/Executor;Ljava/lang/String;)V
    .locals 1
    .param p1, "defaultPort"    # Ljava/lang/Integer;
    .param p2, "proxyDetector"    # Lio/grpc/ProxyDetector;
    .param p3, "syncContext"    # Lio/grpc/SynchronizationContext;
    .param p4, "serviceConfigParser"    # Lio/grpc/NameResolver$ServiceConfigParser;
    .param p5, "scheduledExecutorService"    # Ljava/util/concurrent/ScheduledExecutorService;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "channelLogger"    # Lio/grpc/ChannelLogger;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p7, "executor"    # Ljava/util/concurrent/Executor;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p8, "overrideAuthority"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    const-string v0, "defaultPort not set"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lio/grpc/NameResolver$Args;->defaultPort:I

    .line 280
    const-string v0, "proxyDetector not set"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/ProxyDetector;

    iput-object v0, p0, Lio/grpc/NameResolver$Args;->proxyDetector:Lio/grpc/ProxyDetector;

    .line 281
    const-string v0, "syncContext not set"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/SynchronizationContext;

    iput-object v0, p0, Lio/grpc/NameResolver$Args;->syncContext:Lio/grpc/SynchronizationContext;

    .line 282
    const-string v0, "serviceConfigParser not set"

    invoke-static {p4, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/NameResolver$ServiceConfigParser;

    iput-object v0, p0, Lio/grpc/NameResolver$Args;->serviceConfigParser:Lio/grpc/NameResolver$ServiceConfigParser;

    .line 283
    iput-object p5, p0, Lio/grpc/NameResolver$Args;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 284
    iput-object p6, p0, Lio/grpc/NameResolver$Args;->channelLogger:Lio/grpc/ChannelLogger;

    .line 285
    iput-object p7, p0, Lio/grpc/NameResolver$Args;->executor:Ljava/util/concurrent/Executor;

    .line 286
    iput-object p8, p0, Lio/grpc/NameResolver$Args;->overrideAuthority:Ljava/lang/String;

    .line 287
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Integer;Lio/grpc/ProxyDetector;Lio/grpc/SynchronizationContext;Lio/grpc/NameResolver$ServiceConfigParser;Ljava/util/concurrent/ScheduledExecutorService;Lio/grpc/ChannelLogger;Ljava/util/concurrent/Executor;Ljava/lang/String;Lio/grpc/NameResolver$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Integer;
    .param p2, "x1"    # Lio/grpc/ProxyDetector;
    .param p3, "x2"    # Lio/grpc/SynchronizationContext;
    .param p4, "x3"    # Lio/grpc/NameResolver$ServiceConfigParser;
    .param p5, "x4"    # Ljava/util/concurrent/ScheduledExecutorService;
    .param p6, "x5"    # Lio/grpc/ChannelLogger;
    .param p7, "x6"    # Ljava/util/concurrent/Executor;
    .param p8, "x7"    # Ljava/lang/String;
    .param p9, "x8"    # Lio/grpc/NameResolver$1;

    .line 260
    invoke-direct/range {p0 .. p8}, Lio/grpc/NameResolver$Args;-><init>(Ljava/lang/Integer;Lio/grpc/ProxyDetector;Lio/grpc/SynchronizationContext;Lio/grpc/NameResolver$ServiceConfigParser;Ljava/util/concurrent/ScheduledExecutorService;Lio/grpc/ChannelLogger;Ljava/util/concurrent/Executor;Ljava/lang/String;)V

    return-void
.end method

.method public static newBuilder()Lio/grpc/NameResolver$Args$Builder;
    .locals 1

    .line 424
    new-instance v0, Lio/grpc/NameResolver$Args$Builder;

    invoke-direct {v0}, Lio/grpc/NameResolver$Args$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getChannelLogger()Lio/grpc/ChannelLogger;
    .locals 2

    .line 354
    iget-object v0, p0, Lio/grpc/NameResolver$Args;->channelLogger:Lio/grpc/ChannelLogger;

    if-eqz v0, :cond_0

    .line 357
    return-object v0

    .line 355
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ChannelLogger is not set in Builder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDefaultPort()I
    .locals 1

    .line 296
    iget v0, p0, Lio/grpc/NameResolver$Args;->defaultPort:I

    return v0
.end method

.method public getOffloadExecutor()Ljava/util/concurrent/Executor;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 369
    iget-object v0, p0, Lio/grpc/NameResolver$Args;->executor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public getOverrideAuthority()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 382
    iget-object v0, p0, Lio/grpc/NameResolver$Args;->overrideAuthority:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyDetector()Lio/grpc/ProxyDetector;
    .locals 1

    .line 306
    iget-object v0, p0, Lio/grpc/NameResolver$Args;->proxyDetector:Lio/grpc/ProxyDetector;

    return-object v0
.end method

.method public getScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 2

    .line 332
    iget-object v0, p0, Lio/grpc/NameResolver$Args;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    .line 335
    return-object v0

    .line 333
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScheduledExecutorService not set in Builder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getServiceConfigParser()Lio/grpc/NameResolver$ServiceConfigParser;
    .locals 1

    .line 344
    iget-object v0, p0, Lio/grpc/NameResolver$Args;->serviceConfigParser:Lio/grpc/NameResolver$ServiceConfigParser;

    return-object v0
.end method

.method public getSynchronizationContext()Lio/grpc/SynchronizationContext;
    .locals 1

    .line 316
    iget-object v0, p0, Lio/grpc/NameResolver$Args;->syncContext:Lio/grpc/SynchronizationContext;

    return-object v0
.end method

.method public toBuilder()Lio/grpc/NameResolver$Args$Builder;
    .locals 2

    .line 406
    new-instance v0, Lio/grpc/NameResolver$Args$Builder;

    invoke-direct {v0}, Lio/grpc/NameResolver$Args$Builder;-><init>()V

    .line 407
    .local v0, "builder":Lio/grpc/NameResolver$Args$Builder;
    iget v1, p0, Lio/grpc/NameResolver$Args;->defaultPort:I

    invoke-virtual {v0, v1}, Lio/grpc/NameResolver$Args$Builder;->setDefaultPort(I)Lio/grpc/NameResolver$Args$Builder;

    .line 408
    iget-object v1, p0, Lio/grpc/NameResolver$Args;->proxyDetector:Lio/grpc/ProxyDetector;

    invoke-virtual {v0, v1}, Lio/grpc/NameResolver$Args$Builder;->setProxyDetector(Lio/grpc/ProxyDetector;)Lio/grpc/NameResolver$Args$Builder;

    .line 409
    iget-object v1, p0, Lio/grpc/NameResolver$Args;->syncContext:Lio/grpc/SynchronizationContext;

    invoke-virtual {v0, v1}, Lio/grpc/NameResolver$Args$Builder;->setSynchronizationContext(Lio/grpc/SynchronizationContext;)Lio/grpc/NameResolver$Args$Builder;

    .line 410
    iget-object v1, p0, Lio/grpc/NameResolver$Args;->serviceConfigParser:Lio/grpc/NameResolver$ServiceConfigParser;

    invoke-virtual {v0, v1}, Lio/grpc/NameResolver$Args$Builder;->setServiceConfigParser(Lio/grpc/NameResolver$ServiceConfigParser;)Lio/grpc/NameResolver$Args$Builder;

    .line 411
    iget-object v1, p0, Lio/grpc/NameResolver$Args;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v0, v1}, Lio/grpc/NameResolver$Args$Builder;->setScheduledExecutorService(Ljava/util/concurrent/ScheduledExecutorService;)Lio/grpc/NameResolver$Args$Builder;

    .line 412
    iget-object v1, p0, Lio/grpc/NameResolver$Args;->channelLogger:Lio/grpc/ChannelLogger;

    invoke-virtual {v0, v1}, Lio/grpc/NameResolver$Args$Builder;->setChannelLogger(Lio/grpc/ChannelLogger;)Lio/grpc/NameResolver$Args$Builder;

    .line 413
    iget-object v1, p0, Lio/grpc/NameResolver$Args;->executor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1}, Lio/grpc/NameResolver$Args$Builder;->setOffloadExecutor(Ljava/util/concurrent/Executor;)Lio/grpc/NameResolver$Args$Builder;

    .line 414
    iget-object v1, p0, Lio/grpc/NameResolver$Args;->overrideAuthority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/grpc/NameResolver$Args$Builder;->setOverrideAuthority(Ljava/lang/String;)Lio/grpc/NameResolver$Args$Builder;

    .line 415
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 388
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget v1, p0, Lio/grpc/NameResolver$Args;->defaultPort:I

    .line 389
    const-string v2, "defaultPort"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/NameResolver$Args;->proxyDetector:Lio/grpc/ProxyDetector;

    .line 390
    const-string v2, "proxyDetector"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/NameResolver$Args;->syncContext:Lio/grpc/SynchronizationContext;

    .line 391
    const-string v2, "syncContext"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/NameResolver$Args;->serviceConfigParser:Lio/grpc/NameResolver$ServiceConfigParser;

    .line 392
    const-string v2, "serviceConfigParser"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/NameResolver$Args;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 393
    const-string v2, "scheduledExecutorService"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/NameResolver$Args;->channelLogger:Lio/grpc/ChannelLogger;

    .line 394
    const-string v2, "channelLogger"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/NameResolver$Args;->executor:Ljava/util/concurrent/Executor;

    .line 395
    const-string v2, "executor"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/NameResolver$Args;->overrideAuthority:Ljava/lang/String;

    .line 396
    const-string v2, "overrideAuthority"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 397
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 388
    return-object v0
.end method
