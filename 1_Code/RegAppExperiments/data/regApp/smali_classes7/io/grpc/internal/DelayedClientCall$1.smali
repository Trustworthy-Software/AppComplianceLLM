.class Lio/grpc/internal/DelayedClientCall$1;
.super Lio/grpc/internal/ContextRunnable;
.source "DelayedClientCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/DelayedClientCall;->setCall(Lio/grpc/ClientCall;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/DelayedClientCall;


# direct methods
.method constructor <init>(Lio/grpc/internal/DelayedClientCall;Lio/grpc/Context;)V
    .locals 0
    .param p1, "this$0"    # Lio/grpc/internal/DelayedClientCall;
    .param p2, "context"    # Lio/grpc/Context;

    .line 173
    .local p0, "this":Lio/grpc/internal/DelayedClientCall$1;, "Lio/grpc/internal/DelayedClientCall$1;"
    iput-object p1, p0, Lio/grpc/internal/DelayedClientCall$1;->this$0:Lio/grpc/internal/DelayedClientCall;

    invoke-direct {p0, p2}, Lio/grpc/internal/ContextRunnable;-><init>(Lio/grpc/Context;)V

    return-void
.end method


# virtual methods
.method public runInContext()V
    .locals 1

    .line 176
    .local p0, "this":Lio/grpc/internal/DelayedClientCall$1;, "Lio/grpc/internal/DelayedClientCall$1;"
    iget-object v0, p0, Lio/grpc/internal/DelayedClientCall$1;->this$0:Lio/grpc/internal/DelayedClientCall;

    invoke-static {v0}, Lio/grpc/internal/DelayedClientCall;->access$100(Lio/grpc/internal/DelayedClientCall;)V

    .line 177
    return-void
.end method
