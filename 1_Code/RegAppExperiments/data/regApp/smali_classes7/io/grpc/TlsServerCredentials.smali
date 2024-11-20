.class public final Lio/grpc/TlsServerCredentials;
.super Lio/grpc/ServerCredentials;
.source "TlsServerCredentials.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/TlsServerCredentials$ClientAuth;,
        Lio/grpc/TlsServerCredentials$Builder;,
        Lio/grpc/TlsServerCredentials$Feature;
    }
.end annotation


# instance fields
.field private final certificateChain:[B

.field private final clientAuth:Lio/grpc/TlsServerCredentials$ClientAuth;

.field private final fakeFeature:Z

.field private final keyManagers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavax/net/ssl/KeyManager;",
            ">;"
        }
    .end annotation
.end field

.field private final privateKey:[B

.field private final privateKeyPassword:Ljava/lang/String;

.field private final rootCertificates:[B

.field private final trustManagers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavax/net/ssl/TrustManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/grpc/TlsServerCredentials$Builder;)V
    .locals 1
    .param p1, "builder"    # Lio/grpc/TlsServerCredentials$Builder;

    .line 71
    invoke-direct {p0}, Lio/grpc/ServerCredentials;-><init>()V

    .line 72
    invoke-static {p1}, Lio/grpc/TlsServerCredentials$Builder;->access$000(Lio/grpc/TlsServerCredentials$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lio/grpc/TlsServerCredentials;->fakeFeature:Z

    .line 73
    invoke-static {p1}, Lio/grpc/TlsServerCredentials$Builder;->access$100(Lio/grpc/TlsServerCredentials$Builder;)[B

    move-result-object v0

    iput-object v0, p0, Lio/grpc/TlsServerCredentials;->certificateChain:[B

    .line 74
    invoke-static {p1}, Lio/grpc/TlsServerCredentials$Builder;->access$200(Lio/grpc/TlsServerCredentials$Builder;)[B

    move-result-object v0

    iput-object v0, p0, Lio/grpc/TlsServerCredentials;->privateKey:[B

    .line 75
    invoke-static {p1}, Lio/grpc/TlsServerCredentials$Builder;->access$300(Lio/grpc/TlsServerCredentials$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/TlsServerCredentials;->privateKeyPassword:Ljava/lang/String;

    .line 76
    invoke-static {p1}, Lio/grpc/TlsServerCredentials$Builder;->access$400(Lio/grpc/TlsServerCredentials$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/TlsServerCredentials;->keyManagers:Ljava/util/List;

    .line 77
    invoke-static {p1}, Lio/grpc/TlsServerCredentials$Builder;->access$500(Lio/grpc/TlsServerCredentials$Builder;)Lio/grpc/TlsServerCredentials$ClientAuth;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/TlsServerCredentials;->clientAuth:Lio/grpc/TlsServerCredentials$ClientAuth;

    .line 78
    invoke-static {p1}, Lio/grpc/TlsServerCredentials$Builder;->access$600(Lio/grpc/TlsServerCredentials$Builder;)[B

    move-result-object v0

    iput-object v0, p0, Lio/grpc/TlsServerCredentials;->rootCertificates:[B

    .line 79
    invoke-static {p1}, Lio/grpc/TlsServerCredentials$Builder;->access$700(Lio/grpc/TlsServerCredentials$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/TlsServerCredentials;->trustManagers:Ljava/util/List;

    .line 80
    return-void
.end method

.method public static create(Ljava/io/File;Ljava/io/File;)Lio/grpc/ServerCredentials;
    .locals 1
    .param p0, "certChain"    # Ljava/io/File;
    .param p1, "privateKey"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-static {}, Lio/grpc/TlsServerCredentials;->newBuilder()Lio/grpc/TlsServerCredentials$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lio/grpc/TlsServerCredentials$Builder;->keyManager(Ljava/io/File;Ljava/io/File;)Lio/grpc/TlsServerCredentials$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/TlsServerCredentials$Builder;->build()Lio/grpc/ServerCredentials;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/io/InputStream;Ljava/io/InputStream;)Lio/grpc/ServerCredentials;
    .locals 1
    .param p0, "certChain"    # Ljava/io/InputStream;
    .param p1, "privateKey"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    invoke-static {}, Lio/grpc/TlsServerCredentials;->newBuilder()Lio/grpc/TlsServerCredentials$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lio/grpc/TlsServerCredentials$Builder;->keyManager(Ljava/io/InputStream;Ljava/io/InputStream;)Lio/grpc/TlsServerCredentials$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/TlsServerCredentials$Builder;->build()Lio/grpc/ServerCredentials;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lio/grpc/TlsServerCredentials$Builder;
    .locals 2

    .line 237
    new-instance v0, Lio/grpc/TlsServerCredentials$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/grpc/TlsServerCredentials$Builder;-><init>(Lio/grpc/TlsServerCredentials$1;)V

    return-object v0
.end method

.method private static requiredFeature(Ljava/util/Set;Ljava/util/Set;Lio/grpc/TlsServerCredentials$Feature;)V
    .locals 1
    .param p2, "feature"    # Lio/grpc/TlsServerCredentials$Feature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lio/grpc/TlsServerCredentials$Feature;",
            ">;",
            "Ljava/util/Set<",
            "Lio/grpc/TlsServerCredentials$Feature;",
            ">;",
            "Lio/grpc/TlsServerCredentials$Feature;",
            ")V"
        }
    .end annotation

    .line 191
    .local p0, "understoodFeatures":Ljava/util/Set;, "Ljava/util/Set<Lio/grpc/TlsServerCredentials$Feature;>;"
    .local p1, "incomprehensible":Ljava/util/Set;, "Ljava/util/Set<Lio/grpc/TlsServerCredentials$Feature;>;"
    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 194
    :cond_0
    return-void
.end method


# virtual methods
.method public getCertificateChain()[B
    .locals 2

    .line 88
    iget-object v0, p0, Lio/grpc/TlsServerCredentials;->certificateChain:[B

    if-nez v0, :cond_0

    .line 89
    const/4 v0, 0x0

    return-object v0

    .line 91
    :cond_0
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public getClientAuth()Lio/grpc/TlsServerCredentials$ClientAuth;
    .locals 1

    .line 124
    iget-object v0, p0, Lio/grpc/TlsServerCredentials;->clientAuth:Lio/grpc/TlsServerCredentials$ClientAuth;

    return-object v0
.end method

.method public getKeyManagers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljavax/net/ssl/KeyManager;",
            ">;"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lio/grpc/TlsServerCredentials;->keyManagers:Ljava/util/List;

    return-object v0
.end method

.method public getPrivateKey()[B
    .locals 2

    .line 101
    iget-object v0, p0, Lio/grpc/TlsServerCredentials;->privateKey:[B

    if-nez v0, :cond_0

    .line 102
    const/4 v0, 0x0

    return-object v0

    .line 104
    :cond_0
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKeyPassword()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lio/grpc/TlsServerCredentials;->privateKeyPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getRootCertificates()[B
    .locals 2

    .line 132
    iget-object v0, p0, Lio/grpc/TlsServerCredentials;->rootCertificates:[B

    if-nez v0, :cond_0

    .line 133
    const/4 v0, 0x0

    return-object v0

    .line 135
    :cond_0
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public getTrustManagers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljavax/net/ssl/TrustManager;",
            ">;"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lio/grpc/TlsServerCredentials;->trustManagers:Ljava/util/List;

    return-object v0
.end method

.method public incomprehensible(Ljava/util/Set;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lio/grpc/TlsServerCredentials$Feature;",
            ">;)",
            "Ljava/util/Set<",
            "Lio/grpc/TlsServerCredentials$Feature;",
            ">;"
        }
    .end annotation

    .line 176
    .local p1, "understoodFeatures":Ljava/util/Set;, "Ljava/util/Set<Lio/grpc/TlsServerCredentials$Feature;>;"
    const-class v0, Lio/grpc/TlsServerCredentials$Feature;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 177
    .local v0, "incomprehensible":Ljava/util/Set;, "Ljava/util/Set<Lio/grpc/TlsServerCredentials$Feature;>;"
    iget-boolean v1, p0, Lio/grpc/TlsServerCredentials;->fakeFeature:Z

    if-eqz v1, :cond_0

    .line 178
    sget-object v1, Lio/grpc/TlsServerCredentials$Feature;->FAKE:Lio/grpc/TlsServerCredentials$Feature;

    invoke-static {p1, v0, v1}, Lio/grpc/TlsServerCredentials;->requiredFeature(Ljava/util/Set;Ljava/util/Set;Lio/grpc/TlsServerCredentials$Feature;)V

    .line 180
    :cond_0
    iget-object v1, p0, Lio/grpc/TlsServerCredentials;->clientAuth:Lio/grpc/TlsServerCredentials$ClientAuth;

    sget-object v2, Lio/grpc/TlsServerCredentials$ClientAuth;->NONE:Lio/grpc/TlsServerCredentials$ClientAuth;

    if-eq v1, v2, :cond_1

    .line 181
    sget-object v1, Lio/grpc/TlsServerCredentials$Feature;->MTLS:Lio/grpc/TlsServerCredentials$Feature;

    invoke-static {p1, v0, v1}, Lio/grpc/TlsServerCredentials;->requiredFeature(Ljava/util/Set;Ljava/util/Set;Lio/grpc/TlsServerCredentials$Feature;)V

    .line 183
    :cond_1
    iget-object v1, p0, Lio/grpc/TlsServerCredentials;->keyManagers:Ljava/util/List;

    if-nez v1, :cond_2

    iget-object v1, p0, Lio/grpc/TlsServerCredentials;->trustManagers:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 184
    :cond_2
    sget-object v1, Lio/grpc/TlsServerCredentials$Feature;->CUSTOM_MANAGERS:Lio/grpc/TlsServerCredentials$Feature;

    invoke-static {p1, v0, v1}, Lio/grpc/TlsServerCredentials;->requiredFeature(Ljava/util/Set;Ljava/util/Set;Lio/grpc/TlsServerCredentials$Feature;)V

    .line 186
    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method
