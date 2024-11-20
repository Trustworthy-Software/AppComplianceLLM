.class public Lio/grpc/InternalServer;
.super Ljava/lang/Object;
.source "InternalServer.java"


# static fields
.field public static final SERVER_CONTEXT_KEY:Lio/grpc/Context$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Context$Key<",
            "Lio/grpc/Server;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    sget-object v0, Lio/grpc/Server;->SERVER_CONTEXT_KEY:Lio/grpc/Context$Key;

    sput-object v0, Lio/grpc/InternalServer;->SERVER_CONTEXT_KEY:Lio/grpc/Context$Key;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method
