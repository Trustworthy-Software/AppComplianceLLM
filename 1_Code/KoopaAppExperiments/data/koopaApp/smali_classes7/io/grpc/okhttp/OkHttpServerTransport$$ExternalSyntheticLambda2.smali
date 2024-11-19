.class public final synthetic Lio/grpc/okhttp/OkHttpServerTransport$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/grpc/okhttp/OkHttpServerTransport;

.field public final synthetic f$1:Lio/grpc/internal/SerializingExecutor;


# direct methods
.method public synthetic constructor <init>(Lio/grpc/okhttp/OkHttpServerTransport;Lio/grpc/internal/SerializingExecutor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/grpc/okhttp/OkHttpServerTransport$$ExternalSyntheticLambda2;->f$0:Lio/grpc/okhttp/OkHttpServerTransport;

    iput-object p2, p0, Lio/grpc/okhttp/OkHttpServerTransport$$ExternalSyntheticLambda2;->f$1:Lio/grpc/internal/SerializingExecutor;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport$$ExternalSyntheticLambda2;->f$0:Lio/grpc/okhttp/OkHttpServerTransport;

    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport$$ExternalSyntheticLambda2;->f$1:Lio/grpc/internal/SerializingExecutor;

    invoke-virtual {v0, v1}, Lio/grpc/okhttp/OkHttpServerTransport;->lambda$start$0$io-grpc-okhttp-OkHttpServerTransport(Lio/grpc/internal/SerializingExecutor;)V

    return-void
.end method
