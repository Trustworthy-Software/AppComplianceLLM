.class final Lio/grpc/internal/DnsNameResolver$Resolve;
.super Ljava/lang/Object;
.source "DnsNameResolver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/DnsNameResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Resolve"
.end annotation


# instance fields
.field private final savedListener:Lio/grpc/NameResolver$Listener2;

.field final synthetic this$0:Lio/grpc/internal/DnsNameResolver;


# direct methods
.method constructor <init>(Lio/grpc/internal/DnsNameResolver;Lio/grpc/NameResolver$Listener2;)V
    .locals 0
    .param p2, "savedListener"    # Lio/grpc/NameResolver$Listener2;

    .line 299
    iput-object p1, p0, Lio/grpc/internal/DnsNameResolver$Resolve;->this$0:Lio/grpc/internal/DnsNameResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    const-string p1, "savedListener"

    invoke-static {p2, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/NameResolver$Listener2;

    iput-object p1, p0, Lio/grpc/internal/DnsNameResolver$Resolve;->savedListener:Lio/grpc/NameResolver$Listener2;

    .line 301
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 305
    invoke-static {}, Lio/grpc/internal/DnsNameResolver;->access$400()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    invoke-static {}, Lio/grpc/internal/DnsNameResolver;->access$400()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting DNS resolution of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/grpc/internal/DnsNameResolver$Resolve;->this$0:Lio/grpc/internal/DnsNameResolver;

    invoke-static {v2}, Lio/grpc/internal/DnsNameResolver;->access$500(Lio/grpc/internal/DnsNameResolver;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 308
    :cond_0
    const/4 v0, 0x0

    .line 310
    .local v0, "result":Lio/grpc/internal/DnsNameResolver$InternalResolutionResult;
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lio/grpc/internal/DnsNameResolver$Resolve;->this$0:Lio/grpc/internal/DnsNameResolver;

    invoke-static {v3}, Lio/grpc/internal/DnsNameResolver;->access$600(Lio/grpc/internal/DnsNameResolver;)Lio/grpc/EquivalentAddressGroup;

    move-result-object v3

    .line 311
    .local v3, "proxiedAddr":Lio/grpc/EquivalentAddressGroup;
    invoke-static {}, Lio/grpc/NameResolver$ResolutionResult;->newBuilder()Lio/grpc/NameResolver$ResolutionResult$Builder;

    move-result-object v4

    .line 312
    .local v4, "resolutionResultBuilder":Lio/grpc/NameResolver$ResolutionResult$Builder;
    if-eqz v3, :cond_2

    .line 313
    invoke-static {}, Lio/grpc/internal/DnsNameResolver;->access$400()Ljava/util/logging/Logger;

    move-result-object v5

    sget-object v6, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 314
    invoke-static {}, Lio/grpc/internal/DnsNameResolver;->access$400()Ljava/util/logging/Logger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Using proxy address "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 316
    :cond_1
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/grpc/NameResolver$ResolutionResult$Builder;->setAddresses(Ljava/util/List;)Lio/grpc/NameResolver$ResolutionResult$Builder;

    goto :goto_1

    .line 318
    :cond_2
    iget-object v5, p0, Lio/grpc/internal/DnsNameResolver$Resolve;->this$0:Lio/grpc/internal/DnsNameResolver;

    invoke-virtual {v5, v2}, Lio/grpc/internal/DnsNameResolver;->doResolve(Z)Lio/grpc/internal/DnsNameResolver$InternalResolutionResult;

    move-result-object v5

    move-object v0, v5

    .line 319
    invoke-static {v0}, Lio/grpc/internal/DnsNameResolver$InternalResolutionResult;->access$200(Lio/grpc/internal/DnsNameResolver$InternalResolutionResult;)Lio/grpc/Status;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 320
    iget-object v5, p0, Lio/grpc/internal/DnsNameResolver$Resolve;->savedListener:Lio/grpc/NameResolver$Listener2;

    invoke-static {v0}, Lio/grpc/internal/DnsNameResolver$InternalResolutionResult;->access$200(Lio/grpc/internal/DnsNameResolver$InternalResolutionResult;)Lio/grpc/Status;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/grpc/NameResolver$Listener2;->onError(Lio/grpc/Status;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    if-eqz v0, :cond_3

    invoke-static {v0}, Lio/grpc/internal/DnsNameResolver$InternalResolutionResult;->access$200(Lio/grpc/internal/DnsNameResolver$InternalResolutionResult;)Lio/grpc/Status;

    move-result-object v5

    if-nez v5, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    .line 339
    .local v1, "succeed":Z
    :goto_0
    iget-object v2, p0, Lio/grpc/internal/DnsNameResolver$Resolve;->this$0:Lio/grpc/internal/DnsNameResolver;

    invoke-static {v2}, Lio/grpc/internal/DnsNameResolver;->access$1000(Lio/grpc/internal/DnsNameResolver;)Lio/grpc/SynchronizationContext;

    move-result-object v2

    new-instance v5, Lio/grpc/internal/DnsNameResolver$Resolve$1;

    invoke-direct {v5, p0, v1}, Lio/grpc/internal/DnsNameResolver$Resolve$1;-><init>(Lio/grpc/internal/DnsNameResolver$Resolve;Z)V

    invoke-virtual {v2, v5}, Lio/grpc/SynchronizationContext;->execute(Ljava/lang/Runnable;)V

    .line 321
    .end local v1    # "succeed":Z
    return-void

    .line 323
    :cond_4
    :try_start_1
    invoke-static {v0}, Lio/grpc/internal/DnsNameResolver$InternalResolutionResult;->access$100(Lio/grpc/internal/DnsNameResolver$InternalResolutionResult;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 324
    invoke-static {v0}, Lio/grpc/internal/DnsNameResolver$InternalResolutionResult;->access$100(Lio/grpc/internal/DnsNameResolver$InternalResolutionResult;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/grpc/NameResolver$ResolutionResult$Builder;->setAddresses(Ljava/util/List;)Lio/grpc/NameResolver$ResolutionResult$Builder;

    .line 326
    :cond_5
    invoke-static {v0}, Lio/grpc/internal/DnsNameResolver$InternalResolutionResult;->access$300(Lio/grpc/internal/DnsNameResolver$InternalResolutionResult;)Lio/grpc/NameResolver$ConfigOrError;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 327
    invoke-static {v0}, Lio/grpc/internal/DnsNameResolver$InternalResolutionResult;->access$300(Lio/grpc/internal/DnsNameResolver$InternalResolutionResult;)Lio/grpc/NameResolver$ConfigOrError;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/grpc/NameResolver$ResolutionResult$Builder;->setServiceConfig(Lio/grpc/NameResolver$ConfigOrError;)Lio/grpc/NameResolver$ResolutionResult$Builder;

    .line 329
    :cond_6
    iget-object v5, v0, Lio/grpc/internal/DnsNameResolver$InternalResolutionResult;->attributes:Lio/grpc/Attributes;

    if-eqz v5, :cond_7

    .line 330
    iget-object v5, v0, Lio/grpc/internal/DnsNameResolver$InternalResolutionResult;->attributes:Lio/grpc/Attributes;

    invoke-virtual {v4, v5}, Lio/grpc/NameResolver$ResolutionResult$Builder;->setAttributes(Lio/grpc/Attributes;)Lio/grpc/NameResolver$ResolutionResult$Builder;

    .line 333
    :cond_7
    :goto_1
    iget-object v5, p0, Lio/grpc/internal/DnsNameResolver$Resolve;->savedListener:Lio/grpc/NameResolver$Listener2;

    invoke-virtual {v4}, Lio/grpc/NameResolver$ResolutionResult$Builder;->build()Lio/grpc/NameResolver$ResolutionResult;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/grpc/NameResolver$Listener2;->onResult(Lio/grpc/NameResolver$ResolutionResult;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 338
    .end local v3    # "proxiedAddr":Lio/grpc/EquivalentAddressGroup;
    .end local v4    # "resolutionResultBuilder":Lio/grpc/NameResolver$ResolutionResult$Builder;
    if-eqz v0, :cond_8

    invoke-static {v0}, Lio/grpc/internal/DnsNameResolver$InternalResolutionResult;->access$200(Lio/grpc/internal/DnsNameResolver$InternalResolutionResult;)Lio/grpc/Status;

    move-result-object v3

    if-nez v3, :cond_8

    goto :goto_2

    :cond_8
    move v1, v2

    .line 339
    .restart local v1    # "succeed":Z
    :goto_2
    iget-object v2, p0, Lio/grpc/internal/DnsNameResolver$Resolve;->this$0:Lio/grpc/internal/DnsNameResolver;

    invoke-static {v2}, Lio/grpc/internal/DnsNameResolver;->access$1000(Lio/grpc/internal/DnsNameResolver;)Lio/grpc/SynchronizationContext;

    move-result-object v2

    new-instance v3, Lio/grpc/internal/DnsNameResolver$Resolve$1;

    invoke-direct {v3, p0, v1}, Lio/grpc/internal/DnsNameResolver$Resolve$1;-><init>(Lio/grpc/internal/DnsNameResolver$Resolve;Z)V

    :goto_3
    invoke-virtual {v2, v3}, Lio/grpc/SynchronizationContext;->execute(Ljava/lang/Runnable;)V

    .line 351
    .end local v1    # "succeed":Z
    goto :goto_5

    .line 338
    :catchall_0
    move-exception v3

    goto :goto_6

    .line 334
    :catch_0
    move-exception v3

    .line 335
    .local v3, "e":Ljava/io/IOException;
    :try_start_2
    iget-object v4, p0, Lio/grpc/internal/DnsNameResolver$Resolve;->savedListener:Lio/grpc/NameResolver$Listener2;

    sget-object v5, Lio/grpc/Status;->UNAVAILABLE:Lio/grpc/Status;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to resolve host "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lio/grpc/internal/DnsNameResolver$Resolve;->this$0:Lio/grpc/internal/DnsNameResolver;

    .line 336
    invoke-static {v7}, Lio/grpc/internal/DnsNameResolver;->access$500(Lio/grpc/internal/DnsNameResolver;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v5

    invoke-virtual {v5, v3}, Lio/grpc/Status;->withCause(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v5

    .line 335
    invoke-virtual {v4, v5}, Lio/grpc/NameResolver$Listener2;->onError(Lio/grpc/Status;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 338
    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_9

    invoke-static {v0}, Lio/grpc/internal/DnsNameResolver$InternalResolutionResult;->access$200(Lio/grpc/internal/DnsNameResolver$InternalResolutionResult;)Lio/grpc/Status;

    move-result-object v3

    if-nez v3, :cond_9

    goto :goto_4

    :cond_9
    move v1, v2

    .line 339
    .restart local v1    # "succeed":Z
    :goto_4
    iget-object v2, p0, Lio/grpc/internal/DnsNameResolver$Resolve;->this$0:Lio/grpc/internal/DnsNameResolver;

    invoke-static {v2}, Lio/grpc/internal/DnsNameResolver;->access$1000(Lio/grpc/internal/DnsNameResolver;)Lio/grpc/SynchronizationContext;

    move-result-object v2

    new-instance v3, Lio/grpc/internal/DnsNameResolver$Resolve$1;

    invoke-direct {v3, p0, v1}, Lio/grpc/internal/DnsNameResolver$Resolve$1;-><init>(Lio/grpc/internal/DnsNameResolver$Resolve;Z)V

    goto :goto_3

    .line 352
    .end local v1    # "succeed":Z
    :goto_5
    return-void

    .line 338
    :goto_6
    if-eqz v0, :cond_a

    invoke-static {v0}, Lio/grpc/internal/DnsNameResolver$InternalResolutionResult;->access$200(Lio/grpc/internal/DnsNameResolver$InternalResolutionResult;)Lio/grpc/Status;

    move-result-object v4

    if-nez v4, :cond_a

    goto :goto_7

    :cond_a
    move v1, v2

    .line 339
    .restart local v1    # "succeed":Z
    :goto_7
    iget-object v2, p0, Lio/grpc/internal/DnsNameResolver$Resolve;->this$0:Lio/grpc/internal/DnsNameResolver;

    invoke-static {v2}, Lio/grpc/internal/DnsNameResolver;->access$1000(Lio/grpc/internal/DnsNameResolver;)Lio/grpc/SynchronizationContext;

    move-result-object v2

    new-instance v4, Lio/grpc/internal/DnsNameResolver$Resolve$1;

    invoke-direct {v4, p0, v1}, Lio/grpc/internal/DnsNameResolver$Resolve$1;-><init>(Lio/grpc/internal/DnsNameResolver$Resolve;Z)V

    invoke-virtual {v2, v4}, Lio/grpc/SynchronizationContext;->execute(Ljava/lang/Runnable;)V

    .line 351
    .end local v1    # "succeed":Z
    throw v3
.end method
