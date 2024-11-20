.class final Lio/grpc/ServerInterceptors$KnownLengthBufferedInputStream;
.super Ljava/io/BufferedInputStream;
.source "ServerInterceptors.java"

# interfaces
.implements Lio/grpc/KnownLength;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/ServerInterceptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "KnownLengthBufferedInputStream"
.end annotation


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;

    .line 166
    invoke-direct {p0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 167
    return-void
.end method
