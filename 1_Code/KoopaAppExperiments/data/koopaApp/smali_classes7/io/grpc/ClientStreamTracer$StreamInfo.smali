.class public final Lio/grpc/ClientStreamTracer$StreamInfo;
.super Ljava/lang/Object;
.source "ClientStreamTracer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/ClientStreamTracer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StreamInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/ClientStreamTracer$StreamInfo$Builder;
    }
.end annotation


# instance fields
.field private final callOptions:Lio/grpc/CallOptions;

.field private final isTransparentRetry:Z

.field private final previousAttempts:I


# direct methods
.method constructor <init>(Lio/grpc/CallOptions;IZ)V
    .locals 1
    .param p1, "callOptions"    # Lio/grpc/CallOptions;
    .param p2, "previousAttempts"    # I
    .param p3, "isTransparentRetry"    # Z

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const-string v0, "callOptions"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/CallOptions;

    iput-object v0, p0, Lio/grpc/ClientStreamTracer$StreamInfo;->callOptions:Lio/grpc/CallOptions;

    .line 101
    iput p2, p0, Lio/grpc/ClientStreamTracer$StreamInfo;->previousAttempts:I

    .line 102
    iput-boolean p3, p0, Lio/grpc/ClientStreamTracer$StreamInfo;->isTransparentRetry:Z

    .line 103
    return-void
.end method

.method public static newBuilder()Lio/grpc/ClientStreamTracer$StreamInfo$Builder;
    .locals 1

    .line 148
    new-instance v0, Lio/grpc/ClientStreamTracer$StreamInfo$Builder;

    invoke-direct {v0}, Lio/grpc/ClientStreamTracer$StreamInfo$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getCallOptions()Lio/grpc/CallOptions;
    .locals 1

    .line 109
    iget-object v0, p0, Lio/grpc/ClientStreamTracer$StreamInfo;->callOptions:Lio/grpc/CallOptions;

    return-object v0
.end method

.method public getPreviousAttempts()I
    .locals 1

    .line 118
    iget v0, p0, Lio/grpc/ClientStreamTracer$StreamInfo;->previousAttempts:I

    return v0
.end method

.method public isTransparentRetry()Z
    .locals 1

    .line 127
    iget-boolean v0, p0, Lio/grpc/ClientStreamTracer$StreamInfo;->isTransparentRetry:Z

    return v0
.end method

.method public toBuilder()Lio/grpc/ClientStreamTracer$StreamInfo$Builder;
    .locals 2

    .line 136
    new-instance v0, Lio/grpc/ClientStreamTracer$StreamInfo$Builder;

    invoke-direct {v0}, Lio/grpc/ClientStreamTracer$StreamInfo$Builder;-><init>()V

    iget-object v1, p0, Lio/grpc/ClientStreamTracer$StreamInfo;->callOptions:Lio/grpc/CallOptions;

    .line 137
    invoke-virtual {v0, v1}, Lio/grpc/ClientStreamTracer$StreamInfo$Builder;->setCallOptions(Lio/grpc/CallOptions;)Lio/grpc/ClientStreamTracer$StreamInfo$Builder;

    move-result-object v0

    iget v1, p0, Lio/grpc/ClientStreamTracer$StreamInfo;->previousAttempts:I

    .line 138
    invoke-virtual {v0, v1}, Lio/grpc/ClientStreamTracer$StreamInfo$Builder;->setPreviousAttempts(I)Lio/grpc/ClientStreamTracer$StreamInfo$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lio/grpc/ClientStreamTracer$StreamInfo;->isTransparentRetry:Z

    .line 139
    invoke-virtual {v0, v1}, Lio/grpc/ClientStreamTracer$StreamInfo$Builder;->setIsTransparentRetry(Z)Lio/grpc/ClientStreamTracer$StreamInfo$Builder;

    move-result-object v0

    .line 136
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 153
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/ClientStreamTracer$StreamInfo;->callOptions:Lio/grpc/CallOptions;

    .line 154
    const-string v2, "callOptions"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget v1, p0, Lio/grpc/ClientStreamTracer$StreamInfo;->previousAttempts:I

    .line 155
    const-string v2, "previousAttempts"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-boolean v1, p0, Lio/grpc/ClientStreamTracer$StreamInfo;->isTransparentRetry:Z

    .line 156
    const-string v2, "isTransparentRetry"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 157
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 153
    return-object v0
.end method
