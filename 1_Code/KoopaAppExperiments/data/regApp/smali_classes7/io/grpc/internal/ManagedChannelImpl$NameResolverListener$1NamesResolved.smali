.class final Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;
.super Ljava/lang/Object;
.source "ManagedChannelImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->onResult(Lio/grpc/NameResolver$ResolutionResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "NamesResolved"
.end annotation


# instance fields
.field final synthetic this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

.field final synthetic val$resolutionResult:Lio/grpc/NameResolver$ResolutionResult;


# direct methods
.method constructor <init>(Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;Lio/grpc/NameResolver$ResolutionResult;)V
    .locals 0
    .param p1, "this$1"    # Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1740
    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iput-object p2, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->val$resolutionResult:Lio/grpc/NameResolver$ResolutionResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 1745
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$7000(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/NameResolver;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v1, v1, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->resolver:Lio/grpc/NameResolver;

    if-eq v0, v1, :cond_0

    .line 1746
    return-void

    .line 1749
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->val$resolutionResult:Lio/grpc/NameResolver$ResolutionResult;

    invoke-virtual {v0}, Lio/grpc/NameResolver$ResolutionResult;->getAddresses()Ljava/util/List;

    move-result-object v0

    .line 1750
    .local v0, "servers":Ljava/util/List;, "Ljava/util/List<Lio/grpc/EquivalentAddressGroup;>;"
    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v1, v1, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v1}, Lio/grpc/internal/ManagedChannelImpl;->access$3100(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/ChannelLogger;

    move-result-object v1

    sget-object v2, Lio/grpc/ChannelLogger$ChannelLogLevel;->DEBUG:Lio/grpc/ChannelLogger$ChannelLogLevel;

    iget-object v3, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->val$resolutionResult:Lio/grpc/NameResolver$ResolutionResult;

    .line 1754
    invoke-virtual {v3}, Lio/grpc/NameResolver$ResolutionResult;->getAttributes()Lio/grpc/Attributes;

    move-result-object v3

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 1750
    const-string v4, "Resolved address: {0}, config={1}"

    invoke-virtual {v1, v2, v4, v3}, Lio/grpc/ChannelLogger;->log(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1756
    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v1, v1, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v1}, Lio/grpc/internal/ManagedChannelImpl;->access$7100(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelImpl$ResolutionState;

    move-result-object v1

    sget-object v2, Lio/grpc/internal/ManagedChannelImpl$ResolutionState;->SUCCESS:Lio/grpc/internal/ManagedChannelImpl$ResolutionState;

    if-eq v1, v2, :cond_1

    .line 1757
    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v1, v1, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v1}, Lio/grpc/internal/ManagedChannelImpl;->access$3100(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/ChannelLogger;

    move-result-object v1

    sget-object v2, Lio/grpc/ChannelLogger$ChannelLogLevel;->INFO:Lio/grpc/ChannelLogger$ChannelLogLevel;

    const-string v3, "Address resolved: {0}"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lio/grpc/ChannelLogger;->log(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1758
    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v1, v1, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    sget-object v2, Lio/grpc/internal/ManagedChannelImpl$ResolutionState;->SUCCESS:Lio/grpc/internal/ManagedChannelImpl$ResolutionState;

    invoke-static {v1, v2}, Lio/grpc/internal/ManagedChannelImpl;->access$7102(Lio/grpc/internal/ManagedChannelImpl;Lio/grpc/internal/ManagedChannelImpl$ResolutionState;)Lio/grpc/internal/ManagedChannelImpl$ResolutionState;

    .line 1761
    :cond_1
    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v1, v1, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lio/grpc/internal/ManagedChannelImpl;->access$7202(Lio/grpc/internal/ManagedChannelImpl;Lio/grpc/internal/BackoffPolicy;)Lio/grpc/internal/BackoffPolicy;

    .line 1762
    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->val$resolutionResult:Lio/grpc/NameResolver$ResolutionResult;

    invoke-virtual {v1}, Lio/grpc/NameResolver$ResolutionResult;->getServiceConfig()Lio/grpc/NameResolver$ConfigOrError;

    move-result-object v1

    .line 1763
    .local v1, "configOrError":Lio/grpc/NameResolver$ConfigOrError;
    iget-object v3, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->val$resolutionResult:Lio/grpc/NameResolver$ResolutionResult;

    .line 1764
    invoke-virtual {v3}, Lio/grpc/NameResolver$ResolutionResult;->getAttributes()Lio/grpc/Attributes;

    move-result-object v3

    sget-object v4, Lio/grpc/InternalConfigSelector;->KEY:Lio/grpc/Attributes$Key;

    invoke-virtual {v3, v4}, Lio/grpc/Attributes;->get(Lio/grpc/Attributes$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/InternalConfigSelector;

    .line 1766
    .local v3, "resolvedConfigSelector":Lio/grpc/InternalConfigSelector;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lio/grpc/NameResolver$ConfigOrError;->getConfig()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1767
    invoke-virtual {v1}, Lio/grpc/NameResolver$ConfigOrError;->getConfig()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/grpc/internal/ManagedChannelServiceConfig;

    goto :goto_0

    .line 1768
    :cond_2
    move-object v4, v2

    :goto_0
    nop

    .line 1769
    .local v4, "validServiceConfig":Lio/grpc/internal/ManagedChannelServiceConfig;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lio/grpc/NameResolver$ConfigOrError;->getError()Lio/grpc/Status;

    move-result-object v5

    goto :goto_1

    :cond_3
    move-object v5, v2

    .line 1772
    .local v5, "serviceConfigError":Lio/grpc/Status;
    :goto_1
    iget-object v6, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v6, v6, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v6}, Lio/grpc/internal/ManagedChannelImpl;->access$7300(Lio/grpc/internal/ManagedChannelImpl;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 1773
    if-eqz v4, :cond_4

    .line 1774
    iget-object v2, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v2, v2, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v2}, Lio/grpc/internal/ManagedChannelImpl;->access$3100(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/ChannelLogger;

    move-result-object v2

    sget-object v6, Lio/grpc/ChannelLogger$ChannelLogLevel;->INFO:Lio/grpc/ChannelLogger$ChannelLogLevel;

    const-string v7, "Service config from name resolver discarded by channel settings"

    invoke-virtual {v2, v6, v7}, Lio/grpc/ChannelLogger;->log(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;)V

    .line 1779
    :cond_4
    iget-object v2, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v2, v2, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v2}, Lio/grpc/internal/ManagedChannelImpl;->access$7400(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelServiceConfig;

    move-result-object v2

    if-nez v2, :cond_5

    invoke-static {}, Lio/grpc/internal/ManagedChannelImpl;->access$7500()Lio/grpc/internal/ManagedChannelServiceConfig;

    move-result-object v2

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v2, v2, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v2}, Lio/grpc/internal/ManagedChannelImpl;->access$7400(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelServiceConfig;

    move-result-object v2

    .line 1780
    .local v2, "effectiveServiceConfig":Lio/grpc/internal/ManagedChannelServiceConfig;
    :goto_2
    if-eqz v3, :cond_6

    .line 1781
    iget-object v6, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v6, v6, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v6}, Lio/grpc/internal/ManagedChannelImpl;->access$3100(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/ChannelLogger;

    move-result-object v6

    sget-object v7, Lio/grpc/ChannelLogger$ChannelLogLevel;->INFO:Lio/grpc/ChannelLogger$ChannelLogLevel;

    const-string v8, "Config selector from name resolver discarded by channel settings"

    invoke-virtual {v6, v7, v8}, Lio/grpc/ChannelLogger;->log(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;)V

    .line 1785
    :cond_6
    iget-object v6, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v6, v6, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v6}, Lio/grpc/internal/ManagedChannelImpl;->access$7600(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelImpl$RealChannel;

    move-result-object v6

    invoke-virtual {v2}, Lio/grpc/internal/ManagedChannelServiceConfig;->getDefaultConfigSelector()Lio/grpc/InternalConfigSelector;

    move-result-object v7

    invoke-virtual {v6, v7}, Lio/grpc/internal/ManagedChannelImpl$RealChannel;->updateConfigSelector(Lio/grpc/InternalConfigSelector;)V

    goto/16 :goto_5

    .line 1789
    .end local v2    # "effectiveServiceConfig":Lio/grpc/internal/ManagedChannelServiceConfig;
    :cond_7
    if-eqz v4, :cond_9

    .line 1790
    move-object v2, v4

    .line 1791
    .restart local v2    # "effectiveServiceConfig":Lio/grpc/internal/ManagedChannelServiceConfig;
    if-eqz v3, :cond_8

    .line 1792
    iget-object v6, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v6, v6, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v6}, Lio/grpc/internal/ManagedChannelImpl;->access$7600(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelImpl$RealChannel;

    move-result-object v6

    invoke-virtual {v6, v3}, Lio/grpc/internal/ManagedChannelImpl$RealChannel;->updateConfigSelector(Lio/grpc/InternalConfigSelector;)V

    .line 1793
    invoke-virtual {v2}, Lio/grpc/internal/ManagedChannelServiceConfig;->getDefaultConfigSelector()Lio/grpc/InternalConfigSelector;

    move-result-object v6

    if-eqz v6, :cond_d

    .line 1794
    iget-object v6, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v6, v6, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v6}, Lio/grpc/internal/ManagedChannelImpl;->access$3100(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/ChannelLogger;

    move-result-object v6

    sget-object v7, Lio/grpc/ChannelLogger$ChannelLogLevel;->DEBUG:Lio/grpc/ChannelLogger$ChannelLogLevel;

    const-string v8, "Method configs in service config will be discarded due to presence ofconfig-selector"

    invoke-virtual {v6, v7, v8}, Lio/grpc/ChannelLogger;->log(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1800
    :cond_8
    iget-object v6, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v6, v6, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v6}, Lio/grpc/internal/ManagedChannelImpl;->access$7600(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelImpl$RealChannel;

    move-result-object v6

    invoke-virtual {v2}, Lio/grpc/internal/ManagedChannelServiceConfig;->getDefaultConfigSelector()Lio/grpc/InternalConfigSelector;

    move-result-object v7

    invoke-virtual {v6, v7}, Lio/grpc/internal/ManagedChannelImpl$RealChannel;->updateConfigSelector(Lio/grpc/InternalConfigSelector;)V

    goto :goto_3

    .line 1802
    .end local v2    # "effectiveServiceConfig":Lio/grpc/internal/ManagedChannelServiceConfig;
    :cond_9
    iget-object v6, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v6, v6, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v6}, Lio/grpc/internal/ManagedChannelImpl;->access$7400(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelServiceConfig;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 1803
    iget-object v2, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v2, v2, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v2}, Lio/grpc/internal/ManagedChannelImpl;->access$7400(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelServiceConfig;

    move-result-object v2

    .line 1804
    .restart local v2    # "effectiveServiceConfig":Lio/grpc/internal/ManagedChannelServiceConfig;
    iget-object v6, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v6, v6, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v6}, Lio/grpc/internal/ManagedChannelImpl;->access$7600(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelImpl$RealChannel;

    move-result-object v6

    invoke-virtual {v2}, Lio/grpc/internal/ManagedChannelServiceConfig;->getDefaultConfigSelector()Lio/grpc/InternalConfigSelector;

    move-result-object v7

    invoke-virtual {v6, v7}, Lio/grpc/internal/ManagedChannelImpl$RealChannel;->updateConfigSelector(Lio/grpc/InternalConfigSelector;)V

    .line 1805
    iget-object v6, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v6, v6, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v6}, Lio/grpc/internal/ManagedChannelImpl;->access$3100(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/ChannelLogger;

    move-result-object v6

    sget-object v7, Lio/grpc/ChannelLogger$ChannelLogLevel;->INFO:Lio/grpc/ChannelLogger$ChannelLogLevel;

    const-string v8, "Received no service config, using default service config"

    invoke-virtual {v6, v7, v8}, Lio/grpc/ChannelLogger;->log(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;)V

    goto :goto_3

    .line 1808
    .end local v2    # "effectiveServiceConfig":Lio/grpc/internal/ManagedChannelServiceConfig;
    :cond_a
    if-eqz v5, :cond_c

    .line 1809
    iget-object v2, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v2, v2, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v2}, Lio/grpc/internal/ManagedChannelImpl;->access$7700(Lio/grpc/internal/ManagedChannelImpl;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 1811
    iget-object v2, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v2, v2, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v2}, Lio/grpc/internal/ManagedChannelImpl;->access$3100(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/ChannelLogger;

    move-result-object v2

    sget-object v6, Lio/grpc/ChannelLogger$ChannelLogLevel;->INFO:Lio/grpc/ChannelLogger$ChannelLogLevel;

    const-string v7, "Fallback to error due to invalid first service config without default config"

    invoke-virtual {v2, v6, v7}, Lio/grpc/ChannelLogger;->log(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;)V

    .line 1818
    iget-object v2, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    invoke-virtual {v1}, Lio/grpc/NameResolver$ConfigOrError;->getError()Lio/grpc/Status;

    move-result-object v6

    invoke-virtual {v2, v6}, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->onError(Lio/grpc/Status;)V

    .line 1819
    return-void

    .line 1821
    :cond_b
    iget-object v2, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v2, v2, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v2}, Lio/grpc/internal/ManagedChannelImpl;->access$1800(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelServiceConfig;

    move-result-object v2

    .restart local v2    # "effectiveServiceConfig":Lio/grpc/internal/ManagedChannelServiceConfig;
    goto :goto_3

    .line 1824
    .end local v2    # "effectiveServiceConfig":Lio/grpc/internal/ManagedChannelServiceConfig;
    :cond_c
    invoke-static {}, Lio/grpc/internal/ManagedChannelImpl;->access$7500()Lio/grpc/internal/ManagedChannelServiceConfig;

    move-result-object v6

    .line 1825
    .local v6, "effectiveServiceConfig":Lio/grpc/internal/ManagedChannelServiceConfig;
    iget-object v7, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v7, v7, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v7}, Lio/grpc/internal/ManagedChannelImpl;->access$7600(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelImpl$RealChannel;

    move-result-object v7

    invoke-virtual {v7, v2}, Lio/grpc/internal/ManagedChannelImpl$RealChannel;->updateConfigSelector(Lio/grpc/InternalConfigSelector;)V

    move-object v2, v6

    .line 1827
    .end local v6    # "effectiveServiceConfig":Lio/grpc/internal/ManagedChannelServiceConfig;
    .restart local v2    # "effectiveServiceConfig":Lio/grpc/internal/ManagedChannelServiceConfig;
    :cond_d
    :goto_3
    iget-object v6, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v6, v6, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v6}, Lio/grpc/internal/ManagedChannelImpl;->access$1800(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelServiceConfig;

    move-result-object v6

    invoke-virtual {v2, v6}, Lio/grpc/internal/ManagedChannelServiceConfig;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_f

    .line 1828
    iget-object v6, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v6, v6, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v6}, Lio/grpc/internal/ManagedChannelImpl;->access$3100(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/ChannelLogger;

    move-result-object v6

    sget-object v8, Lio/grpc/ChannelLogger$ChannelLogLevel;->INFO:Lio/grpc/ChannelLogger$ChannelLogLevel;

    new-array v9, v7, [Ljava/lang/Object;

    .line 1831
    invoke-static {}, Lio/grpc/internal/ManagedChannelImpl;->access$7500()Lio/grpc/internal/ManagedChannelServiceConfig;

    move-result-object v10

    if-ne v2, v10, :cond_e

    const-string v10, " to empty"

    goto :goto_4

    :cond_e
    const-string v10, ""

    :goto_4
    const/4 v11, 0x0

    aput-object v10, v9, v11

    .line 1828
    const-string v10, "Service config changed{0}"

    invoke-virtual {v6, v8, v10, v9}, Lio/grpc/ChannelLogger;->log(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1832
    iget-object v6, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v6, v6, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v6, v2}, Lio/grpc/internal/ManagedChannelImpl;->access$1802(Lio/grpc/internal/ManagedChannelImpl;Lio/grpc/internal/ManagedChannelServiceConfig;)Lio/grpc/internal/ManagedChannelServiceConfig;

    .line 1839
    :cond_f
    :try_start_0
    iget-object v6, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v6, v6, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v6, v7}, Lio/grpc/internal/ManagedChannelImpl;->access$7702(Lio/grpc/internal/ManagedChannelImpl;Z)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1845
    goto :goto_5

    .line 1840
    :catch_0
    move-exception v6

    .line 1841
    .local v6, "re":Ljava/lang/RuntimeException;
    sget-object v7, Lio/grpc/internal/ManagedChannelImpl;->logger:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v10, v10, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    .line 1843
    invoke-virtual {v10}, Lio/grpc/internal/ManagedChannelImpl;->getLogId()Lio/grpc/InternalLogId;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] Unexpected exception from parsing service config"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1841
    invoke-virtual {v7, v8, v9, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1848
    .end local v6    # "re":Ljava/lang/RuntimeException;
    :goto_5
    iget-object v6, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->val$resolutionResult:Lio/grpc/NameResolver$ResolutionResult;

    invoke-virtual {v6}, Lio/grpc/NameResolver$ResolutionResult;->getAttributes()Lio/grpc/Attributes;

    move-result-object v6

    .line 1850
    .local v6, "effectiveAttrs":Lio/grpc/Attributes;
    iget-object v7, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v7, v7, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->helper:Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;

    iget-object v8, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v8, v8, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v8}, Lio/grpc/internal/ManagedChannelImpl;->access$900(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;

    move-result-object v8

    if-ne v7, v8, :cond_11

    .line 1851
    nop

    .line 1852
    invoke-virtual {v6}, Lio/grpc/Attributes;->toBuilder()Lio/grpc/Attributes$Builder;

    move-result-object v7

    sget-object v8, Lio/grpc/InternalConfigSelector;->KEY:Lio/grpc/Attributes$Key;

    invoke-virtual {v7, v8}, Lio/grpc/Attributes$Builder;->discard(Lio/grpc/Attributes$Key;)Lio/grpc/Attributes$Builder;

    move-result-object v7

    .line 1853
    .local v7, "attrBuilder":Lio/grpc/Attributes$Builder;
    nop

    .line 1854
    invoke-virtual {v2}, Lio/grpc/internal/ManagedChannelServiceConfig;->getHealthCheckingConfig()Ljava/util/Map;

    move-result-object v8

    .line 1855
    .local v8, "healthCheckingConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    if-eqz v8, :cond_10

    .line 1856
    sget-object v9, Lio/grpc/LoadBalancer;->ATTR_HEALTH_CHECKING_CONFIG:Lio/grpc/Attributes$Key;

    .line 1857
    invoke-virtual {v7, v9, v8}, Lio/grpc/Attributes$Builder;->set(Lio/grpc/Attributes$Key;Ljava/lang/Object;)Lio/grpc/Attributes$Builder;

    move-result-object v9

    .line 1858
    invoke-virtual {v9}, Lio/grpc/Attributes$Builder;->build()Lio/grpc/Attributes;

    .line 1860
    :cond_10
    invoke-virtual {v7}, Lio/grpc/Attributes$Builder;->build()Lio/grpc/Attributes;

    move-result-object v9

    .line 1862
    .local v9, "attributes":Lio/grpc/Attributes;
    iget-object v10, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v10, v10, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->helper:Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;

    iget-object v10, v10, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->lb:Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;

    .line 1863
    invoke-static {}, Lio/grpc/LoadBalancer$ResolvedAddresses;->newBuilder()Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;

    move-result-object v11

    .line 1864
    invoke-virtual {v11, v0}, Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;->setAddresses(Ljava/util/List;)Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;

    move-result-object v11

    .line 1865
    invoke-virtual {v11, v9}, Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;->setAttributes(Lio/grpc/Attributes;)Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;

    move-result-object v11

    .line 1866
    invoke-virtual {v2}, Lio/grpc/internal/ManagedChannelServiceConfig;->getLoadBalancingConfig()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;->setLoadBalancingPolicyConfig(Ljava/lang/Object;)Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;

    move-result-object v11

    .line 1867
    invoke-virtual {v11}, Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;->build()Lio/grpc/LoadBalancer$ResolvedAddresses;

    move-result-object v11

    .line 1862
    invoke-virtual {v10, v11}, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;->tryAcceptResolvedAddresses(Lio/grpc/LoadBalancer$ResolvedAddresses;)Z

    move-result v10

    .line 1869
    .local v10, "addressesAccepted":Z
    if-nez v10, :cond_11

    .line 1870
    iget-object v11, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    invoke-static {v11}, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->access$7800(Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;)V

    .line 1873
    .end local v7    # "attrBuilder":Lio/grpc/Attributes$Builder;
    .end local v8    # "healthCheckingConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .end local v9    # "attributes":Lio/grpc/Attributes;
    .end local v10    # "addressesAccepted":Z
    :cond_11
    return-void
.end method
