.class abstract Lio/grpc/stub/ClientCalls$StartableListener;
.super Lio/grpc/ClientCall$Listener;
.source "ClientCalls.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/stub/ClientCalls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "StartableListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/grpc/ClientCall$Listener<",
        "TT;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 345
    .local p0, "this":Lio/grpc/stub/ClientCalls$StartableListener;, "Lio/grpc/stub/ClientCalls$StartableListener<TT;>;"
    invoke-direct {p0}, Lio/grpc/ClientCall$Listener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/stub/ClientCalls$1;)V
    .locals 0
    .param p1, "x0"    # Lio/grpc/stub/ClientCalls$1;

    .line 345
    .local p0, "this":Lio/grpc/stub/ClientCalls$StartableListener;, "Lio/grpc/stub/ClientCalls$StartableListener<TT;>;"
    invoke-direct {p0}, Lio/grpc/stub/ClientCalls$StartableListener;-><init>()V

    return-void
.end method


# virtual methods
.method abstract onStart()V
.end method
