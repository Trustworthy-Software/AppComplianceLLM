.class Lio/grpc/internal/ApplicationThreadDeframer$CloseableInitializingMessageProducer;
.super Lio/grpc/internal/ApplicationThreadDeframer$InitializingMessageProducer;
.source "ApplicationThreadDeframer.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/ApplicationThreadDeframer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CloseableInitializingMessageProducer"
.end annotation


# instance fields
.field private final closeable:Ljava/io/Closeable;

.field final synthetic this$0:Lio/grpc/internal/ApplicationThreadDeframer;


# direct methods
.method public constructor <init>(Lio/grpc/internal/ApplicationThreadDeframer;Ljava/lang/Runnable;Ljava/io/Closeable;)V
    .locals 1
    .param p2, "runnable"    # Ljava/lang/Runnable;
    .param p3, "closeable"    # Ljava/io/Closeable;

    .line 168
    iput-object p1, p0, Lio/grpc/internal/ApplicationThreadDeframer$CloseableInitializingMessageProducer;->this$0:Lio/grpc/internal/ApplicationThreadDeframer;

    .line 169
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lio/grpc/internal/ApplicationThreadDeframer$InitializingMessageProducer;-><init>(Lio/grpc/internal/ApplicationThreadDeframer;Ljava/lang/Runnable;Lio/grpc/internal/ApplicationThreadDeframer$1;)V

    .line 170
    iput-object p3, p0, Lio/grpc/internal/ApplicationThreadDeframer$CloseableInitializingMessageProducer;->closeable:Ljava/io/Closeable;

    .line 171
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lio/grpc/internal/ApplicationThreadDeframer$CloseableInitializingMessageProducer;->closeable:Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    .line 176
    return-void
.end method
