.class Lio/grpc/internal/DelayedClientCall$5;
.super Ljava/lang/Object;
.source "DelayedClientCall.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/DelayedClientCall;->setMessageCompression(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/DelayedClientCall;

.field final synthetic val$enable:Z


# direct methods
.method constructor <init>(Lio/grpc/internal/DelayedClientCall;Z)V
    .locals 0
    .param p1, "this$0"    # Lio/grpc/internal/DelayedClientCall;

    .line 358
    .local p0, "this":Lio/grpc/internal/DelayedClientCall$5;, "Lio/grpc/internal/DelayedClientCall$5;"
    iput-object p1, p0, Lio/grpc/internal/DelayedClientCall$5;->this$0:Lio/grpc/internal/DelayedClientCall;

    iput-boolean p2, p0, Lio/grpc/internal/DelayedClientCall$5;->val$enable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 361
    .local p0, "this":Lio/grpc/internal/DelayedClientCall$5;, "Lio/grpc/internal/DelayedClientCall$5;"
    iget-object v0, p0, Lio/grpc/internal/DelayedClientCall$5;->this$0:Lio/grpc/internal/DelayedClientCall;

    invoke-static {v0}, Lio/grpc/internal/DelayedClientCall;->access$200(Lio/grpc/internal/DelayedClientCall;)Lio/grpc/ClientCall;

    move-result-object v0

    iget-boolean v1, p0, Lio/grpc/internal/DelayedClientCall$5;->val$enable:Z

    invoke-virtual {v0, v1}, Lio/grpc/ClientCall;->setMessageCompression(Z)V

    .line 362
    return-void
.end method
