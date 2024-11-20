.class Lio/grpc/internal/DelayedClientCall$2;
.super Ljava/lang/Object;
.source "DelayedClientCall.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/DelayedClientCall;->start(Lio/grpc/ClientCall$Listener;Lio/grpc/Metadata;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/DelayedClientCall;

.field final synthetic val$finalListener:Lio/grpc/ClientCall$Listener;

.field final synthetic val$headers:Lio/grpc/Metadata;


# direct methods
.method constructor <init>(Lio/grpc/internal/DelayedClientCall;Lio/grpc/ClientCall$Listener;Lio/grpc/Metadata;)V
    .locals 0
    .param p1, "this$0"    # Lio/grpc/internal/DelayedClientCall;

    .line 203
    .local p0, "this":Lio/grpc/internal/DelayedClientCall$2;, "Lio/grpc/internal/DelayedClientCall$2;"
    iput-object p1, p0, Lio/grpc/internal/DelayedClientCall$2;->this$0:Lio/grpc/internal/DelayedClientCall;

    iput-object p2, p0, Lio/grpc/internal/DelayedClientCall$2;->val$finalListener:Lio/grpc/ClientCall$Listener;

    iput-object p3, p0, Lio/grpc/internal/DelayedClientCall$2;->val$headers:Lio/grpc/Metadata;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 206
    .local p0, "this":Lio/grpc/internal/DelayedClientCall$2;, "Lio/grpc/internal/DelayedClientCall$2;"
    iget-object v0, p0, Lio/grpc/internal/DelayedClientCall$2;->this$0:Lio/grpc/internal/DelayedClientCall;

    invoke-static {v0}, Lio/grpc/internal/DelayedClientCall;->access$200(Lio/grpc/internal/DelayedClientCall;)Lio/grpc/ClientCall;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/DelayedClientCall$2;->val$finalListener:Lio/grpc/ClientCall$Listener;

    iget-object v2, p0, Lio/grpc/internal/DelayedClientCall$2;->val$headers:Lio/grpc/Metadata;

    invoke-virtual {v0, v1, v2}, Lio/grpc/ClientCall;->start(Lio/grpc/ClientCall$Listener;Lio/grpc/Metadata;)V

    .line 207
    return-void
.end method
