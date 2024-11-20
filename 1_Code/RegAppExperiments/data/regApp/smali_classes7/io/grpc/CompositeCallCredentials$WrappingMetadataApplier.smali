.class final Lio/grpc/CompositeCallCredentials$WrappingMetadataApplier;
.super Lio/grpc/CallCredentials$MetadataApplier;
.source "CompositeCallCredentials.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/CompositeCallCredentials;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WrappingMetadataApplier"
.end annotation


# instance fields
.field private final appExecutor:Ljava/util/concurrent/Executor;

.field private final context:Lio/grpc/Context;

.field private final delegate:Lio/grpc/CallCredentials$MetadataApplier;

.field private final requestInfo:Lio/grpc/CallCredentials$RequestInfo;

.field final synthetic this$0:Lio/grpc/CompositeCallCredentials;


# direct methods
.method public constructor <init>(Lio/grpc/CompositeCallCredentials;Lio/grpc/CallCredentials$RequestInfo;Ljava/util/concurrent/Executor;Lio/grpc/CallCredentials$MetadataApplier;Lio/grpc/Context;)V
    .locals 0
    .param p2, "requestInfo"    # Lio/grpc/CallCredentials$RequestInfo;
    .param p3, "appExecutor"    # Ljava/util/concurrent/Executor;
    .param p4, "delegate"    # Lio/grpc/CallCredentials$MetadataApplier;
    .param p5, "context"    # Lio/grpc/Context;

    .line 53
    iput-object p1, p0, Lio/grpc/CompositeCallCredentials$WrappingMetadataApplier;->this$0:Lio/grpc/CompositeCallCredentials;

    invoke-direct {p0}, Lio/grpc/CallCredentials$MetadataApplier;-><init>()V

    .line 54
    iput-object p2, p0, Lio/grpc/CompositeCallCredentials$WrappingMetadataApplier;->requestInfo:Lio/grpc/CallCredentials$RequestInfo;

    .line 55
    iput-object p3, p0, Lio/grpc/CompositeCallCredentials$WrappingMetadataApplier;->appExecutor:Ljava/util/concurrent/Executor;

    .line 56
    const-string p1, "delegate"

    invoke-static {p4, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/CallCredentials$MetadataApplier;

    iput-object p1, p0, Lio/grpc/CompositeCallCredentials$WrappingMetadataApplier;->delegate:Lio/grpc/CallCredentials$MetadataApplier;

    .line 57
    const-string p1, "context"

    invoke-static {p5, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/Context;

    iput-object p1, p0, Lio/grpc/CompositeCallCredentials$WrappingMetadataApplier;->context:Lio/grpc/Context;

    .line 58
    return-void
.end method


# virtual methods
.method public apply(Lio/grpc/Metadata;)V
    .locals 6
    .param p1, "headers"    # Lio/grpc/Metadata;

    .line 62
    const-string v0, "headers"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lio/grpc/CompositeCallCredentials$WrappingMetadataApplier;->context:Lio/grpc/Context;

    invoke-virtual {v0}, Lio/grpc/Context;->attach()Lio/grpc/Context;

    move-result-object v0

    .line 65
    .local v0, "previous":Lio/grpc/Context;
    :try_start_0
    iget-object v1, p0, Lio/grpc/CompositeCallCredentials$WrappingMetadataApplier;->this$0:Lio/grpc/CompositeCallCredentials;

    invoke-static {v1}, Lio/grpc/CompositeCallCredentials;->access$000(Lio/grpc/CompositeCallCredentials;)Lio/grpc/CallCredentials;

    move-result-object v1

    iget-object v2, p0, Lio/grpc/CompositeCallCredentials$WrappingMetadataApplier;->requestInfo:Lio/grpc/CallCredentials$RequestInfo;

    iget-object v3, p0, Lio/grpc/CompositeCallCredentials$WrappingMetadataApplier;->appExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Lio/grpc/CompositeCallCredentials$CombiningMetadataApplier;

    iget-object v5, p0, Lio/grpc/CompositeCallCredentials$WrappingMetadataApplier;->delegate:Lio/grpc/CallCredentials$MetadataApplier;

    invoke-direct {v4, v5, p1}, Lio/grpc/CompositeCallCredentials$CombiningMetadataApplier;-><init>(Lio/grpc/CallCredentials$MetadataApplier;Lio/grpc/Metadata;)V

    invoke-virtual {v1, v2, v3, v4}, Lio/grpc/CallCredentials;->applyRequestMetadata(Lio/grpc/CallCredentials$RequestInfo;Ljava/util/concurrent/Executor;Lio/grpc/CallCredentials$MetadataApplier;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    iget-object v1, p0, Lio/grpc/CompositeCallCredentials$WrappingMetadataApplier;->context:Lio/grpc/Context;

    invoke-virtual {v1, v0}, Lio/grpc/Context;->detach(Lio/grpc/Context;)V

    .line 69
    nop

    .line 70
    return-void

    .line 68
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lio/grpc/CompositeCallCredentials$WrappingMetadataApplier;->context:Lio/grpc/Context;

    invoke-virtual {v2, v0}, Lio/grpc/Context;->detach(Lio/grpc/Context;)V

    throw v1
.end method

.method public fail(Lio/grpc/Status;)V
    .locals 1
    .param p1, "status"    # Lio/grpc/Status;

    .line 74
    iget-object v0, p0, Lio/grpc/CompositeCallCredentials$WrappingMetadataApplier;->delegate:Lio/grpc/CallCredentials$MetadataApplier;

    invoke-virtual {v0, p1}, Lio/grpc/CallCredentials$MetadataApplier;->fail(Lio/grpc/Status;)V

    .line 75
    return-void
.end method
