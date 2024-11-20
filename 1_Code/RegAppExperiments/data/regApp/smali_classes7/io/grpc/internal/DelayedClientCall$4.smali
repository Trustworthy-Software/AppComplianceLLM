.class Lio/grpc/internal/DelayedClientCall$4;
.super Ljava/lang/Object;
.source "DelayedClientCall.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/DelayedClientCall;->sendMessage(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/DelayedClientCall;

.field final synthetic val$message:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lio/grpc/internal/DelayedClientCall;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lio/grpc/internal/DelayedClientCall;

    .line 344
    .local p0, "this":Lio/grpc/internal/DelayedClientCall$4;, "Lio/grpc/internal/DelayedClientCall$4;"
    iput-object p1, p0, Lio/grpc/internal/DelayedClientCall$4;->this$0:Lio/grpc/internal/DelayedClientCall;

    iput-object p2, p0, Lio/grpc/internal/DelayedClientCall$4;->val$message:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 347
    .local p0, "this":Lio/grpc/internal/DelayedClientCall$4;, "Lio/grpc/internal/DelayedClientCall$4;"
    iget-object v0, p0, Lio/grpc/internal/DelayedClientCall$4;->this$0:Lio/grpc/internal/DelayedClientCall;

    invoke-static {v0}, Lio/grpc/internal/DelayedClientCall;->access$200(Lio/grpc/internal/DelayedClientCall;)Lio/grpc/ClientCall;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/DelayedClientCall$4;->val$message:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lio/grpc/ClientCall;->sendMessage(Ljava/lang/Object;)V

    .line 348
    return-void
.end method
