.class public final synthetic Lio/grpc/okhttp/OkHttpServerTransport$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/grpc/okhttp/OkHttpServerTransport;


# direct methods
.method public synthetic constructor <init>(Lio/grpc/okhttp/OkHttpServerTransport;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/grpc/okhttp/OkHttpServerTransport$$ExternalSyntheticLambda4;->f$0:Lio/grpc/okhttp/OkHttpServerTransport;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport$$ExternalSyntheticLambda4;->f$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-virtual {v0}, Lio/grpc/okhttp/OkHttpServerTransport;->lambda$startIo$1$io-grpc-okhttp-OkHttpServerTransport()V

    return-void
.end method
