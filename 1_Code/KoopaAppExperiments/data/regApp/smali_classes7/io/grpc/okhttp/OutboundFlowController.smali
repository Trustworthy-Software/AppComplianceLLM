.class Lio/grpc/okhttp/OutboundFlowController;
.super Ljava/lang/Object;
.source "OutboundFlowController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/okhttp/OutboundFlowController$StreamState;,
        Lio/grpc/okhttp/OutboundFlowController$Stream;,
        Lio/grpc/okhttp/OutboundFlowController$Transport;,
        Lio/grpc/okhttp/OutboundFlowController$WriteStatus;
    }
.end annotation


# instance fields
.field private final connectionState:Lio/grpc/okhttp/OutboundFlowController$StreamState;

.field private final frameWriter:Lio/grpc/okhttp/internal/framed/FrameWriter;

.field private initialWindowSize:I

.field private final transport:Lio/grpc/okhttp/OutboundFlowController$Transport;


# direct methods
.method public constructor <init>(Lio/grpc/okhttp/OutboundFlowController$Transport;Lio/grpc/okhttp/internal/framed/FrameWriter;)V
    .locals 4
    .param p1, "transport"    # Lio/grpc/okhttp/OutboundFlowController$Transport;
    .param p2, "frameWriter"    # Lio/grpc/okhttp/internal/framed/FrameWriter;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, "transport"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/okhttp/OutboundFlowController$Transport;

    iput-object v0, p0, Lio/grpc/okhttp/OutboundFlowController;->transport:Lio/grpc/okhttp/OutboundFlowController$Transport;

    .line 45
    const-string v0, "frameWriter"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/okhttp/internal/framed/FrameWriter;

    iput-object v0, p0, Lio/grpc/okhttp/OutboundFlowController;->frameWriter:Lio/grpc/okhttp/internal/framed/FrameWriter;

    .line 46
    const v0, 0xffff

    iput v0, p0, Lio/grpc/okhttp/OutboundFlowController;->initialWindowSize:I

    .line 47
    new-instance v1, Lio/grpc/okhttp/OutboundFlowController$StreamState;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v0, v3}, Lio/grpc/okhttp/OutboundFlowController$StreamState;-><init>(Lio/grpc/okhttp/OutboundFlowController;IILio/grpc/okhttp/OutboundFlowController$Stream;)V

    iput-object v1, p0, Lio/grpc/okhttp/OutboundFlowController;->connectionState:Lio/grpc/okhttp/OutboundFlowController$StreamState;

    .line 48
    return-void
.end method

.method static synthetic access$100(Lio/grpc/okhttp/OutboundFlowController;)Lio/grpc/okhttp/OutboundFlowController$StreamState;
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/OutboundFlowController;

    .line 37
    iget-object v0, p0, Lio/grpc/okhttp/OutboundFlowController;->connectionState:Lio/grpc/okhttp/OutboundFlowController$StreamState;

    return-object v0
.end method

.method static synthetic access$200(Lio/grpc/okhttp/OutboundFlowController;)Lio/grpc/okhttp/internal/framed/FrameWriter;
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/OutboundFlowController;

    .line 37
    iget-object v0, p0, Lio/grpc/okhttp/OutboundFlowController;->frameWriter:Lio/grpc/okhttp/internal/framed/FrameWriter;

    return-object v0
.end method


# virtual methods
.method public createState(Lio/grpc/okhttp/OutboundFlowController$Stream;I)Lio/grpc/okhttp/OutboundFlowController$StreamState;
    .locals 3
    .param p1, "stream"    # Lio/grpc/okhttp/OutboundFlowController$Stream;
    .param p2, "streamId"    # I

    .line 146
    new-instance v0, Lio/grpc/okhttp/OutboundFlowController$StreamState;

    iget v1, p0, Lio/grpc/okhttp/OutboundFlowController;->initialWindowSize:I

    .line 147
    const-string v2, "stream"

    invoke-static {p1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/okhttp/OutboundFlowController$Stream;

    invoke-direct {v0, p0, p2, v1, v2}, Lio/grpc/okhttp/OutboundFlowController$StreamState;-><init>(Lio/grpc/okhttp/OutboundFlowController;IILio/grpc/okhttp/OutboundFlowController$Stream;)V

    .line 146
    return-object v0
.end method

.method public data(ZLio/grpc/okhttp/OutboundFlowController$StreamState;Lokio/Buffer;Z)V
    .locals 5
    .param p1, "outFinished"    # Z
    .param p2, "state"    # Lio/grpc/okhttp/OutboundFlowController$StreamState;
    .param p3, "source"    # Lokio/Buffer;
    .param p4, "flush"    # Z

    .line 102
    const-string v0, "source"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-virtual {p2}, Lio/grpc/okhttp/OutboundFlowController$StreamState;->writableWindow()I

    move-result v0

    .line 105
    .local v0, "window":I
    invoke-virtual {p2}, Lio/grpc/okhttp/OutboundFlowController$StreamState;->hasPendingData()Z

    move-result v1

    .line 106
    .local v1, "framesAlreadyQueued":Z
    invoke-virtual {p3}, Lokio/Buffer;->size()J

    move-result-wide v2

    long-to-int v2, v2

    .line 108
    .local v2, "size":I
    if-nez v1, :cond_0

    if-lt v0, v2, :cond_0

    .line 110
    invoke-virtual {p2, p3, v2, p1}, Lio/grpc/okhttp/OutboundFlowController$StreamState;->write(Lokio/Buffer;IZ)V

    goto :goto_0

    .line 113
    :cond_0
    if-nez v1, :cond_1

    if-lez v0, :cond_1

    .line 114
    const/4 v3, 0x0

    invoke-virtual {p2, p3, v0, v3}, Lio/grpc/okhttp/OutboundFlowController$StreamState;->write(Lokio/Buffer;IZ)V

    .line 117
    :cond_1
    invoke-virtual {p3}, Lokio/Buffer;->size()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {p2, p3, v3, p1}, Lio/grpc/okhttp/OutboundFlowController$StreamState;->enqueueData(Lokio/Buffer;IZ)V

    .line 120
    :goto_0
    if-eqz p4, :cond_2

    .line 121
    invoke-virtual {p0}, Lio/grpc/okhttp/OutboundFlowController;->flush()V

    .line 123
    :cond_2
    return-void
.end method

.method public flush()V
    .locals 2

    .line 139
    :try_start_0
    iget-object v0, p0, Lio/grpc/okhttp/OutboundFlowController;->frameWriter:Lio/grpc/okhttp/internal/framed/FrameWriter;

    invoke-interface {v0}, Lio/grpc/okhttp/internal/framed/FrameWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    nop

    .line 143
    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public initialOutboundWindowSize(I)Z
    .locals 6
    .param p1, "newWindowSize"    # I

    .line 60
    if-ltz p1, :cond_2

    .line 64
    iget v0, p0, Lio/grpc/okhttp/OutboundFlowController;->initialWindowSize:I

    sub-int v0, p1, v0

    .line 65
    .local v0, "delta":I
    iput p1, p0, Lio/grpc/okhttp/OutboundFlowController;->initialWindowSize:I

    .line 66
    iget-object v1, p0, Lio/grpc/okhttp/OutboundFlowController;->transport:Lio/grpc/okhttp/OutboundFlowController$Transport;

    invoke-interface {v1}, Lio/grpc/okhttp/OutboundFlowController$Transport;->getActiveStreams()[Lio/grpc/okhttp/OutboundFlowController$StreamState;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 67
    .local v5, "state":Lio/grpc/okhttp/OutboundFlowController$StreamState;
    invoke-virtual {v5, v0}, Lio/grpc/okhttp/OutboundFlowController$StreamState;->incrementStreamWindow(I)I

    .line 66
    .end local v5    # "state":Lio/grpc/okhttp/OutboundFlowController$StreamState;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 70
    :cond_0
    if-lez v0, :cond_1

    const/4 v3, 0x1

    :cond_1
    return v3

    .line 61
    .end local v0    # "delta":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid initial window size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public notifyWhenNoPendingData(Lio/grpc/okhttp/OutboundFlowController$StreamState;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "state"    # Lio/grpc/okhttp/OutboundFlowController$StreamState;
    .param p2, "noPendingDataRunnable"    # Ljava/lang/Runnable;

    .line 129
    const-string v0, "noPendingDataRunnable"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    invoke-virtual {p1}, Lio/grpc/okhttp/OutboundFlowController$StreamState;->hasPendingData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {p1, p2}, Lio/grpc/okhttp/OutboundFlowController$StreamState;->notifyWhenNoPendingData(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 133
    :cond_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 135
    :goto_0
    return-void
.end method

.method public windowUpdate(Lio/grpc/okhttp/OutboundFlowController$StreamState;I)I
    .locals 3
    .param p1, "state"    # Lio/grpc/okhttp/OutboundFlowController$StreamState;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "delta"    # I

    .line 81
    if-nez p1, :cond_0

    .line 83
    iget-object v0, p0, Lio/grpc/okhttp/OutboundFlowController;->connectionState:Lio/grpc/okhttp/OutboundFlowController$StreamState;

    invoke-virtual {v0, p2}, Lio/grpc/okhttp/OutboundFlowController$StreamState;->incrementStreamWindow(I)I

    move-result v0

    .line 84
    .local v0, "updatedWindow":I
    invoke-virtual {p0}, Lio/grpc/okhttp/OutboundFlowController;->writeStreams()V

    goto :goto_0

    .line 87
    .end local v0    # "updatedWindow":I
    :cond_0
    invoke-virtual {p1, p2}, Lio/grpc/okhttp/OutboundFlowController$StreamState;->incrementStreamWindow(I)I

    move-result v0

    .line 89
    .restart local v0    # "updatedWindow":I
    new-instance v1, Lio/grpc/okhttp/OutboundFlowController$WriteStatus;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lio/grpc/okhttp/OutboundFlowController$WriteStatus;-><init>(Lio/grpc/okhttp/OutboundFlowController$1;)V

    .line 90
    .local v1, "writeStatus":Lio/grpc/okhttp/OutboundFlowController$WriteStatus;
    invoke-virtual {p1}, Lio/grpc/okhttp/OutboundFlowController$StreamState;->writableWindow()I

    move-result v2

    invoke-virtual {p1, v2, v1}, Lio/grpc/okhttp/OutboundFlowController$StreamState;->writeBytes(ILio/grpc/okhttp/OutboundFlowController$WriteStatus;)I

    .line 91
    invoke-virtual {v1}, Lio/grpc/okhttp/OutboundFlowController$WriteStatus;->hasWritten()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 92
    invoke-virtual {p0}, Lio/grpc/okhttp/OutboundFlowController;->flush()V

    .line 95
    .end local v1    # "writeStatus":Lio/grpc/okhttp/OutboundFlowController$WriteStatus;
    :cond_1
    :goto_0
    return v0
.end method

.method public writeStreams()V
    .locals 9

    .line 156
    iget-object v0, p0, Lio/grpc/okhttp/OutboundFlowController;->transport:Lio/grpc/okhttp/OutboundFlowController$Transport;

    invoke-interface {v0}, Lio/grpc/okhttp/OutboundFlowController$Transport;->getActiveStreams()[Lio/grpc/okhttp/OutboundFlowController$StreamState;

    move-result-object v0

    .line 157
    .local v0, "states":[Lio/grpc/okhttp/OutboundFlowController$StreamState;
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 158
    iget-object v1, p0, Lio/grpc/okhttp/OutboundFlowController;->connectionState:Lio/grpc/okhttp/OutboundFlowController$StreamState;

    invoke-virtual {v1}, Lio/grpc/okhttp/OutboundFlowController$StreamState;->window()I

    move-result v1

    .line 159
    .local v1, "connectionWindow":I
    array-length v2, v0

    .local v2, "numStreams":I
    :goto_0
    if-lez v2, :cond_3

    if-lez v1, :cond_3

    .line 160
    const/4 v3, 0x0

    .line 161
    .local v3, "nextNumStreams":I
    int-to-float v4, v1

    int-to-float v5, v2

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 162
    .local v4, "windowSlice":I
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_1
    if-ge v5, v2, :cond_2

    if-lez v1, :cond_2

    .line 163
    aget-object v6, v0, v5

    .line 165
    .local v6, "state":Lio/grpc/okhttp/OutboundFlowController$StreamState;
    invoke-virtual {v6}, Lio/grpc/okhttp/OutboundFlowController$StreamState;->unallocatedBytes()I

    move-result v7

    invoke-static {v7, v4}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 166
    .local v7, "bytesForStream":I
    if-lez v7, :cond_0

    .line 167
    invoke-virtual {v6, v7}, Lio/grpc/okhttp/OutboundFlowController$StreamState;->allocateBytes(I)V

    .line 168
    sub-int/2addr v1, v7

    .line 171
    :cond_0
    invoke-virtual {v6}, Lio/grpc/okhttp/OutboundFlowController$StreamState;->unallocatedBytes()I

    move-result v8

    if-lez v8, :cond_1

    .line 174
    add-int/lit8 v8, v3, 0x1

    .end local v3    # "nextNumStreams":I
    .local v8, "nextNumStreams":I
    aput-object v6, v0, v3

    move v3, v8

    .line 162
    .end local v6    # "state":Lio/grpc/okhttp/OutboundFlowController$StreamState;
    .end local v7    # "bytesForStream":I
    .end local v8    # "nextNumStreams":I
    .restart local v3    # "nextNumStreams":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 177
    .end local v5    # "index":I
    :cond_2
    move v2, v3

    .line 178
    .end local v3    # "nextNumStreams":I
    .end local v4    # "windowSlice":I
    goto :goto_0

    .line 181
    .end local v2    # "numStreams":I
    :cond_3
    new-instance v2, Lio/grpc/okhttp/OutboundFlowController$WriteStatus;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lio/grpc/okhttp/OutboundFlowController$WriteStatus;-><init>(Lio/grpc/okhttp/OutboundFlowController$1;)V

    .line 182
    .local v2, "writeStatus":Lio/grpc/okhttp/OutboundFlowController$WriteStatus;
    iget-object v3, p0, Lio/grpc/okhttp/OutboundFlowController;->transport:Lio/grpc/okhttp/OutboundFlowController$Transport;

    invoke-interface {v3}, Lio/grpc/okhttp/OutboundFlowController$Transport;->getActiveStreams()[Lio/grpc/okhttp/OutboundFlowController$StreamState;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_4

    aget-object v6, v3, v5

    .line 183
    .restart local v6    # "state":Lio/grpc/okhttp/OutboundFlowController$StreamState;
    invoke-virtual {v6}, Lio/grpc/okhttp/OutboundFlowController$StreamState;->allocatedBytes()I

    move-result v7

    invoke-virtual {v6, v7, v2}, Lio/grpc/okhttp/OutboundFlowController$StreamState;->writeBytes(ILio/grpc/okhttp/OutboundFlowController$WriteStatus;)I

    .line 184
    invoke-virtual {v6}, Lio/grpc/okhttp/OutboundFlowController$StreamState;->clearAllocatedBytes()V

    .line 182
    .end local v6    # "state":Lio/grpc/okhttp/OutboundFlowController$StreamState;
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 187
    :cond_4
    invoke-virtual {v2}, Lio/grpc/okhttp/OutboundFlowController$WriteStatus;->hasWritten()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 188
    invoke-virtual {p0}, Lio/grpc/okhttp/OutboundFlowController;->flush()V

    .line 190
    :cond_5
    return-void
.end method
