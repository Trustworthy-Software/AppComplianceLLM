.class final Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;
.super Ljava/lang/Object;
.source "ManagedChannelServiceConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/ManagedChannelServiceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MethodInfo"
.end annotation


# static fields
.field static final KEY:Lio/grpc/CallOptions$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/CallOptions$Key<",
            "Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final hedgingPolicy:Lio/grpc/internal/HedgingPolicy;

.field final maxInboundMessageSize:Ljava/lang/Integer;

.field final maxOutboundMessageSize:Ljava/lang/Integer;

.field final retryPolicy:Lio/grpc/internal/RetryPolicy;

.field final timeoutNanos:Ljava/lang/Long;

.field final waitForReady:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 249
    nop

    .line 250
    const-string v0, "io.grpc.internal.ManagedChannelServiceConfig.MethodInfo"

    invoke-static {v0}, Lio/grpc/CallOptions$Key;->create(Ljava/lang/String;)Lio/grpc/CallOptions$Key;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;->KEY:Lio/grpc/CallOptions$Key;

    .line 249
    return-void
.end method

.method constructor <init>(Ljava/util/Map;ZII)V
    .locals 5
    .param p2, "retryEnabled"    # Z
    .param p3, "maxRetryAttemptsLimit"    # I
    .param p4, "maxHedgedAttemptsLimit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;ZII)V"
        }
    .end annotation

    .line 267
    .local p1, "methodConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    invoke-static {p1}, Lio/grpc/internal/ServiceConfigUtil;->getTimeoutFromMethodConfig(Ljava/util/Map;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;->timeoutNanos:Ljava/lang/Long;

    .line 269
    invoke-static {p1}, Lio/grpc/internal/ServiceConfigUtil;->getWaitForReadyFromMethodConfig(Ljava/util/Map;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;->waitForReady:Ljava/lang/Boolean;

    .line 270
    nop

    .line 271
    invoke-static {p1}, Lio/grpc/internal/ServiceConfigUtil;->getMaxResponseMessageBytesFromMethodConfig(Ljava/util/Map;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;->maxInboundMessageSize:Ljava/lang/Integer;

    .line 272
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 273
    nop

    .line 274
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 273
    :goto_0
    const-string v4, "maxInboundMessageSize %s exceeds bounds"

    invoke-static {v3, v4, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 277
    :cond_1
    nop

    .line 278
    invoke-static {p1}, Lio/grpc/internal/ServiceConfigUtil;->getMaxRequestMessageBytesFromMethodConfig(Ljava/util/Map;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;->maxOutboundMessageSize:Ljava/lang/Integer;

    .line 279
    if-eqz v0, :cond_3

    .line 280
    nop

    .line 281
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    .line 280
    :goto_1
    const-string v2, "maxOutboundMessageSize %s exceeds bounds"

    invoke-static {v1, v2, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 286
    :cond_3
    const/4 v0, 0x0

    if-eqz p2, :cond_4

    invoke-static {p1}, Lio/grpc/internal/ServiceConfigUtil;->getRetryPolicyFromMethodConfig(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    goto :goto_2

    :cond_4
    move-object v1, v0

    .line 287
    .local v1, "retryPolicyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    :goto_2
    if-nez v1, :cond_5

    .line 288
    move-object v2, v0

    goto :goto_3

    :cond_5
    invoke-static {v1, p3}, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;->retryPolicy(Ljava/util/Map;I)Lio/grpc/internal/RetryPolicy;

    move-result-object v2

    :goto_3
    iput-object v2, p0, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;->retryPolicy:Lio/grpc/internal/RetryPolicy;

    .line 291
    if-eqz p2, :cond_6

    invoke-static {p1}, Lio/grpc/internal/ServiceConfigUtil;->getHedgingPolicyFromMethodConfig(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    goto :goto_4

    :cond_6
    move-object v2, v0

    .line 292
    .local v2, "hedgingPolicyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    :goto_4
    if-nez v2, :cond_7

    .line 293
    goto :goto_5

    :cond_7
    invoke-static {v2, p4}, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;->hedgingPolicy(Ljava/util/Map;I)Lio/grpc/internal/HedgingPolicy;

    move-result-object v0

    :goto_5
    iput-object v0, p0, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;->hedgingPolicy:Lio/grpc/internal/HedgingPolicy;

    .line 294
    return-void
.end method

.method private static hedgingPolicy(Ljava/util/Map;I)Lio/grpc/internal/HedgingPolicy;
    .locals 8
    .param p1, "maxAttemptsLimit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;I)",
            "Lio/grpc/internal/HedgingPolicy;"
        }
    .end annotation

    .line 382
    .local p0, "hedgingPolicy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    nop

    .line 383
    invoke-static {p0}, Lio/grpc/internal/ServiceConfigUtil;->getMaxAttemptsFromHedgingPolicy(Ljava/util/Map;)Ljava/lang/Integer;

    move-result-object v0

    .line 382
    const-string v1, "maxAttempts cannot be empty"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 385
    .local v0, "maxAttempts":I
    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const-string v4, "maxAttempts must be greater than 1: %s"

    invoke-static {v1, v4, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 386
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 388
    nop

    .line 389
    invoke-static {p0}, Lio/grpc/internal/ServiceConfigUtil;->getHedgingDelayNanosFromHedgingPolicy(Ljava/util/Map;)Ljava/lang/Long;

    move-result-object v1

    .line 388
    const-string v4, "hedgingDelay cannot be empty"

    invoke-static {v1, v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 391
    .local v4, "hedgingDelayNanos":J
    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-ltz v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    const-string v1, "hedgingDelay must not be negative: %s"

    invoke-static {v2, v1, v4, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 394
    new-instance v1, Lio/grpc/internal/HedgingPolicy;

    .line 396
    invoke-static {p0}, Lio/grpc/internal/ServiceConfigUtil;->getNonFatalStatusCodesFromHedgingPolicy(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v0, v4, v5, v2}, Lio/grpc/internal/HedgingPolicy;-><init>(IJLjava/util/Set;)V

    .line 394
    return-object v1
.end method

.method private static retryPolicy(Ljava/util/Map;I)Lio/grpc/internal/RetryPolicy;
    .locals 21
    .param p1, "maxAttemptsLimit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;I)",
            "Lio/grpc/internal/RetryPolicy;"
        }
    .end annotation

    .line 334
    .local p0, "retryPolicy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    nop

    .line 335
    invoke-static/range {p0 .. p0}, Lio/grpc/internal/ServiceConfigUtil;->getMaxAttemptsFromRetryPolicy(Ljava/util/Map;)Ljava/lang/Integer;

    move-result-object v0

    .line 334
    const-string v1, "maxAttempts cannot be empty"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 337
    .local v0, "maxAttempts":I
    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const-string v4, "maxAttempts must be greater than 1: %s"

    invoke-static {v1, v4, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 338
    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 340
    nop

    .line 341
    invoke-static/range {p0 .. p0}, Lio/grpc/internal/ServiceConfigUtil;->getInitialBackoffNanosFromRetryPolicy(Ljava/util/Map;)Ljava/lang/Long;

    move-result-object v4

    .line 340
    const-string v5, "initialBackoff cannot be empty"

    invoke-static {v4, v5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 343
    .local v14, "initialBackoffNanos":J
    const-wide/16 v4, 0x0

    cmp-long v6, v14, v4

    if-lez v6, :cond_1

    move v6, v2

    goto :goto_1

    :cond_1
    move v6, v3

    :goto_1
    const-string v7, "initialBackoffNanos must be greater than 0: %s"

    invoke-static {v6, v7, v14, v15}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 348
    nop

    .line 349
    invoke-static/range {p0 .. p0}, Lio/grpc/internal/ServiceConfigUtil;->getMaxBackoffNanosFromRetryPolicy(Ljava/util/Map;)Ljava/lang/Long;

    move-result-object v6

    .line 348
    const-string v7, "maxBackoff cannot be empty"

    invoke-static {v6, v7}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 351
    .local v12, "maxBackoffNanos":J
    cmp-long v6, v12, v4

    if-lez v6, :cond_2

    move v6, v2

    goto :goto_2

    :cond_2
    move v6, v3

    :goto_2
    const-string v7, "maxBackoff must be greater than 0: %s"

    invoke-static {v6, v7, v12, v13}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 354
    nop

    .line 355
    invoke-static/range {p0 .. p0}, Lio/grpc/internal/ServiceConfigUtil;->getBackoffMultiplierFromRetryPolicy(Ljava/util/Map;)Ljava/lang/Double;

    move-result-object v6

    .line 354
    const-string v7, "backoffMultiplier cannot be empty"

    invoke-static {v6, v7}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    .line 357
    .local v16, "backoffMultiplier":D
    const-wide/16 v6, 0x0

    cmpl-double v6, v16, v6

    if-lez v6, :cond_3

    move v6, v2

    goto :goto_3

    :cond_3
    move v6, v3

    .line 360
    :goto_3
    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    .line 357
    const-string v8, "backoffMultiplier must be greater than 0: %s"

    invoke-static {v6, v8, v7}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 362
    nop

    .line 363
    invoke-static/range {p0 .. p0}, Lio/grpc/internal/ServiceConfigUtil;->getPerAttemptRecvTimeoutNanosFromRetryPolicy(Ljava/util/Map;)Ljava/lang/Long;

    move-result-object v10

    .line 364
    .local v10, "perAttemptRecvTimeout":Ljava/lang/Long;
    if-eqz v10, :cond_5

    .line 365
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v4, v6, v4

    if-ltz v4, :cond_4

    goto :goto_4

    :cond_4
    move v4, v3

    goto :goto_5

    :cond_5
    :goto_4
    move v4, v2

    .line 364
    :goto_5
    const-string v5, "perAttemptRecvTimeout cannot be negative: %s"

    invoke-static {v4, v5, v10}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 369
    nop

    .line 370
    invoke-static/range {p0 .. p0}, Lio/grpc/internal/ServiceConfigUtil;->getRetryableStatusCodesFromRetryPolicy(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v18

    .line 371
    .local v18, "retryableCodes":Ljava/util/Set;, "Ljava/util/Set<Lio/grpc/Status$Code;>;"
    if-nez v10, :cond_7

    .line 372
    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_6

    :cond_6
    move v2, v3

    goto :goto_7

    :cond_7
    :goto_6
    nop

    .line 371
    :goto_7
    const-string v3, "retryableStatusCodes cannot be empty without perAttemptRecvTimeout"

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 375
    new-instance v2, Lio/grpc/internal/RetryPolicy;

    move-object v4, v2

    move v5, v0

    move-wide v6, v14

    move-wide v8, v12

    move-object v3, v10

    .end local v10    # "perAttemptRecvTimeout":Ljava/lang/Long;
    .local v3, "perAttemptRecvTimeout":Ljava/lang/Long;
    move-wide/from16 v10, v16

    move-wide/from16 v19, v12

    .end local v12    # "maxBackoffNanos":J
    .local v19, "maxBackoffNanos":J
    move-object v12, v3

    move-object/from16 v13, v18

    invoke-direct/range {v4 .. v13}, Lio/grpc/internal/RetryPolicy;-><init>(IJJDLjava/lang/Long;Ljava/util/Set;)V

    return-object v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 309
    instance-of v0, p1, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 310
    return v1

    .line 312
    :cond_0
    move-object v0, p1

    check-cast v0, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;

    .line 313
    .local v0, "that":Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;
    iget-object v2, p0, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;->timeoutNanos:Ljava/lang/Long;

    iget-object v3, v0, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;->timeoutNanos:Ljava/lang/Long;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;->waitForReady:Ljava/lang/Boolean;

    iget-object v3, v0, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;->waitForReady:Ljava/lang/Boolean;

    .line 314
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;->maxInboundMessageSize:Ljava/lang/Integer;

    iget-object v3, v0, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;->maxInboundMessageSize:Ljava/lang/Integer;

    .line 315
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;->maxOutboundMessageSize:Ljava/lang/Integer;

    iget-object v3, v0, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;->maxOutboundMessageSize:Ljava/lang/Integer;

    .line 316
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;->retryPolicy:Lio/grpc/internal/RetryPolicy;

    iget-object v3, v0, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;->retryPolicy:Lio/grpc/internal/RetryPolicy;

    .line 317
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;->hedgingPolicy:Lio/grpc/internal/HedgingPolicy;

    iget-object v3, v0, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;->hedgingPolicy:Lio/grpc/internal/HedgingPolicy;

    .line 318
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 313
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 6

    .line 298
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;->timeoutNanos:Ljava/lang/Long;

    iget-object v1, p0, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;->waitForReady:Ljava/lang/Boolean;

    iget-object v2, p0, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;->maxInboundMessageSize:Ljava/lang/Integer;

    iget-object v3, p0, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;->maxOutboundMessageSize:Ljava/lang/Integer;

    iget-object v4, p0, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;->retryPolicy:Lio/grpc/internal/RetryPolicy;

    iget-object v5, p0, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;->hedgingPolicy:Lio/grpc/internal/HedgingPolicy;

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 323
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;->timeoutNanos:Ljava/lang/Long;

    .line 324
    const-string v2, "timeoutNanos"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;->waitForReady:Ljava/lang/Boolean;

    .line 325
    const-string v2, "waitForReady"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;->maxInboundMessageSize:Ljava/lang/Integer;

    .line 326
    const-string v2, "maxInboundMessageSize"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;->maxOutboundMessageSize:Ljava/lang/Integer;

    .line 327
    const-string v2, "maxOutboundMessageSize"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;->retryPolicy:Lio/grpc/internal/RetryPolicy;

    .line 328
    const-string v2, "retryPolicy"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;->hedgingPolicy:Lio/grpc/internal/HedgingPolicy;

    .line 329
    const-string v2, "hedgingPolicy"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 330
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 323
    return-object v0
.end method
