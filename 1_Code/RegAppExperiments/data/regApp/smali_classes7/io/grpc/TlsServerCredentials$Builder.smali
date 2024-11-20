.class public final Lio/grpc/TlsServerCredentials$Builder;
.super Ljava/lang/Object;
.source "TlsServerCredentials.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/TlsServerCredentials;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private certificateChain:[B

.field private clientAuth:Lio/grpc/TlsServerCredentials$ClientAuth;

.field private fakeFeature:Z

.field private keyManagers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavax/net/ssl/KeyManager;",
            ">;"
        }
    .end annotation
.end field

.field private privateKey:[B

.field private privateKeyPassword:Ljava/lang/String;

.field private rootCertificates:[B

.field private trustManagers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavax/net/ssl/TrustManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    sget-object v0, Lio/grpc/TlsServerCredentials$ClientAuth;->NONE:Lio/grpc/TlsServerCredentials$ClientAuth;

    iput-object v0, p0, Lio/grpc/TlsServerCredentials$Builder;->clientAuth:Lio/grpc/TlsServerCredentials$ClientAuth;

    .line 251
    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/TlsServerCredentials$1;)V
    .locals 0
    .param p1, "x0"    # Lio/grpc/TlsServerCredentials$1;

    .line 241
    invoke-direct {p0}, Lio/grpc/TlsServerCredentials$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lio/grpc/TlsServerCredentials$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lio/grpc/TlsServerCredentials$Builder;

    .line 241
    iget-boolean v0, p0, Lio/grpc/TlsServerCredentials$Builder;->fakeFeature:Z

    return v0
.end method

.method static synthetic access$100(Lio/grpc/TlsServerCredentials$Builder;)[B
    .locals 1
    .param p0, "x0"    # Lio/grpc/TlsServerCredentials$Builder;

    .line 241
    iget-object v0, p0, Lio/grpc/TlsServerCredentials$Builder;->certificateChain:[B

    return-object v0
.end method

.method static synthetic access$200(Lio/grpc/TlsServerCredentials$Builder;)[B
    .locals 1
    .param p0, "x0"    # Lio/grpc/TlsServerCredentials$Builder;

    .line 241
    iget-object v0, p0, Lio/grpc/TlsServerCredentials$Builder;->privateKey:[B

    return-object v0
.end method

.method static synthetic access$300(Lio/grpc/TlsServerCredentials$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lio/grpc/TlsServerCredentials$Builder;

    .line 241
    iget-object v0, p0, Lio/grpc/TlsServerCredentials$Builder;->privateKeyPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lio/grpc/TlsServerCredentials$Builder;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lio/grpc/TlsServerCredentials$Builder;

    .line 241
    iget-object v0, p0, Lio/grpc/TlsServerCredentials$Builder;->keyManagers:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lio/grpc/TlsServerCredentials$Builder;)Lio/grpc/TlsServerCredentials$ClientAuth;
    .locals 1
    .param p0, "x0"    # Lio/grpc/TlsServerCredentials$Builder;

    .line 241
    iget-object v0, p0, Lio/grpc/TlsServerCredentials$Builder;->clientAuth:Lio/grpc/TlsServerCredentials$ClientAuth;

    return-object v0
.end method

.method static synthetic access$600(Lio/grpc/TlsServerCredentials$Builder;)[B
    .locals 1
    .param p0, "x0"    # Lio/grpc/TlsServerCredentials$Builder;

    .line 241
    iget-object v0, p0, Lio/grpc/TlsServerCredentials$Builder;->rootCertificates:[B

    return-object v0
.end method

.method static synthetic access$700(Lio/grpc/TlsServerCredentials$Builder;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lio/grpc/TlsServerCredentials$Builder;

    .line 241
    iget-object v0, p0, Lio/grpc/TlsServerCredentials$Builder;->trustManagers:Ljava/util/List;

    return-object v0
.end method

.method private clearKeyManagers()V
    .locals 1

    .line 331
    const/4 v0, 0x0

    iput-object v0, p0, Lio/grpc/TlsServerCredentials$Builder;->certificateChain:[B

    .line 332
    iput-object v0, p0, Lio/grpc/TlsServerCredentials$Builder;->privateKey:[B

    .line 333
    iput-object v0, p0, Lio/grpc/TlsServerCredentials$Builder;->privateKeyPassword:Ljava/lang/String;

    .line 334
    iput-object v0, p0, Lio/grpc/TlsServerCredentials$Builder;->keyManagers:Ljava/util/List;

    .line 335
    return-void
.end method

.method private clearTrustManagers()V
    .locals 1

    .line 388
    const/4 v0, 0x0

    iput-object v0, p0, Lio/grpc/TlsServerCredentials$Builder;->rootCertificates:[B

    .line 389
    iput-object v0, p0, Lio/grpc/TlsServerCredentials$Builder;->trustManagers:Ljava/util/List;

    .line 390
    return-void
.end method


# virtual methods
.method public build()Lio/grpc/ServerCredentials;
    .locals 2

    .line 394
    iget-object v0, p0, Lio/grpc/TlsServerCredentials$Builder;->certificateChain:[B

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/grpc/TlsServerCredentials$Builder;->keyManagers:Ljava/util/List;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 395
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A key manager is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    :cond_1
    :goto_0
    new-instance v0, Lio/grpc/TlsServerCredentials;

    invoke-direct {v0, p0}, Lio/grpc/TlsServerCredentials;-><init>(Lio/grpc/TlsServerCredentials$Builder;)V

    return-object v0
.end method

.method public clientAuth(Lio/grpc/TlsServerCredentials$ClientAuth;)Lio/grpc/TlsServerCredentials$Builder;
    .locals 1
    .param p1, "clientAuth"    # Lio/grpc/TlsServerCredentials$ClientAuth;

    .line 342
    const-string v0, "clientAuth"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    iput-object p1, p0, Lio/grpc/TlsServerCredentials$Builder;->clientAuth:Lio/grpc/TlsServerCredentials$ClientAuth;

    .line 344
    return-object p0
.end method

.method public keyManager(Ljava/io/File;Ljava/io/File;)Lio/grpc/TlsServerCredentials$Builder;
    .locals 1
    .param p1, "certChain"    # Ljava/io/File;
    .param p2, "privateKey"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 268
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lio/grpc/TlsServerCredentials$Builder;->keyManager(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Lio/grpc/TlsServerCredentials$Builder;

    move-result-object v0

    return-object v0
.end method

.method public keyManager(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Lio/grpc/TlsServerCredentials$Builder;
    .locals 3
    .param p1, "certChain"    # Ljava/io/File;
    .param p2, "privateKey"    # Ljava/io/File;
    .param p3, "privateKeyPassword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 278
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 280
    .local v0, "certChainIs":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 282
    .local v1, "privateKeyIs":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {p0, v0, v1, p3}, Lio/grpc/TlsServerCredentials$Builder;->keyManager(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/lang/String;)Lio/grpc/TlsServerCredentials$Builder;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 284
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 287
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 282
    return-object v2

    .line 284
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .end local v0    # "certChainIs":Ljava/io/InputStream;
    .end local p1    # "certChain":Ljava/io/File;
    .end local p2    # "privateKey":Ljava/io/File;
    .end local p3    # "privateKeyPassword":Ljava/lang/String;
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 287
    .end local v1    # "privateKeyIs":Ljava/io/InputStream;
    .restart local v0    # "certChainIs":Ljava/io/InputStream;
    .restart local p1    # "certChain":Ljava/io/File;
    .restart local p2    # "privateKey":Ljava/io/File;
    .restart local p3    # "privateKeyPassword":Ljava/lang/String;
    :catchall_1
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v1
.end method

.method public keyManager(Ljava/io/InputStream;Ljava/io/InputStream;)Lio/grpc/TlsServerCredentials$Builder;
    .locals 1
    .param p1, "certChain"    # Ljava/io/InputStream;
    .param p2, "privateKey"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 297
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lio/grpc/TlsServerCredentials$Builder;->keyManager(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/lang/String;)Lio/grpc/TlsServerCredentials$Builder;

    move-result-object v0

    return-object v0
.end method

.method public keyManager(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/lang/String;)Lio/grpc/TlsServerCredentials$Builder;
    .locals 2
    .param p1, "certChain"    # Ljava/io/InputStream;
    .param p2, "privateKey"    # Ljava/io/InputStream;
    .param p3, "privateKeyPassword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 308
    invoke-static {p1}, Lcom/google/common/io/ByteStreams;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 309
    .local v0, "certChainBytes":[B
    invoke-static {p2}, Lcom/google/common/io/ByteStreams;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 310
    .local v1, "privateKeyBytes":[B
    invoke-direct {p0}, Lio/grpc/TlsServerCredentials$Builder;->clearKeyManagers()V

    .line 311
    iput-object v0, p0, Lio/grpc/TlsServerCredentials$Builder;->certificateChain:[B

    .line 312
    iput-object v1, p0, Lio/grpc/TlsServerCredentials$Builder;->privateKey:[B

    .line 313
    iput-object p3, p0, Lio/grpc/TlsServerCredentials$Builder;->privateKeyPassword:Ljava/lang/String;

    .line 314
    return-object p0
.end method

.method public varargs keyManager([Ljavax/net/ssl/KeyManager;)Lio/grpc/TlsServerCredentials$Builder;
    .locals 2
    .param p1, "keyManagers"    # [Ljavax/net/ssl/KeyManager;

    .line 323
    new-instance v0, Ljava/util/ArrayList;

    .line 324
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 323
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 325
    .local v0, "keyManagerList":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/KeyManager;>;"
    invoke-direct {p0}, Lio/grpc/TlsServerCredentials$Builder;->clearKeyManagers()V

    .line 326
    iput-object v0, p0, Lio/grpc/TlsServerCredentials$Builder;->keyManagers:Ljava/util/List;

    .line 327
    return-object p0
.end method

.method public requireFakeFeature()Lio/grpc/TlsServerCredentials$Builder;
    .locals 1

    .line 258
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/TlsServerCredentials$Builder;->fakeFeature:Z

    .line 259
    return-object p0
.end method

.method public trustManager(Ljava/io/File;)Lio/grpc/TlsServerCredentials$Builder;
    .locals 2
    .param p1, "rootCerts"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 353
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 355
    .local v0, "rootCertsIs":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0, v0}, Lio/grpc/TlsServerCredentials$Builder;->trustManager(Ljava/io/InputStream;)Lio/grpc/TlsServerCredentials$Builder;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 355
    return-object v1

    .line 357
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v1
.end method

.method public trustManager(Ljava/io/InputStream;)Lio/grpc/TlsServerCredentials$Builder;
    .locals 1
    .param p1, "rootCerts"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 367
    invoke-static {p1}, Lcom/google/common/io/ByteStreams;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 368
    .local v0, "rootCertsBytes":[B
    invoke-direct {p0}, Lio/grpc/TlsServerCredentials$Builder;->clearTrustManagers()V

    .line 369
    iput-object v0, p0, Lio/grpc/TlsServerCredentials$Builder;->rootCertificates:[B

    .line 370
    return-object p0
.end method

.method public varargs trustManager([Ljavax/net/ssl/TrustManager;)Lio/grpc/TlsServerCredentials$Builder;
    .locals 2
    .param p1, "trustManagers"    # [Ljavax/net/ssl/TrustManager;

    .line 380
    new-instance v0, Ljava/util/ArrayList;

    .line 381
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 380
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 382
    .local v0, "trustManagerList":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    invoke-direct {p0}, Lio/grpc/TlsServerCredentials$Builder;->clearTrustManagers()V

    .line 383
    iput-object v0, p0, Lio/grpc/TlsServerCredentials$Builder;->trustManagers:Ljava/util/List;

    .line 384
    return-object p0
.end method
