.class public final Lio/grpc/internal/ServiceConfigUtil$PolicySelection;
.super Ljava/lang/Object;
.source "ServiceConfigUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/ServiceConfigUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PolicySelection"
.end annotation


# instance fields
.field final config:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final provider:Lio/grpc/LoadBalancerProvider;


# direct methods
.method public constructor <init>(Lio/grpc/LoadBalancerProvider;Ljava/lang/Object;)V
    .locals 1
    .param p1, "provider"    # Lio/grpc/LoadBalancerProvider;
    .param p2, "config"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 422
    const-string v0, "provider"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/LoadBalancerProvider;

    iput-object v0, p0, Lio/grpc/internal/ServiceConfigUtil$PolicySelection;->provider:Lio/grpc/LoadBalancerProvider;

    .line 423
    iput-object p2, p0, Lio/grpc/internal/ServiceConfigUtil$PolicySelection;->config:Ljava/lang/Object;

    .line 424
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 437
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 438
    return v0

    .line 440
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 443
    :cond_1
    move-object v2, p1

    check-cast v2, Lio/grpc/internal/ServiceConfigUtil$PolicySelection;

    .line 444
    .local v2, "that":Lio/grpc/internal/ServiceConfigUtil$PolicySelection;
    iget-object v3, p0, Lio/grpc/internal/ServiceConfigUtil$PolicySelection;->provider:Lio/grpc/LoadBalancerProvider;

    iget-object v4, v2, Lio/grpc/internal/ServiceConfigUtil$PolicySelection;->provider:Lio/grpc/LoadBalancerProvider;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/grpc/internal/ServiceConfigUtil$PolicySelection;->config:Ljava/lang/Object;

    iget-object v4, v2, Lio/grpc/internal/ServiceConfigUtil$PolicySelection;->config:Ljava/lang/Object;

    .line 445
    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 444
    :goto_0
    return v0

    .line 441
    .end local v2    # "that":Lio/grpc/internal/ServiceConfigUtil$PolicySelection;
    :cond_3
    :goto_1
    return v1
.end method

.method public getConfig()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 432
    iget-object v0, p0, Lio/grpc/internal/ServiceConfigUtil$PolicySelection;->config:Ljava/lang/Object;

    return-object v0
.end method

.method public getProvider()Lio/grpc/LoadBalancerProvider;
    .locals 1

    .line 427
    iget-object v0, p0, Lio/grpc/internal/ServiceConfigUtil$PolicySelection;->provider:Lio/grpc/LoadBalancerProvider;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 450
    iget-object v0, p0, Lio/grpc/internal/ServiceConfigUtil$PolicySelection;->provider:Lio/grpc/LoadBalancerProvider;

    iget-object v1, p0, Lio/grpc/internal/ServiceConfigUtil$PolicySelection;->config:Ljava/lang/Object;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 455
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/ServiceConfigUtil$PolicySelection;->provider:Lio/grpc/LoadBalancerProvider;

    .line 456
    const-string v2, "provider"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/ServiceConfigUtil$PolicySelection;->config:Ljava/lang/Object;

    .line 457
    const-string v2, "config"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 458
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 455
    return-object v0
.end method
