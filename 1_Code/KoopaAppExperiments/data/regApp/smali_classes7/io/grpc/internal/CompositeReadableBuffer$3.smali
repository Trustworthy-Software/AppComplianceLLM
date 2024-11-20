.class Lio/grpc/internal/CompositeReadableBuffer$3;
.super Ljava/lang/Object;
.source "CompositeReadableBuffer.java"

# interfaces
.implements Lio/grpc/internal/CompositeReadableBuffer$NoThrowReadOperation;


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
        "Lio/grpc/internal/CompositeReadableBuffer$NoThrowReadOperation<",
        "[B>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic read(Lio/grpc/internal/ReadableBuffer;ILjava/lang/Object;I)I
    .locals 0

    .line 115
    check-cast p3, [B

    invoke-virtual {p0, p1, p2, p3, p4}, Lio/grpc/internal/CompositeReadableBuffer$3;->read(Lio/grpc/internal/ReadableBuffer;I[BI)I

    move-result p1

    return p1
.end method

.method public read(Lio/grpc/internal/ReadableBuffer;I[BI)I
    .locals 1
    .param p1, "buffer"    # Lio/grpc/internal/ReadableBuffer;
    .param p2, "length"    # I
    .param p3, "dest"    # [B
    .param p4, "offset"    # I

    .line 118
    invoke-interface {p1, p3, p4, p2}, Lio/grpc/internal/ReadableBuffer;->readBytes([BII)V

    .line 119
    add-int v0, p4, p2

    return v0
.end method
