.class public final Lio/grpc/TlsChannelCredentials;
.super Lio/grpc/ChannelCredentials;
.source "TlsChannelCredentials.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/TlsChannelCredentials$Builder;,
        Lio/grpc/TlsChannelCredentials$Feature;
    }
.end annotation


# instance fields
.field private final certificateChain:[B

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
.method constructor <init>(Lio/grpc/TlsChannelCredentials$Builder;)V
    .locals 1
    .param p1, "builder"    # Lio/grpc/TlsChannelCredentials$Builder;

    .line 53
    invoke-direct {p0}, Lio/grpc/ChannelCredentials;-><init>()V

    .line 54
    invoke-static {p1}, Lio/grpc/TlsChannelCredentials$Builder;->access$000(Lio/grpc/TlsChannelCredentials$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lio/grpc/TlsChannelCredentials;->fakeFeature:Z

    .line 55
    invoke-static {p1}, Lio/grpc/TlsChannelCredentials$Builder;->access$100(Lio/grpc/TlsChannelCredentials$Builder;)[B

    move-result-object v0

    iput-object v0, p0, Lio/grpc/TlsChannelCredentials;->certificateChain:[B

    .line 56
    invoke-static {p1}, Lio/grpc/TlsChannelCredentials$Builder;->access$200(Lio/grpc/TlsChannelCredentials$Builder;)[B

    move-result-object v0

    iput-object v0, p0, Lio/grpc/TlsChannelCredentials;->privateKey:[B

    .line 57
    invoke-static {p1}, Lio/grpc/TlsChannelCredentials$Builder;->access$300(Lio/grpc/TlsChannelCredentials$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/TlsChannelCredentials;->privateKeyPassword:Ljava/lang/String;

    .line 58
    invoke-static {p1}, Lio/grpc/TlsChannelCredentials$Builder;->access$400(Lio/grpc/TlsChannelCredentials$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/TlsChannelCredentials;->keyManagers:Ljava/util/List;

    .line 59
    invoke-static {p1}, Lio/grpc/TlsChannelCredentials$Builder;->access$500(Lio/grpc/TlsChannelCredentials$Builder;)[B

    move-result-object v0

    iput-object v0, p0, Lio/grpc/TlsChannelCredentials;->rootCertificates:[B

    .line 60
    invoke-static {p1}, Lio/grpc/TlsChannelCredentials$Builder;->access$600(Lio/grpc/TlsChannelCredentials$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/TlsChannelCredentials;->trustManagers:Ljava/util/List;

    .line 61
    return-void
.end method

.method public static create()Lio/grpc/ChannelCredentials;
    .locals 1

    .line 42
    invoke-static {}, Lio/grpc/TlsChannelCredentials;->newBuilder()Lio/grpc/TlsChannelCredentials$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/TlsChannelCredentials$Builder;->build()Lio/grpc/ChannelCredentials;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lio/grpc/TlsChannelCredentials$Builder;
    .locals 2

    .line 219
    new-instance v0, Lio/grpc/TlsChannelCredentials$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/grpc/TlsChannelCredentials$Builder;-><init>(Lio/grpc/TlsChannelCredentials$1;)V

    return-object v0
.end method

.method private static requiredFeature(Ljava/util/Set;Ljava/util/Set;Lio/grpc/TlsChannelCredentials$Feature;)V
    .locals 1
    .param p2, "feature"    # Lio/grpc/TlsChannelCredentials$Feature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lio/grpc/TlsChannelCredentials$Feature;",
            ">;",
            "Ljava/util/Set<",
            "Lio/grpc/TlsChannelCredentials$Feature;",
            ">;",
            "Lio/grpc/TlsChannelCredentials$Feature;",
            ")V"
        }
    .end annotation

    .line 167
    .local p0, "understoodFeatures":Ljava/util/Set;, "Ljava/util/Set<Lio/grpc/TlsChannelCredentials$Feature;>;"
    .local p1, "incomprehensible":Ljava/util/Set;, "Ljava/util/Set<Lio/grpc/TlsChannelCredentials$Feature;>;"
    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 170
    :cond_0
    return-void
.end method


# virtual methods
.method public getCertificateChain()[B
    .locals 2

    .line 69
    iget-object v0, p0, Lio/grpc/TlsChannelCredentials;->certificateChain:[B

    if-nez v0, :cond_0

    .line 70
    const/4 v0, 0x0

    return-object v0

    .line 72
    :cond_0
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

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

    .line 100
    iget-object v0, p0, Lio/grpc/TlsChannelCredentials;->keyManagers:Ljava/util/List;

    return-object v0
.end method

.method public getPrivateKey()[B
    .locals 2

    .line 82
    iget-object v0, p0, Lio/grpc/TlsChannelCredentials;->privateKey:[B

    if-nez v0, :cond_0

    .line 83
    const/4 v0, 0x0

    return-object v0

    .line 85
    :cond_0
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKeyPassword()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lio/grpc/TlsChannelCredentials;->privateKeyPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getRootCertificates()[B
    .locals 2

    .line 108
    iget-object v0, p0, Lio/grpc/TlsChannelCredentials;->rootCertificates:[B

    if-nez v0, :cond_0

    .line 109
    const/4 v0, 0x0

    return-object v0

    .line 111
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

    .line 121
    iget-object v0, p0, Lio/grpc/TlsChannelCredentials;->trustManagers:Ljava/util/List;

    return-object v0
.end method

.method public incomprehensible(Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lio/grpc/TlsChannelCredentials$Feature;",
            ">;)",
            "Ljava/util/Set<",
            "Lio/grpc/TlsChannelCredentials$Feature;",
            ">;"
        }
    .end annotation

    .line 152
    .local p1, "understoodFeatures":Ljava/util/Set;, "Ljava/util/Set<Lio/grpc/TlsChannelCredentials$Feature;>;"
    const-class v0, Lio/grpc/TlsChannelCredentials$Feature;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 153
    .local v0, "incomprehensible":Ljava/util/Set;, "Ljava/util/Set<Lio/grpc/TlsChannelCredentials$Feature;>;"
    iget-boolean v1, p0, Lio/grpc/TlsChannelCredentials;->fakeFeature:Z

    if-eqz v1, :cond_0

    .line 154
    sget-object v1, Lio/grpc/TlsChannelCredentials$Feature;->FAKE:Lio/grpc/TlsChannelCredentials$Feature;

    invoke-static {p1, v0, v1}, Lio/grpc/TlsChannelCredentials;->requiredFeature(Ljava/util/Set;Ljava/util/Set;Lio/grpc/TlsChannelCredentials$Feature;)V

    .line 156
    :cond_0
    iget-object v1, p0, Lio/grpc/TlsChannelCredentials;->rootCertificates:[B

    if-nez v1, :cond_1

    iget-object v1, p0, Lio/grpc/TlsChannelCredentials;->privateKey:[B

    if-nez v1, :cond_1

    iget-object v1, p0, Lio/grpc/TlsChannelCredentials;->keyManagers:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 157
    :cond_1
    sget-object v1, Lio/grpc/TlsChannelCredentials$Feature;->MTLS:Lio/grpc/TlsChannelCredentials$Feature;

    invoke-static {p1, v0, v1}, Lio/grpc/TlsChannelCredentials;->requiredFeature(Ljava/util/Set;Ljava/util/Set;Lio/grpc/TlsChannelCredentials$Feature;)V

    .line 159
    :cond_2
    iget-object v1, p0, Lio/grpc/TlsChannelCredentials;->keyManagers:Ljava/util/List;

    if-nez v1, :cond_3

    iget-object v1, p0, Lio/grpc/TlsChannelCredentials;->trustManagers:Ljava/util/List;

    if-eqz v1, :cond_4

    .line 160
    :cond_3
    sget-object v1, Lio/grpc/TlsChannelCredentials$Feature;->CUSTOM_MANAGERS:Lio/grpc/TlsChannelCredentials$Feature;

    invoke-static {p1, v0, v1}, Lio/grpc/TlsChannelCredentials;->requiredFeature(Ljava/util/Set;Ljava/util/Set;Lio/grpc/TlsChannelCredentials$Feature;)V

    .line 162
    :cond_4
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public withoutBearerTokens()Lio/grpc/ChannelCredentials;
    .locals 0

    .line 174
    return-object p0
.end method
