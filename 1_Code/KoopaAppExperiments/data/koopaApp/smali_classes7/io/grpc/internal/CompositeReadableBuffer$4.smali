.class Lio/grpc/internal/CompositeReadableBuffer$4;
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
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic read(Lio/grpc/internal/ReadableBuffer;ILjava/lang/Object;I)I
    .locals 0

    .line 129
    check-cast p3, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2, p3, p4}, Lio/grpc/internal/CompositeReadableBuffer$4;->read(Lio/grpc/internal/ReadableBuffer;ILjava/nio/ByteBuffer;I)I

    move-result p1

    return p1
.end method

.method public read(Lio/grpc/internal/ReadableBuffer;ILjava/nio/ByteBuffer;I)I
    .locals 2
    .param p1, "buffer"    # Lio/grpc/internal/ReadableBuffer;
    .param p2, "length"    # I
    .param p3, "dest"    # Ljava/nio/ByteBuffer;
    .param p4, "unused"    # I

    .line 133
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 134
    .local v0, "prevLimit":I
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p3, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 136
    invoke-interface {p1, p3}, Lio/grpc/internal/ReadableBuffer;->readBytes(Ljava/nio/ByteBuffer;)V

    .line 137
    invoke-virtual {p3, v0}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 138
    const/4 v1, 0x0

    return v1
.end method
