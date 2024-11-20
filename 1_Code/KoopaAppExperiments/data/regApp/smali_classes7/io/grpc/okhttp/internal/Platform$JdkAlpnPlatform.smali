.class Lio/grpc/okhttp/internal/Platform$JdkAlpnPlatform;
.super Lio/grpc/okhttp/internal/Platform;
.source "Platform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/okhttp/internal/Platform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JdkAlpnPlatform"
.end annotation


# instance fields
.field private final getApplicationProtocol:Ljava/lang/reflect/Method;

.field private final setApplicationProtocols:Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>(Ljava/security/Provider;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 0
    .param p1, "provider"    # Ljava/security/Provider;
    .param p2, "setApplicationProtocols"    # Ljava/lang/reflect/Method;
    .param p3, "getApplicationProtocol"    # Ljava/lang/reflect/Method;

    .line 432
    invoke-direct {p0, p1}, Lio/grpc/okhttp/internal/Platform;-><init>(Ljava/security/Provider;)V

    .line 433
    iput-object p2, p0, Lio/grpc/okhttp/internal/Platform$JdkAlpnPlatform;->setApplicationProtocols:Ljava/lang/reflect/Method;

    .line 434
    iput-object p3, p0, Lio/grpc/okhttp/internal/Platform$JdkAlpnPlatform;->getApplicationProtocol:Ljava/lang/reflect/Method;

    .line 435
    return-void
.end method

.method synthetic constructor <init>(Ljava/security/Provider;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lio/grpc/okhttp/internal/Platform$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/security/Provider;
    .param p2, "x1"    # Ljava/lang/reflect/Method;
    .param p3, "x2"    # Ljava/lang/reflect/Method;
    .param p4, "x3"    # Lio/grpc/okhttp/internal/Platform$1;

    .line 426
    invoke-direct {p0, p1, p2, p3}, Lio/grpc/okhttp/internal/Platform$JdkAlpnPlatform;-><init>(Ljava/security/Provider;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    return-void
.end method


# virtual methods
.method public configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .param p1, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .param p2, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lio/grpc/okhttp/internal/Protocol;",
            ">;)V"
        }
    .end annotation

    .line 445
    .local p3, "protocols":Ljava/util/List;, "Ljava/util/List<Lio/grpc/okhttp/internal/Protocol;>;"
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v0

    .line 446
    .local v0, "parameters":Ljavax/net/ssl/SSLParameters;
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 447
    .local v1, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/okhttp/internal/Protocol;

    .line 448
    .local v3, "protocol":Lio/grpc/okhttp/internal/Protocol;
    sget-object v4, Lio/grpc/okhttp/internal/Protocol;->HTTP_1_0:Lio/grpc/okhttp/internal/Protocol;

    if-ne v3, v4, :cond_0

    goto :goto_0

    .line 449
    :cond_0
    invoke-virtual {v3}, Lio/grpc/okhttp/internal/Protocol;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    .end local v3    # "protocol":Lio/grpc/okhttp/internal/Protocol;
    goto :goto_0

    .line 452
    :cond_1
    :try_start_0
    iget-object v2, p0, Lio/grpc/okhttp/internal/Platform$JdkAlpnPlatform;->setApplicationProtocols:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 453
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 452
    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    nop

    .line 459
    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V

    .line 460
    return-void

    .line 456
    :catch_0
    move-exception v2

    .line 457
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 454
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v2

    .line 455
    .local v2, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 2
    .param p1, "socket"    # Ljavax/net/ssl/SSLSocket;

    .line 466
    :try_start_0
    iget-object v0, p0, Lio/grpc/okhttp/internal/Platform$JdkAlpnPlatform;->getApplicationProtocol:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 469
    :catch_0
    move-exception v0

    .line 470
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 467
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 468
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getTlsExtensionType()Lio/grpc/okhttp/internal/Platform$TlsExtensionType;
    .locals 1

    .line 439
    sget-object v0, Lio/grpc/okhttp/internal/Platform$TlsExtensionType;->ALPN_AND_NPN:Lio/grpc/okhttp/internal/Platform$TlsExtensionType;

    return-object v0
.end method
