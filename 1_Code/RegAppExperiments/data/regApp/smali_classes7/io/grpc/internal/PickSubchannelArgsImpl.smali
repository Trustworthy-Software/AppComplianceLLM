.class public final Lio/grpc/internal/PickSubchannelArgsImpl;
.super Lio/grpc/LoadBalancer$PickSubchannelArgs;
.source "PickSubchannelArgsImpl.java"


# instance fields
.field private final callOptions:Lio/grpc/CallOptions;

.field private final headers:Lio/grpc/Metadata;

.field private final method:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/CallOptions;)V
    .locals 1
    .param p2, "headers"    # Lio/grpc/Metadata;
    .param p3, "callOptions"    # Lio/grpc/CallOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/MethodDescriptor<",
            "**>;",
            "Lio/grpc/Metadata;",
            "Lio/grpc/CallOptions;",
            ")V"
        }
    .end annotation

    .line 37
    .local p1, "method":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<**>;"
    invoke-direct {p0}, Lio/grpc/LoadBalancer$PickSubchannelArgs;-><init>()V

    .line 38
    const-string v0, "method"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/MethodDescriptor;

    iput-object v0, p0, Lio/grpc/internal/PickSubchannelArgsImpl;->method:Lio/grpc/MethodDescriptor;

    .line 39
    const-string v0, "headers"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/Metadata;

    iput-object v0, p0, Lio/grpc/internal/PickSubchannelArgsImpl;->headers:Lio/grpc/Metadata;

    .line 40
    const-string v0, "callOptions"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/CallOptions;

    iput-object v0, p0, Lio/grpc/internal/PickSubchannelArgsImpl;->callOptions:Lio/grpc/CallOptions;

    .line 41
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 60
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 61
    return v0

    .line 63
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 66
    :cond_1
    move-object v2, p1

    check-cast v2, Lio/grpc/internal/PickSubchannelArgsImpl;

    .line 67
    .local v2, "that":Lio/grpc/internal/PickSubchannelArgsImpl;
    iget-object v3, p0, Lio/grpc/internal/PickSubchannelArgsImpl;->callOptions:Lio/grpc/CallOptions;

    iget-object v4, v2, Lio/grpc/internal/PickSubchannelArgsImpl;->callOptions:Lio/grpc/CallOptions;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/grpc/internal/PickSubchannelArgsImpl;->headers:Lio/grpc/Metadata;

    iget-object v4, v2, Lio/grpc/internal/PickSubchannelArgsImpl;->headers:Lio/grpc/Metadata;

    .line 68
    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/grpc/internal/PickSubchannelArgsImpl;->method:Lio/grpc/MethodDescriptor;

    iget-object v4, v2, Lio/grpc/internal/PickSubchannelArgsImpl;->method:Lio/grpc/MethodDescriptor;

    .line 69
    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 67
    :goto_0
    return v0

    .line 64
    .end local v2    # "that":Lio/grpc/internal/PickSubchannelArgsImpl;
    :cond_3
    :goto_1
    return v1
.end method

.method public getCallOptions()Lio/grpc/CallOptions;
    .locals 1

    .line 50
    iget-object v0, p0, Lio/grpc/internal/PickSubchannelArgsImpl;->callOptions:Lio/grpc/CallOptions;

    return-object v0
.end method

.method public getHeaders()Lio/grpc/Metadata;
    .locals 1

    .line 45
    iget-object v0, p0, Lio/grpc/internal/PickSubchannelArgsImpl;->headers:Lio/grpc/Metadata;

    return-object v0
.end method

.method public getMethodDescriptor()Lio/grpc/MethodDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/MethodDescriptor<",
            "**>;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lio/grpc/internal/PickSubchannelArgsImpl;->method:Lio/grpc/MethodDescriptor;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 74
    iget-object v0, p0, Lio/grpc/internal/PickSubchannelArgsImpl;->callOptions:Lio/grpc/CallOptions;

    iget-object v1, p0, Lio/grpc/internal/PickSubchannelArgsImpl;->headers:Lio/grpc/Metadata;

    iget-object v2, p0, Lio/grpc/internal/PickSubchannelArgsImpl;->method:Lio/grpc/MethodDescriptor;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/PickSubchannelArgsImpl;->method:Lio/grpc/MethodDescriptor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " headers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/PickSubchannelArgsImpl;->headers:Lio/grpc/Metadata;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " callOptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/PickSubchannelArgsImpl;->callOptions:Lio/grpc/CallOptions;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
