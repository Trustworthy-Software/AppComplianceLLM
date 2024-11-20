.class final Lio/grpc/internal/RetryPolicy;
.super Ljava/lang/Object;
.source "RetryPolicy.java"


# instance fields
.field final backoffMultiplier:D

.field final initialBackoffNanos:J

.field final maxAttempts:I

.field final maxBackoffNanos:J

.field final perAttemptRecvTimeoutNanos:Ljava/lang/Long;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final retryableStatusCodes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/grpc/Status$Code;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(IJJDLjava/lang/Long;Ljava/util/Set;)V
    .locals 1
    .param p1, "maxAttempts"    # I
    .param p2, "initialBackoffNanos"    # J
    .param p4, "maxBackoffNanos"    # J
    .param p6, "backoffMultiplier"    # D
    .param p8, "perAttemptRecvTimeoutNanos"    # Ljava/lang/Long;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/util/Set;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJD",
            "Ljava/lang/Long;",
            "Ljava/util/Set<",
            "Lio/grpc/Status$Code;",
            ">;)V"
        }
    .end annotation

    .line 51
    .local p9, "retryableStatusCodes":Ljava/util/Set;, "Ljava/util/Set<Lio/grpc/Status$Code;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p1, p0, Lio/grpc/internal/RetryPolicy;->maxAttempts:I

    .line 53
    iput-wide p2, p0, Lio/grpc/internal/RetryPolicy;->initialBackoffNanos:J

    .line 54
    iput-wide p4, p0, Lio/grpc/internal/RetryPolicy;->maxBackoffNanos:J

    .line 55
    iput-wide p6, p0, Lio/grpc/internal/RetryPolicy;->backoffMultiplier:D

    .line 56
    iput-object p8, p0, Lio/grpc/internal/RetryPolicy;->perAttemptRecvTimeoutNanos:Ljava/lang/Long;

    .line 57
    invoke-static {p9}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/RetryPolicy;->retryableStatusCodes:Ljava/util/Set;

    .line 58
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "other"    # Ljava/lang/Object;

    .line 73
    instance-of v0, p1, Lio/grpc/internal/RetryPolicy;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 74
    return v1

    .line 76
    :cond_0
    move-object v0, p1

    check-cast v0, Lio/grpc/internal/RetryPolicy;

    .line 77
    .local v0, "that":Lio/grpc/internal/RetryPolicy;
    iget v2, p0, Lio/grpc/internal/RetryPolicy;->maxAttempts:I

    iget v3, v0, Lio/grpc/internal/RetryPolicy;->maxAttempts:I

    if-ne v2, v3, :cond_1

    iget-wide v2, p0, Lio/grpc/internal/RetryPolicy;->initialBackoffNanos:J

    iget-wide v4, v0, Lio/grpc/internal/RetryPolicy;->initialBackoffNanos:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iget-wide v2, p0, Lio/grpc/internal/RetryPolicy;->maxBackoffNanos:J

    iget-wide v4, v0, Lio/grpc/internal/RetryPolicy;->maxBackoffNanos:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iget-wide v2, p0, Lio/grpc/internal/RetryPolicy;->backoffMultiplier:D

    iget-wide v4, v0, Lio/grpc/internal/RetryPolicy;->backoffMultiplier:D

    .line 80
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lio/grpc/internal/RetryPolicy;->perAttemptRecvTimeoutNanos:Ljava/lang/Long;

    iget-object v3, v0, Lio/grpc/internal/RetryPolicy;->perAttemptRecvTimeoutNanos:Ljava/lang/Long;

    .line 81
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lio/grpc/internal/RetryPolicy;->retryableStatusCodes:Ljava/util/Set;

    iget-object v3, v0, Lio/grpc/internal/RetryPolicy;->retryableStatusCodes:Ljava/util/Set;

    .line 82
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 77
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 7

    .line 62
    iget v0, p0, Lio/grpc/internal/RetryPolicy;->maxAttempts:I

    .line 63
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-wide v2, p0, Lio/grpc/internal/RetryPolicy;->initialBackoffNanos:J

    .line 64
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p0, Lio/grpc/internal/RetryPolicy;->maxBackoffNanos:J

    .line 65
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, p0, Lio/grpc/internal/RetryPolicy;->backoffMultiplier:D

    .line 66
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iget-object v5, p0, Lio/grpc/internal/RetryPolicy;->perAttemptRecvTimeoutNanos:Ljava/lang/Long;

    iget-object v6, p0, Lio/grpc/internal/RetryPolicy;->retryableStatusCodes:Ljava/util/Set;

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    .line 62
    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 87
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget v1, p0, Lio/grpc/internal/RetryPolicy;->maxAttempts:I

    .line 88
    const-string v2, "maxAttempts"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-wide v1, p0, Lio/grpc/internal/RetryPolicy;->initialBackoffNanos:J

    .line 89
    const-string v3, "initialBackoffNanos"

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-wide v1, p0, Lio/grpc/internal/RetryPolicy;->maxBackoffNanos:J

    .line 90
    const-string v3, "maxBackoffNanos"

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-wide v1, p0, Lio/grpc/internal/RetryPolicy;->backoffMultiplier:D

    .line 91
    const-string v3, "backoffMultiplier"

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;D)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/RetryPolicy;->perAttemptRecvTimeoutNanos:Ljava/lang/Long;

    .line 92
    const-string v2, "perAttemptRecvTimeoutNanos"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/RetryPolicy;->retryableStatusCodes:Ljava/util/Set;

    .line 93
    const-string v2, "retryableStatusCodes"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    return-object v0
.end method
