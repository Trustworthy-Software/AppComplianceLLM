.class Lio/grpc/internal/DelayedClientCall$DelayedListener$3;
.super Ljava/lang/Object;
.source "DelayedClientCall.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/DelayedClientCall$DelayedListener;->onClose(Lio/grpc/Status;Lio/grpc/Metadata;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/DelayedClientCall$DelayedListener;

.field final synthetic val$status:Lio/grpc/Status;

.field final synthetic val$trailers:Lio/grpc/Metadata;


# direct methods
.method constructor <init>(Lio/grpc/internal/DelayedClientCall$DelayedListener;Lio/grpc/Status;Lio/grpc/Metadata;)V
    .locals 0
    .param p1, "this$0"    # Lio/grpc/internal/DelayedClientCall$DelayedListener;

    .line 486
    .local p0, "this":Lio/grpc/internal/DelayedClientCall$DelayedListener$3;, "Lio/grpc/internal/DelayedClientCall$DelayedListener$3;"
    iput-object p1, p0, Lio/grpc/internal/DelayedClientCall$DelayedListener$3;->this$0:Lio/grpc/internal/DelayedClientCall$DelayedListener;

    iput-object p2, p0, Lio/grpc/internal/DelayedClientCall$DelayedListener$3;->val$status:Lio/grpc/Status;

    iput-object p3, p0, Lio/grpc/internal/DelayedClientCall$DelayedListener$3;->val$trailers:Lio/grpc/Metadata;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 489
    .local p0, "this":Lio/grpc/internal/DelayedClientCall$DelayedListener$3;, "Lio/grpc/internal/DelayedClientCall$DelayedListener$3;"
    iget-object v0, p0, Lio/grpc/internal/DelayedClientCall$DelayedListener$3;->this$0:Lio/grpc/internal/DelayedClientCall$DelayedListener;

    invoke-static {v0}, Lio/grpc/internal/DelayedClientCall$DelayedListener;->access$400(Lio/grpc/internal/DelayedClientCall$DelayedListener;)Lio/grpc/ClientCall$Listener;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/DelayedClientCall$DelayedListener$3;->val$status:Lio/grpc/Status;

    iget-object v2, p0, Lio/grpc/internal/DelayedClientCall$DelayedListener$3;->val$trailers:Lio/grpc/Metadata;

    invoke-virtual {v0, v1, v2}, Lio/grpc/ClientCall$Listener;->onClose(Lio/grpc/Status;Lio/grpc/Metadata;)V

    .line 490
    return-void
.end method
