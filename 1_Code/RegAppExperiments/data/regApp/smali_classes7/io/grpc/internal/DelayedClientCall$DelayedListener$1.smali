.class Lio/grpc/internal/DelayedClientCall$DelayedListener$1;
.super Ljava/lang/Object;
.source "DelayedClientCall.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/DelayedClientCall$DelayedListener;->onHeaders(Lio/grpc/Metadata;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/DelayedClientCall$DelayedListener;

.field final synthetic val$headers:Lio/grpc/Metadata;


# direct methods
.method constructor <init>(Lio/grpc/internal/DelayedClientCall$DelayedListener;Lio/grpc/Metadata;)V
    .locals 0
    .param p1, "this$0"    # Lio/grpc/internal/DelayedClientCall$DelayedListener;

    .line 461
    .local p0, "this":Lio/grpc/internal/DelayedClientCall$DelayedListener$1;, "Lio/grpc/internal/DelayedClientCall$DelayedListener$1;"
    iput-object p1, p0, Lio/grpc/internal/DelayedClientCall$DelayedListener$1;->this$0:Lio/grpc/internal/DelayedClientCall$DelayedListener;

    iput-object p2, p0, Lio/grpc/internal/DelayedClientCall$DelayedListener$1;->val$headers:Lio/grpc/Metadata;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 464
    .local p0, "this":Lio/grpc/internal/DelayedClientCall$DelayedListener$1;, "Lio/grpc/internal/DelayedClientCall$DelayedListener$1;"
    iget-object v0, p0, Lio/grpc/internal/DelayedClientCall$DelayedListener$1;->this$0:Lio/grpc/internal/DelayedClientCall$DelayedListener;

    invoke-static {v0}, Lio/grpc/internal/DelayedClientCall$DelayedListener;->access$400(Lio/grpc/internal/DelayedClientCall$DelayedListener;)Lio/grpc/ClientCall$Listener;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/DelayedClientCall$DelayedListener$1;->val$headers:Lio/grpc/Metadata;

    invoke-virtual {v0, v1}, Lio/grpc/ClientCall$Listener;->onHeaders(Lio/grpc/Metadata;)V

    .line 465
    return-void
.end method
