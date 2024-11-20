.class final Lio/grpc/NameResolverRegistry$NameResolverFactory;
.super Lio/grpc/NameResolver$Factory;
.source "NameResolverRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/NameResolverRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NameResolverFactory"
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/NameResolverRegistry;


# direct methods
.method private constructor <init>(Lio/grpc/NameResolverRegistry;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lio/grpc/NameResolverRegistry$NameResolverFactory;->this$0:Lio/grpc/NameResolverRegistry;

    invoke-direct {p0}, Lio/grpc/NameResolver$Factory;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/NameResolverRegistry;Lio/grpc/NameResolverRegistry$1;)V
    .locals 0
    .param p1, "x0"    # Lio/grpc/NameResolverRegistry;
    .param p2, "x1"    # Lio/grpc/NameResolverRegistry$1;

    .line 161
    invoke-direct {p0, p1}, Lio/grpc/NameResolverRegistry$NameResolverFactory;-><init>(Lio/grpc/NameResolverRegistry;)V

    return-void
.end method


# virtual methods
.method public getDefaultScheme()Ljava/lang/String;
    .locals 2

    .line 171
    iget-object v0, p0, Lio/grpc/NameResolverRegistry$NameResolverFactory;->this$0:Lio/grpc/NameResolverRegistry;

    monitor-enter v0

    .line 172
    :try_start_0
    iget-object v1, p0, Lio/grpc/NameResolverRegistry$NameResolverFactory;->this$0:Lio/grpc/NameResolverRegistry;

    invoke-static {v1}, Lio/grpc/NameResolverRegistry;->access$200(Lio/grpc/NameResolverRegistry;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 173
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public newNameResolver(Ljava/net/URI;Lio/grpc/NameResolver$Args;)Lio/grpc/NameResolver;
    .locals 2
    .param p1, "targetUri"    # Ljava/net/URI;
    .param p2, "args"    # Lio/grpc/NameResolver$Args;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 165
    iget-object v0, p0, Lio/grpc/NameResolverRegistry$NameResolverFactory;->this$0:Lio/grpc/NameResolverRegistry;

    invoke-virtual {v0}, Lio/grpc/NameResolverRegistry;->providers()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/NameResolverProvider;

    .line 166
    .local v0, "provider":Lio/grpc/NameResolverProvider;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lio/grpc/NameResolverProvider;->newNameResolver(Ljava/net/URI;Lio/grpc/NameResolver$Args;)Lio/grpc/NameResolver;

    move-result-object v1

    :goto_0
    return-object v1
.end method
