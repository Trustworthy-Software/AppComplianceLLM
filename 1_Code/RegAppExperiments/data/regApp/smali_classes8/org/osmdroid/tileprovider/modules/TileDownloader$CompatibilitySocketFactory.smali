.class Lorg/osmdroid/tileprovider/modules/TileDownloader$CompatibilitySocketFactory;
.super Ljavax/net/ssl/SSLSocketFactory;
.source "TileDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/tileprovider/modules/TileDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CompatibilitySocketFactory"
.end annotation


# instance fields
.field sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method constructor <init>(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 0
    .param p1, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;

    .line 294
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    .line 295
    iput-object p1, p0, Lorg/osmdroid/tileprovider/modules/TileDownloader$CompatibilitySocketFactory;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 296
    return-void
.end method

.method private upgradeTlsAndRemoveSsl(Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;
    .locals 6
    .param p1, "socket"    # Ljavax/net/ssl/SSLSocket;

    .line 347
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v0

    .line 348
    .local v0, "supportedProtocols":[Ljava/lang/String;
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    .line 354
    .local v1, "enabledProtocols":[Ljava/lang/String;
    const-string v2, "TLSv1.2"

    invoke-static {v0, v2}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 355
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .local v2, "newEnabledProtocols":[Ljava/lang/String;
    goto :goto_0

    .line 357
    .end local v2    # "newEnabledProtocols":[Ljava/lang/String;
    :cond_0
    const-string v2, "SSLv3"

    invoke-static {v1, v2}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 358
    .local v2, "sslEnabled":I
    if-ltz v2, :cond_2

    .line 359
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    new-array v3, v3, [Ljava/lang/String;

    .line 360
    .local v3, "newEnabledProtocols":[Ljava/lang/String;
    const/4 v4, 0x0

    invoke-static {v1, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 361
    array-length v4, v3

    if-le v4, v2, :cond_1

    .line 362
    add-int/lit8 v4, v2, 0x1

    array-length v5, v3

    sub-int/2addr v5, v2

    invoke-static {v1, v4, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 372
    .end local v2    # "sslEnabled":I
    :cond_1
    move-object v2, v3

    goto :goto_0

    .line 368
    .end local v3    # "newEnabledProtocols":[Ljava/lang/String;
    .restart local v2    # "sslEnabled":I
    :cond_2
    move-object v3, v1

    move-object v2, v3

    .line 372
    .local v2, "newEnabledProtocols":[Ljava/lang/String;
    :goto_0
    invoke-virtual {p1, v2}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 373
    return-object p1
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 310
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/TileDownloader$CompatibilitySocketFactory;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 311
    .local v0, "socket":Ljavax/net/ssl/SSLSocket;
    invoke-direct {p0, v0}, Lorg/osmdroid/tileprovider/modules/TileDownloader$CompatibilitySocketFactory;->upgradeTlsAndRemoveSsl(Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    move-result-object v1

    return-object v1
.end method

.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 322
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/TileDownloader$CompatibilitySocketFactory;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 323
    .local v0, "socket":Ljavax/net/ssl/SSLSocket;
    invoke-direct {p0, v0}, Lorg/osmdroid/tileprovider/modules/TileDownloader$CompatibilitySocketFactory;->upgradeTlsAndRemoveSsl(Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    move-result-object v1

    return-object v1
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "localHost"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 329
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/TileDownloader$CompatibilitySocketFactory;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 330
    .local v0, "socket":Ljavax/net/ssl/SSLSocket;
    invoke-direct {p0, v0}, Lorg/osmdroid/tileprovider/modules/TileDownloader$CompatibilitySocketFactory;->upgradeTlsAndRemoveSsl(Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    move-result-object v1

    return-object v1
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 2
    .param p1, "host"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 335
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/TileDownloader$CompatibilitySocketFactory;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 336
    .local v0, "socket":Ljavax/net/ssl/SSLSocket;
    invoke-direct {p0, v0}, Lorg/osmdroid/tileprovider/modules/TileDownloader$CompatibilitySocketFactory;->upgradeTlsAndRemoveSsl(Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    move-result-object v1

    return-object v1
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 2
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "localAddress"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 342
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/TileDownloader$CompatibilitySocketFactory;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 343
    .local v0, "socket":Ljavax/net/ssl/SSLSocket;
    invoke-direct {p0, v0}, Lorg/osmdroid/tileprovider/modules/TileDownloader$CompatibilitySocketFactory;->upgradeTlsAndRemoveSsl(Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    move-result-object v1

    return-object v1
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 2
    .param p1, "s"    # Ljava/net/Socket;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "autoClose"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 316
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/TileDownloader$CompatibilitySocketFactory;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 317
    .local v0, "socket":Ljavax/net/ssl/SSLSocket;
    invoke-direct {p0, v0}, Lorg/osmdroid/tileprovider/modules/TileDownloader$CompatibilitySocketFactory;->upgradeTlsAndRemoveSsl(Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    move-result-object v1

    return-object v1
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .locals 1

    .line 300
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/TileDownloader$CompatibilitySocketFactory;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getDefaultCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    .line 305
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/TileDownloader$CompatibilitySocketFactory;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
