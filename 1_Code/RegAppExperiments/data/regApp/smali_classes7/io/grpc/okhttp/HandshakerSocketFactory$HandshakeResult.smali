.class public final Lio/grpc/okhttp/HandshakerSocketFactory$HandshakeResult;
.super Ljava/lang/Object;
.source "HandshakerSocketFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/okhttp/HandshakerSocketFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HandshakeResult"
.end annotation


# instance fields
.field public final attributes:Lio/grpc/Attributes;

.field public final securityInfo:Lio/grpc/InternalChannelz$Security;

.field public final socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Ljava/net/Socket;Lio/grpc/Attributes;Lio/grpc/InternalChannelz$Security;)V
    .locals 1
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "attributes"    # Lio/grpc/Attributes;
    .param p3, "securityInfo"    # Lio/grpc/InternalChannelz$Security;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v0, "socket"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Socket;

    iput-object v0, p0, Lio/grpc/okhttp/HandshakerSocketFactory$HandshakeResult;->socket:Ljava/net/Socket;

    .line 38
    const-string v0, "attributes"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/Attributes;

    iput-object v0, p0, Lio/grpc/okhttp/HandshakerSocketFactory$HandshakeResult;->attributes:Lio/grpc/Attributes;

    .line 39
    iput-object p3, p0, Lio/grpc/okhttp/HandshakerSocketFactory$HandshakeResult;->securityInfo:Lio/grpc/InternalChannelz$Security;

    .line 40
    return-void
.end method
