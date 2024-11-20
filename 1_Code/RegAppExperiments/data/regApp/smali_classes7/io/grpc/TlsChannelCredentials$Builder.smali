.class public final Lio/grpc/TlsChannelCredentials$Builder;
.super Ljava/lang/Object;
.source "TlsChannelCredentials.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/TlsChannelCredentials;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private certificateChain:[B

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
    .locals 0

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/TlsChannelCredentials$1;)V
    .locals 0
    .param p1, "x0"    # Lio/grpc/TlsChannelCredentials$1;

    .line 223
    invoke-direct {p0}, Lio/grpc/TlsChannelCredentials$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lio/grpc/TlsChannelCredentials$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lio/grpc/TlsChannelCredentials$Builder;

    .line 223
    iget-boolean v0, p0, Lio/grpc/TlsChannelCredentials$Builder;->fakeFeature:Z

    return v0
.end method

.method static synthetic access$100(Lio/grpc/TlsChannelCredentials$Builder;)[B
    .locals 1
    .param p0, "x0"    # Lio/grpc/TlsChannelCredentials$Builder;

    .line 223
    iget-object v0, p0, Lio/grpc/TlsChannelCredentials$Builder;->certificateChain:[B

    return-object v0
.end method

.method static synthetic access$200(Lio/grpc/TlsChannelCredentials$Builder;)[B
    .locals 1
    .param p0, "x0"    # Lio/grpc/TlsChannelCredentials$Builder;

    .line 223
    iget-object v0, p0, Lio/grpc/TlsChannelCredentials$Builder;->privateKey:[B

    return-object v0
.end method

.method static synthetic access$300(Lio/grpc/TlsChannelCredentials$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lio/grpc/TlsChannelCredentials$Builder;

    .line 223
    iget-object v0, p0, Lio/grpc/TlsChannelCredentials$Builder;->privateKeyPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lio/grpc/TlsChannelCredentials$Builder;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lio/grpc/TlsChannelCredentials$Builder;

    .line 223
    iget-object v0, p0, Lio/grpc/TlsChannelCredentials$Builder;->keyManagers:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lio/grpc/TlsChannelCredentials$Builder;)[B
    .locals 1
    .param p0, "x0"    # Lio/grpc/TlsChannelCredentials$Builder;

    .line 223
    iget-object v0, p0, Lio/grpc/TlsChannelCredentials$Builder;->rootCertificates:[B

    return-object v0
.end method

.method static synthetic access$600(Lio/grpc/TlsChannelCredentials$Builder;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lio/grpc/TlsChannelCredentials$Builder;

    .line 223
    iget-object v0, p0, Lio/grpc/TlsChannelCredentials$Builder;->trustManagers:Ljava/util/List;

    return-object v0
.end method

.method private clearKeyManagers()V
    .locals 1

    .line 312
    const/4 v0, 0x0

    iput-object v0, p0, Lio/grpc/TlsChannelCredentials$Builder;->certificateChain:[B

    .line 313
    iput-object v0, p0, Lio/grpc/TlsChannelCredentials$Builder;->privateKey:[B

    .line 314
    iput-object v0, p0, Lio/grpc/TlsChannelCredentials$Builder;->privateKeyPassword:Ljava/lang/String;

    .line 315
    iput-object v0, p0, Lio/grpc/TlsChannelCredentials$Builder;->keyManagers:Ljava/util/List;

    .line 316
    return-void
.end method

.method private clearTrustManagers()V
    .locals 1

    .line 359
    const/4 v0, 0x0

    iput-object v0, p0, Lio/grpc/TlsChannelCredentials$Builder;->rootCertificates:[B

    .line 360
    iput-object v0, p0, Lio/grpc/TlsChannelCredentials$Builder;->trustManagers:Ljava/util/List;

    .line 361
    return-void
.end method


# virtual methods
.method public build()Lio/grpc/ChannelCredentials;
    .locals 1

    .line 365
    new-instance v0, Lio/grpc/TlsChannelCredentials;

    invoke-direct {v0, p0}, Lio/grpc/TlsChannelCredentials;-><init>(Lio/grpc/TlsChannelCredentials$Builder;)V

    return-object v0
.end method

.method public keyManager(Ljava/io/File;Ljava/io/File;)Lio/grpc/TlsChannelCredentials$Builder;
    .locals 1
    .param p1, "certChain"    # Ljava/io/File;
    .param p2, "privateKey"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lio/grpc/TlsChannelCredentials$Builder;->keyManager(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Lio/grpc/TlsChannelCredentials$Builder;

    move-result-object v0

    return-object v0
.end method

.method public keyManager(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Lio/grpc/TlsChannelCredentials$Builder;
    .locals 3
    .param p1, "certChain"    # Ljava/io/File;
    .param p2, "privateKey"    # Ljava/io/File;
    .param p3, "privateKeyPassword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 259
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 261
    .local v0, "certChainIs":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 263
    .local v1, "privateKeyIs":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {p0, v0, v1, p3}, Lio/grpc/TlsChannelCredentials$Builder;->keyManager(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/lang/String;)Lio/grpc/TlsChannelCredentials$Builder;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 265
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 268
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 263
    return-object v2

    .line 265
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

    .line 268
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

.method public keyManager(Ljava/io/InputStream;Ljava/io/InputStream;)Lio/grpc/TlsChannelCredentials$Builder;
    .locals 1
    .param p1, "certChain"    # Ljava/io/InputStream;
    .param p2, "privateKey"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 278
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lio/grpc/TlsChannelCredentials$Builder;->keyManager(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/lang/String;)Lio/grpc/TlsChannelCredentials$Builder;

    move-result-object v0

    return-object v0
.end method

.method public keyManager(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/lang/String;)Lio/grpc/TlsChannelCredentials$Builder;
    .locals 2
    .param p1, "certChain"    # Ljava/io/InputStream;
    .param p2, "privateKey"    # Ljava/io/InputStream;
    .param p3, "privateKeyPassword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 289
    invoke-static {p1}, Lcom/google/common/io/ByteStreams;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 290
    .local v0, "certChainBytes":[B
    invoke-static {p2}, Lcom/google/common/io/ByteStreams;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 291
    .local v1, "privateKeyBytes":[B
    invoke-direct {p0}, Lio/grpc/TlsChannelCredentials$Builder;->clearKeyManagers()V

    .line 292
    iput-object v0, p0, Lio/grpc/TlsChannelCredentials$Builder;->certificateChain:[B

    .line 293
    iput-object v1, p0, Lio/grpc/TlsChannelCredentials$Builder;->privateKey:[B

    .line 294
    iput-object p3, p0, Lio/grpc/TlsChannelCredentials$Builder;->privateKeyPassword:Ljava/lang/String;

    .line 295
    return-object p0
.end method

.method public varargs keyManager([Ljavax/net/ssl/KeyManager;)Lio/grpc/TlsChannelCredentials$Builder;
    .locals 2
    .param p1, "keyManagers"    # [Ljavax/net/ssl/KeyManager;

    .line 304
    new-instance v0, Ljava/util/ArrayList;

    .line 305
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 304
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 306
    .local v0, "keyManagerList":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/KeyManager;>;"
    invoke-direct {p0}, Lio/grpc/TlsChannelCredentials$Builder;->clearKeyManagers()V

    .line 307
    iput-object v0, p0, Lio/grpc/TlsChannelCredentials$Builder;->keyManagers:Ljava/util/List;

    .line 308
    return-object p0
.end method

.method public requireFakeFeature()Lio/grpc/TlsChannelCredentials$Builder;
    .locals 1

    .line 239
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/TlsChannelCredentials$Builder;->fakeFeature:Z

    .line 240
    return-object p0
.end method

.method public trustManager(Ljava/io/File;)Lio/grpc/TlsChannelCredentials$Builder;
    .locals 2
    .param p1, "rootCerts"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 324
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 326
    .local v0, "rootCertsIs":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0, v0}, Lio/grpc/TlsChannelCredentials$Builder;->trustManager(Ljava/io/InputStream;)Lio/grpc/TlsChannelCredentials$Builder;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 326
    return-object v1

    .line 328
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v1
.end method

.method public trustManager(Ljava/io/InputStream;)Lio/grpc/TlsChannelCredentials$Builder;
    .locals 1
    .param p1, "rootCerts"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 338
    invoke-static {p1}, Lcom/google/common/io/ByteStreams;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 339
    .local v0, "rootCertsBytes":[B
    invoke-direct {p0}, Lio/grpc/TlsChannelCredentials$Builder;->clearTrustManagers()V

    .line 340
    iput-object v0, p0, Lio/grpc/TlsChannelCredentials$Builder;->rootCertificates:[B

    .line 341
    return-object p0
.end method

.method public varargs trustManager([Ljavax/net/ssl/TrustManager;)Lio/grpc/TlsChannelCredentials$Builder;
    .locals 2
    .param p1, "trustManagers"    # [Ljavax/net/ssl/TrustManager;

    .line 351
    new-instance v0, Ljava/util/ArrayList;

    .line 352
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 351
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 353
    .local v0, "trustManagerList":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/TrustManager;>;"
    invoke-direct {p0}, Lio/grpc/TlsChannelCredentials$Builder;->clearTrustManagers()V

    .line 354
    iput-object v0, p0, Lio/grpc/TlsChannelCredentials$Builder;->trustManagers:Ljava/util/List;

    .line 355
    return-object p0
.end method
