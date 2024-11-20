.class Lio/grpc/CallOptions$Builder;
.super Ljava/lang/Object;
.source "CallOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/CallOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field authority:Ljava/lang/String;

.field compressorName:Ljava/lang/String;

.field credentials:Lio/grpc/CallCredentials;

.field customOptions:[[Ljava/lang/Object;

.field deadline:Lio/grpc/Deadline;

.field executor:Ljava/util/concurrent/Executor;

.field maxInboundMessageSize:Ljava/lang/Integer;

.field maxOutboundMessageSize:Ljava/lang/Integer;

.field streamTracerFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/ClientStreamTracer$Factory;",
            ">;"
        }
    .end annotation
.end field

.field waitForReady:Ljava/lang/Boolean;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lio/grpc/CallOptions$Builder;)Lio/grpc/CallOptions;
    .locals 1
    .param p0, "x0"    # Lio/grpc/CallOptions$Builder;

    .line 96
    invoke-direct {p0}, Lio/grpc/CallOptions$Builder;->build()Lio/grpc/CallOptions;

    move-result-object v0

    return-object v0
.end method

.method private build()Lio/grpc/CallOptions;
    .locals 2

    .line 110
    new-instance v0, Lio/grpc/CallOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/CallOptions;-><init>(Lio/grpc/CallOptions$Builder;Lio/grpc/CallOptions$1;)V

    return-object v0
.end method
