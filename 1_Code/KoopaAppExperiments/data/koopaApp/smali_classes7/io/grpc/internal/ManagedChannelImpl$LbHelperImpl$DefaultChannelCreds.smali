.class final Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$DefaultChannelCreds;
.super Lio/grpc/ChannelCredentials;
.source "ManagedChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DefaultChannelCreds"
.end annotation


# instance fields
.field final synthetic this$1:Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;


# direct methods
.method constructor <init>(Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;)V
    .locals 0
    .param p1, "this$1"    # Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;

    .line 1721
    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$DefaultChannelCreds;->this$1:Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;

    invoke-direct {p0}, Lio/grpc/ChannelCredentials;-><init>()V

    return-void
.end method


# virtual methods
.method public withoutBearerTokens()Lio/grpc/ChannelCredentials;
    .locals 0

    .line 1724
    return-object p0
.end method
