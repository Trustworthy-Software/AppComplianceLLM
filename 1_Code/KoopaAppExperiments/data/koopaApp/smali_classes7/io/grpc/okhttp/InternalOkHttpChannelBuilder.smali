.class public final Lio/grpc/okhttp/InternalOkHttpChannelBuilder;
.super Ljava/lang/Object;
.source "InternalOkHttpChannelBuilder.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disableCheckAuthority(Lio/grpc/okhttp/OkHttpChannelBuilder;)V
    .locals 0
    .param p0, "builder"    # Lio/grpc/okhttp/OkHttpChannelBuilder;

    .line 33
    invoke-virtual {p0}, Lio/grpc/okhttp/OkHttpChannelBuilder;->disableCheckAuthority()Lio/grpc/okhttp/OkHttpChannelBuilder;

    .line 34
    return-void
.end method

.method public static enableCheckAuthority(Lio/grpc/okhttp/OkHttpChannelBuilder;)V
    .locals 0
    .param p0, "builder"    # Lio/grpc/okhttp/OkHttpChannelBuilder;

    .line 37
    invoke-virtual {p0}, Lio/grpc/okhttp/OkHttpChannelBuilder;->enableCheckAuthority()Lio/grpc/okhttp/OkHttpChannelBuilder;

    .line 38
    return-void
.end method

.method public static setStatsEnabled(Lio/grpc/okhttp/OkHttpChannelBuilder;Z)V
    .locals 0
    .param p0, "builder"    # Lio/grpc/okhttp/OkHttpChannelBuilder;
    .param p1, "value"    # Z

    .line 29
    invoke-virtual {p0, p1}, Lio/grpc/okhttp/OkHttpChannelBuilder;->setStatsEnabled(Z)V

    .line 30
    return-void
.end method
