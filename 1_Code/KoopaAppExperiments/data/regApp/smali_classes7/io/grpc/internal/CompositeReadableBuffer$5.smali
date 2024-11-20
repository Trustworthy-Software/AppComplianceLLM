.class Lio/grpc/internal/CompositeReadableBuffer$5;
.super Ljava/lang/Object;
.source "CompositeReadableBuffer.java"

# interfaces
.implements Lio/grpc/internal/CompositeReadableBuffer$ReadOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/CompositeReadableBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/grpc/internal/CompositeReadableBuffer$ReadOperation<",
        "Ljava/io/OutputStream;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lio/grpc/internal/ReadableBuffer;ILjava/io/OutputStream;I)I
    .locals 1
    .param p1, "buffer"    # Lio/grpc/internal/ReadableBuffer;
    .param p2, "length"    # I
    .param p3, "dest"    # Ljava/io/OutputStream;
    .param p4, "unused"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    invoke-interface {p1, p3, p2}, Lio/grpc/internal/ReadableBuffer;->readBytes(Ljava/io/OutputStream;I)V

    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic read(Lio/grpc/internal/ReadableBuffer;ILjava/lang/Object;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    check-cast p3, Ljava/io/OutputStream;

    invoke-virtual {p0, p1, p2, p3, p4}, Lio/grpc/internal/CompositeReadableBuffer$5;->read(Lio/grpc/internal/ReadableBuffer;ILjava/io/OutputStream;I)I

    move-result p1

    return p1
.end method
