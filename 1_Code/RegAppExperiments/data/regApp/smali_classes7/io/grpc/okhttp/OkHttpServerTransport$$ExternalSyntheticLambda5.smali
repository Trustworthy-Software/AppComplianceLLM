.class public final synthetic Lio/grpc/okhttp/OkHttpServerTransport$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/grpc/internal/TransportTracer$FlowControlReader;


# instance fields
.field public final synthetic f$0:Lio/grpc/okhttp/OkHttpServerTransport;


# direct methods
.method public synthetic constructor <init>(Lio/grpc/okhttp/OkHttpServerTransport;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/grpc/okhttp/OkHttpServerTransport$$ExternalSyntheticLambda5;->f$0:Lio/grpc/okhttp/OkHttpServerTransport;

    return-void
.end method


# virtual methods
.method public final read()Lio/grpc/internal/TransportTracer$FlowControlWindows;
    .locals 1

    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport$$ExternalSyntheticLambda5;->f$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v0}, Lio/grpc/okhttp/OkHttpServerTransport;->$r8$lambda$lp3kgwTOPa4ym7SMWPJ_Q3pTsnQ(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/internal/TransportTracer$FlowControlWindows;

    move-result-object v0

    return-object v0
.end method
