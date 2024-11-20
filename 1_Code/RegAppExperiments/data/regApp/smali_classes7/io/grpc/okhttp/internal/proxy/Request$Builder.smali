.class public Lio/grpc/okhttp/internal/proxy/Request$Builder;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/okhttp/internal/proxy/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private headers:Lio/grpc/okhttp/internal/Headers$Builder;

.field private url:Lio/grpc/okhttp/internal/proxy/HttpUrl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lio/grpc/okhttp/internal/Headers$Builder;

    invoke-direct {v0}, Lio/grpc/okhttp/internal/Headers$Builder;-><init>()V

    iput-object v0, p0, Lio/grpc/okhttp/internal/proxy/Request$Builder;->headers:Lio/grpc/okhttp/internal/Headers$Builder;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lio/grpc/okhttp/internal/proxy/Request$Builder;)Lio/grpc/okhttp/internal/proxy/HttpUrl;
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/internal/proxy/Request$Builder;

    .line 54
    iget-object v0, p0, Lio/grpc/okhttp/internal/proxy/Request$Builder;->url:Lio/grpc/okhttp/internal/proxy/HttpUrl;

    return-object v0
.end method

.method static synthetic access$100(Lio/grpc/okhttp/internal/proxy/Request$Builder;)Lio/grpc/okhttp/internal/Headers$Builder;
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/internal/proxy/Request$Builder;

    .line 54
    iget-object v0, p0, Lio/grpc/okhttp/internal/proxy/Request$Builder;->headers:Lio/grpc/okhttp/internal/Headers$Builder;

    return-object v0
.end method


# virtual methods
.method public build()Lio/grpc/okhttp/internal/proxy/Request;
    .locals 2

    .line 78
    iget-object v0, p0, Lio/grpc/okhttp/internal/proxy/Request$Builder;->url:Lio/grpc/okhttp/internal/proxy/HttpUrl;

    if-eqz v0, :cond_0

    .line 79
    new-instance v0, Lio/grpc/okhttp/internal/proxy/Request;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/okhttp/internal/proxy/Request;-><init>(Lio/grpc/okhttp/internal/proxy/Request$Builder;Lio/grpc/okhttp/internal/proxy/Request$1;)V

    return-object v0

    .line 78
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Lio/grpc/okhttp/internal/proxy/Request$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 73
    iget-object v0, p0, Lio/grpc/okhttp/internal/proxy/Request$Builder;->headers:Lio/grpc/okhttp/internal/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Lio/grpc/okhttp/internal/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lio/grpc/okhttp/internal/Headers$Builder;

    .line 74
    return-object p0
.end method

.method public url(Lio/grpc/okhttp/internal/proxy/HttpUrl;)Lio/grpc/okhttp/internal/proxy/Request$Builder;
    .locals 2
    .param p1, "url"    # Lio/grpc/okhttp/internal/proxy/HttpUrl;

    .line 63
    if-eqz p1, :cond_0

    .line 64
    iput-object p1, p0, Lio/grpc/okhttp/internal/proxy/Request$Builder;->url:Lio/grpc/okhttp/internal/proxy/HttpUrl;

    .line 65
    return-object p0

    .line 63
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
