.class Lio/grpc/internal/MigratingThreadDeframer$1CloseWhenCompleteOp;
.super Ljava/lang/Object;
.source "MigratingThreadDeframer.java"

# interfaces
.implements Lio/grpc/internal/MigratingThreadDeframer$Op;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/MigratingThreadDeframer;->closeWhenComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CloseWhenCompleteOp"
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/MigratingThreadDeframer;


# direct methods
.method constructor <init>(Lio/grpc/internal/MigratingThreadDeframer;)V
    .locals 0
    .param p1, "this$0"    # Lio/grpc/internal/MigratingThreadDeframer;

    .line 236
    iput-object p1, p0, Lio/grpc/internal/MigratingThreadDeframer$1CloseWhenCompleteOp;->this$0:Lio/grpc/internal/MigratingThreadDeframer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Z)V
    .locals 1
    .param p1, "isDeframerOnTransportThread"    # Z

    .line 238
    iget-object v0, p0, Lio/grpc/internal/MigratingThreadDeframer$1CloseWhenCompleteOp;->this$0:Lio/grpc/internal/MigratingThreadDeframer;

    invoke-static {v0}, Lio/grpc/internal/MigratingThreadDeframer;->access$400(Lio/grpc/internal/MigratingThreadDeframer;)Lio/grpc/internal/MessageDeframer;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/internal/MessageDeframer;->closeWhenComplete()V

    .line 239
    return-void
.end method
