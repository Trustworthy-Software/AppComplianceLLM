.class public final Lio/grpc/InsecureServerCredentials;
.super Lio/grpc/ServerCredentials;
.source "InsecureServerCredentials.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lio/grpc/ServerCredentials;-><init>()V

    return-void
.end method

.method public static create()Lio/grpc/ServerCredentials;
    .locals 1

    .line 22
    new-instance v0, Lio/grpc/InsecureServerCredentials;

    invoke-direct {v0}, Lio/grpc/InsecureServerCredentials;-><init>()V

    return-object v0
.end method
