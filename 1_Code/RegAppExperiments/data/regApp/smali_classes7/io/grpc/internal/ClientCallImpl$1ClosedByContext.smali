.class Lio/grpc/internal/ClientCallImpl$1ClosedByContext;
.super Lio/grpc/internal/ContextRunnable;
.source "ClientCallImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/ClientCallImpl;->startInternal(Lio/grpc/ClientCall$Listener;Lio/grpc/Metadata;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClosedByContext"
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/ClientCallImpl;

.field final synthetic val$finalObserver:Lio/grpc/ClientCall$Listener;


# direct methods
.method constructor <init>(Lio/grpc/internal/ClientCallImpl;Lio/grpc/ClientCall$Listener;)V
    .locals 0
    .param p1, "this$0"    # Lio/grpc/internal/ClientCallImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 210
    .local p0, "this":Lio/grpc/internal/ClientCallImpl$1ClosedByContext;, "Lio/grpc/internal/ClientCallImpl$1ClosedByContext;"
    iput-object p1, p0, Lio/grpc/internal/ClientCallImpl$1ClosedByContext;->this$0:Lio/grpc/internal/ClientCallImpl;

    iput-object p2, p0, Lio/grpc/internal/ClientCallImpl$1ClosedByContext;->val$finalObserver:Lio/grpc/ClientCall$Listener;

    .line 211
    invoke-static {p1}, Lio/grpc/internal/ClientCallImpl;->access$200(Lio/grpc/internal/ClientCallImpl;)Lio/grpc/Context;

    move-result-object p2

    invoke-direct {p0, p2}, Lio/grpc/internal/ContextRunnable;-><init>(Lio/grpc/Context;)V

    .line 212
    return-void
.end method


# virtual methods
.method public runInContext()V
    .locals 4

    .line 216
    .local p0, "this":Lio/grpc/internal/ClientCallImpl$1ClosedByContext;, "Lio/grpc/internal/ClientCallImpl$1ClosedByContext;"
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl$1ClosedByContext;->this$0:Lio/grpc/internal/ClientCallImpl;

    iget-object v1, p0, Lio/grpc/internal/ClientCallImpl$1ClosedByContext;->val$finalObserver:Lio/grpc/ClientCall$Listener;

    invoke-static {v0}, Lio/grpc/internal/ClientCallImpl;->access$200(Lio/grpc/internal/ClientCallImpl;)Lio/grpc/Context;

    move-result-object v2

    invoke-static {v2}, Lio/grpc/Contexts;->statusFromCancelled(Lio/grpc/Context;)Lio/grpc/Status;

    move-result-object v2

    new-instance v3, Lio/grpc/Metadata;

    invoke-direct {v3}, Lio/grpc/Metadata;-><init>()V

    invoke-static {v0, v1, v2, v3}, Lio/grpc/internal/ClientCallImpl;->access$300(Lio/grpc/internal/ClientCallImpl;Lio/grpc/ClientCall$Listener;Lio/grpc/Status;Lio/grpc/Metadata;)V

    .line 217
    return-void
.end method
