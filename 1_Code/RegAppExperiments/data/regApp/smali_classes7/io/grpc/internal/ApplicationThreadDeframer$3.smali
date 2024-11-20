.class Lio/grpc/internal/ApplicationThreadDeframer$3;
.super Ljava/lang/Object;
.source "ApplicationThreadDeframer.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/ApplicationThreadDeframer;->deframe(Lio/grpc/internal/ReadableBuffer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/ApplicationThreadDeframer;

.field final synthetic val$data:Lio/grpc/internal/ReadableBuffer;


# direct methods
.method constructor <init>(Lio/grpc/internal/ApplicationThreadDeframer;Lio/grpc/internal/ReadableBuffer;)V
    .locals 0
    .param p1, "this$0"    # Lio/grpc/internal/ApplicationThreadDeframer;

    .line 103
    iput-object p1, p0, Lio/grpc/internal/ApplicationThreadDeframer$3;->this$0:Lio/grpc/internal/ApplicationThreadDeframer;

    iput-object p2, p0, Lio/grpc/internal/ApplicationThreadDeframer$3;->val$data:Lio/grpc/internal/ReadableBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 106
    iget-object v0, p0, Lio/grpc/internal/ApplicationThreadDeframer$3;->val$data:Lio/grpc/internal/ReadableBuffer;

    invoke-interface {v0}, Lio/grpc/internal/ReadableBuffer;->close()V

    .line 107
    return-void
.end method
