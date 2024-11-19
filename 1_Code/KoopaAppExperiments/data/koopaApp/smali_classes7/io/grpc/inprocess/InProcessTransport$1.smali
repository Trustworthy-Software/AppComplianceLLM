.class Lio/grpc/inprocess/InProcessTransport$1;
.super Ljava/lang/Object;
.source "InProcessTransport.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/inprocess/InProcessTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/inprocess/InProcessTransport;


# direct methods
.method constructor <init>(Lio/grpc/inprocess/InProcessTransport;)V
    .locals 0
    .param p1, "this$0"    # Lio/grpc/inprocess/InProcessTransport;

    .line 112
    iput-object p1, p0, Lio/grpc/inprocess/InProcessTransport$1;->this$0:Lio/grpc/inprocess/InProcessTransport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 115
    instance-of v0, p2, Ljava/lang/Error;

    if-eqz v0, :cond_0

    .line 116
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0, p2}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 118
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
