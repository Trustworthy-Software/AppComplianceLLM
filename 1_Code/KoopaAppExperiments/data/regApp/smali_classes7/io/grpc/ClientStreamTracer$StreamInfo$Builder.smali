.class public final Lio/grpc/ClientStreamTracer$StreamInfo$Builder;
.super Ljava/lang/Object;
.source "ClientStreamTracer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/ClientStreamTracer$StreamInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private callOptions:Lio/grpc/CallOptions;

.field private isTransparentRetry:Z

.field private previousAttempts:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    sget-object v0, Lio/grpc/CallOptions;->DEFAULT:Lio/grpc/CallOptions;

    iput-object v0, p0, Lio/grpc/ClientStreamTracer$StreamInfo$Builder;->callOptions:Lio/grpc/CallOptions;

    .line 171
    return-void
.end method


# virtual methods
.method public build()Lio/grpc/ClientStreamTracer$StreamInfo;
    .locals 4

    .line 205
    new-instance v0, Lio/grpc/ClientStreamTracer$StreamInfo;

    iget-object v1, p0, Lio/grpc/ClientStreamTracer$StreamInfo$Builder;->callOptions:Lio/grpc/CallOptions;

    iget v2, p0, Lio/grpc/ClientStreamTracer$StreamInfo$Builder;->previousAttempts:I

    iget-boolean v3, p0, Lio/grpc/ClientStreamTracer$StreamInfo$Builder;->isTransparentRetry:Z

    invoke-direct {v0, v1, v2, v3}, Lio/grpc/ClientStreamTracer$StreamInfo;-><init>(Lio/grpc/CallOptions;IZ)V

    return-object v0
.end method

.method public setCallOptions(Lio/grpc/CallOptions;)Lio/grpc/ClientStreamTracer$StreamInfo$Builder;
    .locals 1
    .param p1, "callOptions"    # Lio/grpc/CallOptions;

    .line 177
    const-string v0, "callOptions cannot be null"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/CallOptions;

    iput-object v0, p0, Lio/grpc/ClientStreamTracer$StreamInfo$Builder;->callOptions:Lio/grpc/CallOptions;

    .line 178
    return-object p0
.end method

.method public setIsTransparentRetry(Z)Lio/grpc/ClientStreamTracer$StreamInfo$Builder;
    .locals 0
    .param p1, "isTransparentRetry"    # Z

    .line 197
    iput-boolean p1, p0, Lio/grpc/ClientStreamTracer$StreamInfo$Builder;->isTransparentRetry:Z

    .line 198
    return-object p0
.end method

.method public setPreviousAttempts(I)Lio/grpc/ClientStreamTracer$StreamInfo$Builder;
    .locals 0
    .param p1, "previousAttempts"    # I

    .line 187
    iput p1, p0, Lio/grpc/ClientStreamTracer$StreamInfo$Builder;->previousAttempts:I

    .line 188
    return-object p0
.end method
