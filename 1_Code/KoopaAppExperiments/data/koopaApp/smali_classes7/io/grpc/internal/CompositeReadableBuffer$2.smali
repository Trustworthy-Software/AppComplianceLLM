.class Lio/grpc/internal/CompositeReadableBuffer$2;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic read(Lio/grpc/internal/ReadableBuffer;ILjava/lang/Object;I)I
    .locals 0

    .line 101
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3, p4}, Lio/grpc/internal/CompositeReadableBuffer$2;->read(Lio/grpc/internal/ReadableBuffer;ILjava/lang/Void;I)I

    move-result p1

    return p1
.end method

.method public read(Lio/grpc/internal/ReadableBuffer;ILjava/lang/Void;I)I
    .locals 1
    .param p1, "buffer"    # Lio/grpc/internal/ReadableBuffer;
    .param p2, "length"    # I
    .param p3, "unused"    # Ljava/lang/Void;
    .param p4, "unused2"    # I

    .line 104
    invoke-interface {p1, p2}, Lio/grpc/internal/ReadableBuffer;->skipBytes(I)V

    .line 105
    const/4 v0, 0x0

    return v0
.end method
