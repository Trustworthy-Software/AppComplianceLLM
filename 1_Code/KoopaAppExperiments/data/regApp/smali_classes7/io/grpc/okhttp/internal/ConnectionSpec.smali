.class public final Lio/grpc/okhttp/internal/ConnectionSpec;
.super Ljava/lang/Object;
.source "ConnectionSpec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/okhttp/internal/ConnectionSpec$Builder;
    }
.end annotation


# static fields
.field private static final APPROVED_CIPHER_SUITES:[Lio/grpc/okhttp/internal/CipherSuite;

.field public static final CLEARTEXT:Lio/grpc/okhttp/internal/ConnectionSpec;

.field public static final COMPATIBLE_TLS:Lio/grpc/okhttp/internal/ConnectionSpec;

.field public static final MODERN_TLS:Lio/grpc/okhttp/internal/ConnectionSpec;


# instance fields
.field private final cipherSuites:[Ljava/lang/String;

.field final supportsTlsExtensions:Z

.field final tls:Z

.field private final tlsVersions:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 35
    const/16 v0, 0x10

    new-array v0, v0, [Lio/grpc/okhttp/internal/CipherSuite;

    sget-object v1, Lio/grpc/okhttp/internal/CipherSuite;->TLS_AES_128_GCM_SHA256:Lio/grpc/okhttp/internal/CipherSuite;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lio/grpc/okhttp/internal/CipherSuite;->TLS_AES_256_GCM_SHA384:Lio/grpc/okhttp/internal/CipherSuite;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lio/grpc/okhttp/internal/CipherSuite;->TLS_CHACHA20_POLY1305_SHA256:Lio/grpc/okhttp/internal/CipherSuite;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sget-object v1, Lio/grpc/okhttp/internal/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256:Lio/grpc/okhttp/internal/CipherSuite;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    sget-object v1, Lio/grpc/okhttp/internal/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256:Lio/grpc/okhttp/internal/CipherSuite;

    const/4 v6, 0x4

    aput-object v1, v0, v6

    const/4 v1, 0x5

    sget-object v7, Lio/grpc/okhttp/internal/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384:Lio/grpc/okhttp/internal/CipherSuite;

    aput-object v7, v0, v1

    const/4 v1, 0x6

    sget-object v7, Lio/grpc/okhttp/internal/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384:Lio/grpc/okhttp/internal/CipherSuite;

    aput-object v7, v0, v1

    const/4 v1, 0x7

    sget-object v7, Lio/grpc/okhttp/internal/CipherSuite;->TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256:Lio/grpc/okhttp/internal/CipherSuite;

    aput-object v7, v0, v1

    const/16 v1, 0x8

    sget-object v7, Lio/grpc/okhttp/internal/CipherSuite;->TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256:Lio/grpc/okhttp/internal/CipherSuite;

    aput-object v7, v0, v1

    const/16 v1, 0x9

    sget-object v7, Lio/grpc/okhttp/internal/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA:Lio/grpc/okhttp/internal/CipherSuite;

    aput-object v7, v0, v1

    const/16 v1, 0xa

    sget-object v7, Lio/grpc/okhttp/internal/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA:Lio/grpc/okhttp/internal/CipherSuite;

    aput-object v7, v0, v1

    const/16 v1, 0xb

    sget-object v7, Lio/grpc/okhttp/internal/CipherSuite;->TLS_RSA_WITH_AES_128_GCM_SHA256:Lio/grpc/okhttp/internal/CipherSuite;

    aput-object v7, v0, v1

    const/16 v1, 0xc

    sget-object v7, Lio/grpc/okhttp/internal/CipherSuite;->TLS_RSA_WITH_AES_256_GCM_SHA384:Lio/grpc/okhttp/internal/CipherSuite;

    aput-object v7, v0, v1

    const/16 v1, 0xd

    sget-object v7, Lio/grpc/okhttp/internal/CipherSuite;->TLS_RSA_WITH_AES_128_CBC_SHA:Lio/grpc/okhttp/internal/CipherSuite;

    aput-object v7, v0, v1

    const/16 v1, 0xe

    sget-object v7, Lio/grpc/okhttp/internal/CipherSuite;->TLS_RSA_WITH_AES_256_CBC_SHA:Lio/grpc/okhttp/internal/CipherSuite;

    aput-object v7, v0, v1

    const/16 v1, 0xf

    sget-object v7, Lio/grpc/okhttp/internal/CipherSuite;->TLS_RSA_WITH_3DES_EDE_CBC_SHA:Lio/grpc/okhttp/internal/CipherSuite;

    aput-object v7, v0, v1

    sput-object v0, Lio/grpc/okhttp/internal/ConnectionSpec;->APPROVED_CIPHER_SUITES:[Lio/grpc/okhttp/internal/CipherSuite;

    .line 61
    new-instance v1, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;

    invoke-direct {v1, v3}, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;-><init>(Z)V

    .line 62
    invoke-virtual {v1, v0}, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;->cipherSuites([Lio/grpc/okhttp/internal/CipherSuite;)Lio/grpc/okhttp/internal/ConnectionSpec$Builder;

    move-result-object v0

    new-array v1, v4, [Lio/grpc/okhttp/internal/TlsVersion;

    sget-object v7, Lio/grpc/okhttp/internal/TlsVersion;->TLS_1_3:Lio/grpc/okhttp/internal/TlsVersion;

    aput-object v7, v1, v2

    sget-object v7, Lio/grpc/okhttp/internal/TlsVersion;->TLS_1_2:Lio/grpc/okhttp/internal/TlsVersion;

    aput-object v7, v1, v3

    .line 63
    invoke-virtual {v0, v1}, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;->tlsVersions([Lio/grpc/okhttp/internal/TlsVersion;)Lio/grpc/okhttp/internal/ConnectionSpec$Builder;

    move-result-object v0

    .line 64
    invoke-virtual {v0, v3}, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;->supportsTlsExtensions(Z)Lio/grpc/okhttp/internal/ConnectionSpec$Builder;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;->build()Lio/grpc/okhttp/internal/ConnectionSpec;

    move-result-object v0

    sput-object v0, Lio/grpc/okhttp/internal/ConnectionSpec;->MODERN_TLS:Lio/grpc/okhttp/internal/ConnectionSpec;

    .line 68
    new-instance v1, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;

    invoke-direct {v1, v0}, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;-><init>(Lio/grpc/okhttp/internal/ConnectionSpec;)V

    new-array v0, v6, [Lio/grpc/okhttp/internal/TlsVersion;

    sget-object v6, Lio/grpc/okhttp/internal/TlsVersion;->TLS_1_3:Lio/grpc/okhttp/internal/TlsVersion;

    aput-object v6, v0, v2

    sget-object v6, Lio/grpc/okhttp/internal/TlsVersion;->TLS_1_2:Lio/grpc/okhttp/internal/TlsVersion;

    aput-object v6, v0, v3

    sget-object v6, Lio/grpc/okhttp/internal/TlsVersion;->TLS_1_1:Lio/grpc/okhttp/internal/TlsVersion;

    aput-object v6, v0, v4

    sget-object v4, Lio/grpc/okhttp/internal/TlsVersion;->TLS_1_0:Lio/grpc/okhttp/internal/TlsVersion;

    aput-object v4, v0, v5

    .line 69
    invoke-virtual {v1, v0}, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;->tlsVersions([Lio/grpc/okhttp/internal/TlsVersion;)Lio/grpc/okhttp/internal/ConnectionSpec$Builder;

    move-result-object v0

    .line 70
    invoke-virtual {v0, v3}, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;->supportsTlsExtensions(Z)Lio/grpc/okhttp/internal/ConnectionSpec$Builder;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;->build()Lio/grpc/okhttp/internal/ConnectionSpec;

    move-result-object v0

    sput-object v0, Lio/grpc/okhttp/internal/ConnectionSpec;->COMPATIBLE_TLS:Lio/grpc/okhttp/internal/ConnectionSpec;

    .line 74
    new-instance v0, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;

    invoke-direct {v0, v2}, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;-><init>(Z)V

    invoke-virtual {v0}, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;->build()Lio/grpc/okhttp/internal/ConnectionSpec;

    move-result-object v0

    sput-object v0, Lio/grpc/okhttp/internal/ConnectionSpec;->CLEARTEXT:Lio/grpc/okhttp/internal/ConnectionSpec;

    return-void
.end method

.method private constructor <init>(Lio/grpc/okhttp/internal/ConnectionSpec$Builder;)V
    .locals 1
    .param p1, "builder"    # Lio/grpc/okhttp/internal/ConnectionSpec$Builder;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    invoke-static {p1}, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;->access$000(Lio/grpc/okhttp/internal/ConnectionSpec$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lio/grpc/okhttp/internal/ConnectionSpec;->tls:Z

    .line 91
    invoke-static {p1}, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;->access$100(Lio/grpc/okhttp/internal/ConnectionSpec$Builder;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/okhttp/internal/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    .line 92
    invoke-static {p1}, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;->access$200(Lio/grpc/okhttp/internal/ConnectionSpec$Builder;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/okhttp/internal/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    .line 93
    invoke-static {p1}, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;->access$300(Lio/grpc/okhttp/internal/ConnectionSpec$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lio/grpc/okhttp/internal/ConnectionSpec;->supportsTlsExtensions:Z

    .line 94
    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/okhttp/internal/ConnectionSpec$Builder;Lio/grpc/okhttp/internal/ConnectionSpec$1;)V
    .locals 0
    .param p1, "x0"    # Lio/grpc/okhttp/internal/ConnectionSpec$Builder;
    .param p2, "x1"    # Lio/grpc/okhttp/internal/ConnectionSpec$1;

    .line 31
    invoke-direct {p0, p1}, Lio/grpc/okhttp/internal/ConnectionSpec;-><init>(Lio/grpc/okhttp/internal/ConnectionSpec$Builder;)V

    return-void
.end method

.method static synthetic access$400(Lio/grpc/okhttp/internal/ConnectionSpec;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/internal/ConnectionSpec;

    .line 31
    iget-object v0, p0, Lio/grpc/okhttp/internal/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lio/grpc/okhttp/internal/ConnectionSpec;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/internal/ConnectionSpec;

    .line 31
    iget-object v0, p0, Lio/grpc/okhttp/internal/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    return-object v0
.end method

.method private static contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)Z"
        }
    .end annotation

    .line 230
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 231
    .local v3, "arrayValue":Ljava/lang/Object;, "TT;"
    invoke-static {p1, v3}, Lio/grpc/okhttp/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 232
    const/4 v0, 0x1

    return v0

    .line 230
    .end local v3    # "arrayValue":Ljava/lang/Object;, "TT;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 235
    :cond_1
    return v1
.end method

.method private static nonEmptyIntersection([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .param p0, "a"    # [Ljava/lang/String;
    .param p1, "b"    # [Ljava/lang/String;

    .line 218
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v1, p0

    if-eqz v1, :cond_3

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_1

    .line 221
    :cond_0
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 222
    .local v3, "toFind":Ljava/lang/String;
    invoke-static {p1, v3}, Lio/grpc/okhttp/internal/ConnectionSpec;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 223
    const/4 v0, 0x1

    return v0

    .line 221
    .end local v3    # "toFind":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 226
    :cond_2
    return v0

    .line 219
    :cond_3
    :goto_1
    return v0
.end method

.method private supportedSpec(Ljavax/net/ssl/SSLSocket;Z)Lio/grpc/okhttp/internal/ConnectionSpec;
    .locals 8
    .param p1, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .param p2, "isFallback"    # Z

    .line 145
    const/4 v0, 0x0

    .line 146
    .local v0, "cipherSuitesToEnable":[Ljava/lang/String;
    iget-object v1, p0, Lio/grpc/okhttp/internal/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 147
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, "cipherSuitesToSelectFrom":[Ljava/lang/String;
    const-class v2, Ljava/lang/String;

    iget-object v3, p0, Lio/grpc/okhttp/internal/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    .line 149
    invoke-static {v2, v3, v1}, Lio/grpc/okhttp/internal/Util;->intersect(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, [Ljava/lang/String;

    .line 152
    .end local v1    # "cipherSuitesToSelectFrom":[Ljava/lang/String;
    :cond_0
    if-eqz p2, :cond_2

    .line 155
    const-string v1, "TLS_FALLBACK_SCSV"

    .line 156
    .local v1, "fallbackScsv":Ljava/lang/String;
    nop

    .line 157
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "TLS_FALLBACK_SCSV"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 159
    .local v2, "socketSupportsFallbackScsv":Z
    if-eqz v2, :cond_2

    .line 161
    if-eqz v0, :cond_1

    .line 162
    move-object v4, v0

    goto :goto_0

    .line 163
    :cond_1
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v4

    :goto_0
    nop

    .line 164
    .local v4, "oldEnabledCipherSuites":[Ljava/lang/String;
    array-length v5, v4

    add-int/lit8 v5, v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 165
    .local v5, "newEnabledCipherSuites":[Ljava/lang/String;
    array-length v6, v4

    const/4 v7, 0x0

    invoke-static {v4, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 167
    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    aput-object v3, v5, v6

    .line 168
    move-object v0, v5

    .line 172
    .end local v1    # "fallbackScsv":Ljava/lang/String;
    .end local v2    # "socketSupportsFallbackScsv":Z
    .end local v4    # "oldEnabledCipherSuites":[Ljava/lang/String;
    .end local v5    # "newEnabledCipherSuites":[Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, "protocolsToSelectFrom":[Ljava/lang/String;
    const-class v2, Ljava/lang/String;

    iget-object v3, p0, Lio/grpc/okhttp/internal/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lio/grpc/okhttp/internal/Util;->intersect(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 174
    .local v2, "protocolsToEnable":[Ljava/lang/String;
    new-instance v3, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;

    invoke-direct {v3, p0}, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;-><init>(Lio/grpc/okhttp/internal/ConnectionSpec;)V

    .line 175
    invoke-virtual {v3, v0}, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;->cipherSuites([Ljava/lang/String;)Lio/grpc/okhttp/internal/ConnectionSpec$Builder;

    move-result-object v3

    .line 176
    invoke-virtual {v3, v2}, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;->tlsVersions([Ljava/lang/String;)Lio/grpc/okhttp/internal/ConnectionSpec$Builder;

    move-result-object v3

    .line 177
    invoke-virtual {v3}, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;->build()Lio/grpc/okhttp/internal/ConnectionSpec;

    move-result-object v3

    .line 174
    return-object v3
.end method


# virtual methods
.method public apply(Ljavax/net/ssl/SSLSocket;Z)V
    .locals 2
    .param p1, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .param p2, "isFallback"    # Z

    .line 129
    invoke-direct {p0, p1, p2}, Lio/grpc/okhttp/internal/ConnectionSpec;->supportedSpec(Ljavax/net/ssl/SSLSocket;Z)Lio/grpc/okhttp/internal/ConnectionSpec;

    move-result-object v0

    .line 131
    .local v0, "specToApply":Lio/grpc/okhttp/internal/ConnectionSpec;
    iget-object v1, v0, Lio/grpc/okhttp/internal/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 133
    iget-object v1, v0, Lio/grpc/okhttp/internal/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    .line 135
    .local v1, "cipherSuitesToEnable":[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 136
    invoke-virtual {p1, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 138
    :cond_0
    return-void
.end method

.method public cipherSuites()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/okhttp/internal/CipherSuite;",
            ">;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lio/grpc/okhttp/internal/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 106
    const/4 v0, 0x0

    return-object v0

    .line 108
    :cond_0
    array-length v0, v0

    new-array v0, v0, [Lio/grpc/okhttp/internal/CipherSuite;

    .line 109
    .local v0, "result":[Lio/grpc/okhttp/internal/CipherSuite;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lio/grpc/okhttp/internal/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 110
    aget-object v2, v2, v1

    invoke-static {v2}, Lio/grpc/okhttp/internal/CipherSuite;->forJavaName(Ljava/lang/String;)Lio/grpc/okhttp/internal/CipherSuite;

    move-result-object v2

    aput-object v2, v0, v1

    .line 109
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    .end local v1    # "i":I
    :cond_1
    invoke-static {v0}, Lio/grpc/okhttp/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 239
    instance-of v0, p1, Lio/grpc/okhttp/internal/ConnectionSpec;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 240
    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    .line 242
    :cond_1
    move-object v2, p1

    check-cast v2, Lio/grpc/okhttp/internal/ConnectionSpec;

    .line 243
    .local v2, "that":Lio/grpc/okhttp/internal/ConnectionSpec;
    iget-boolean v3, p0, Lio/grpc/okhttp/internal/ConnectionSpec;->tls:Z

    iget-boolean v4, v2, Lio/grpc/okhttp/internal/ConnectionSpec;->tls:Z

    if-eq v3, v4, :cond_2

    return v1

    .line 245
    :cond_2
    if-eqz v3, :cond_5

    .line 246
    iget-object v3, p0, Lio/grpc/okhttp/internal/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    iget-object v4, v2, Lio/grpc/okhttp/internal/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v1

    .line 247
    :cond_3
    iget-object v3, p0, Lio/grpc/okhttp/internal/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    iget-object v4, v2, Lio/grpc/okhttp/internal/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v1

    .line 248
    :cond_4
    iget-boolean v3, p0, Lio/grpc/okhttp/internal/ConnectionSpec;->supportsTlsExtensions:Z

    iget-boolean v4, v2, Lio/grpc/okhttp/internal/ConnectionSpec;->supportsTlsExtensions:Z

    if-eq v3, v4, :cond_5

    return v1

    .line 251
    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 255
    const/16 v0, 0x11

    .line 256
    .local v0, "result":I
    iget-boolean v1, p0, Lio/grpc/okhttp/internal/ConnectionSpec;->tls:Z

    if-eqz v1, :cond_0

    .line 257
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lio/grpc/okhttp/internal/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 258
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lio/grpc/okhttp/internal/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 259
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lio/grpc/okhttp/internal/ConnectionSpec;->supportsTlsExtensions:Z

    xor-int/lit8 v2, v2, 0x1

    add-int v0, v1, v2

    .line 261
    :cond_0
    return v0
.end method

.method public isCompatible(Ljavax/net/ssl/SSLSocket;)Z
    .locals 4
    .param p1, "socket"    # Ljavax/net/ssl/SSLSocket;

    .line 192
    iget-boolean v0, p0, Lio/grpc/okhttp/internal/ConnectionSpec;->tls:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 193
    return v1

    .line 196
    :cond_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "enabledProtocols":[Ljava/lang/String;
    iget-object v2, p0, Lio/grpc/okhttp/internal/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    invoke-static {v2, v0}, Lio/grpc/okhttp/internal/ConnectionSpec;->nonEmptyIntersection([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    .line 198
    .local v2, "requiredProtocolsEnabled":Z
    if-nez v2, :cond_1

    .line 199
    return v1

    .line 203
    :cond_1
    iget-object v3, p0, Lio/grpc/okhttp/internal/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    if-nez v3, :cond_3

    .line 204
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_2

    const/4 v1, 0x1

    .local v1, "requiredCiphersEnabled":Z
    :cond_2
    goto :goto_0

    .line 206
    .end local v1    # "requiredCiphersEnabled":Z
    :cond_3
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v1

    .line 207
    .local v1, "enabledCipherSuites":[Ljava/lang/String;
    iget-object v3, p0, Lio/grpc/okhttp/internal/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    invoke-static {v3, v1}, Lio/grpc/okhttp/internal/ConnectionSpec;->nonEmptyIntersection([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    move v1, v3

    .line 209
    .local v1, "requiredCiphersEnabled":Z
    :goto_0
    return v1
.end method

.method public isTls()Z
    .locals 1

    .line 97
    iget-boolean v0, p0, Lio/grpc/okhttp/internal/ConnectionSpec;->tls:Z

    return v0
.end method

.method public supportsTlsExtensions()Z
    .locals 1

    .line 124
    iget-boolean v0, p0, Lio/grpc/okhttp/internal/ConnectionSpec;->supportsTlsExtensions:Z

    return v0
.end method

.method public tlsVersions()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/okhttp/internal/TlsVersion;",
            ">;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lio/grpc/okhttp/internal/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Lio/grpc/okhttp/internal/TlsVersion;

    .line 117
    .local v0, "result":[Lio/grpc/okhttp/internal/TlsVersion;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lio/grpc/okhttp/internal/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 118
    aget-object v2, v2, v1

    invoke-static {v2}, Lio/grpc/okhttp/internal/TlsVersion;->forJavaName(Ljava/lang/String;)Lio/grpc/okhttp/internal/TlsVersion;

    move-result-object v2

    aput-object v2, v0, v1

    .line 117
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 120
    .end local v1    # "i":I
    :cond_0
    invoke-static {v0}, Lio/grpc/okhttp/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 265
    iget-boolean v0, p0, Lio/grpc/okhttp/internal/ConnectionSpec;->tls:Z

    if-eqz v0, :cond_1

    .line 266
    invoke-virtual {p0}, Lio/grpc/okhttp/internal/ConnectionSpec;->cipherSuites()Ljava/util/List;

    move-result-object v0

    .line 267
    .local v0, "cipherSuites":Ljava/util/List;, "Ljava/util/List<Lio/grpc/okhttp/internal/CipherSuite;>;"
    if-nez v0, :cond_0

    const-string v1, "[use default]"

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 268
    .local v1, "cipherSuitesString":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ConnectionSpec(cipherSuites="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", tlsVersions="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 269
    invoke-virtual {p0}, Lio/grpc/okhttp/internal/ConnectionSpec;->tlsVersions()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", supportsTlsExtensions="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lio/grpc/okhttp/internal/ConnectionSpec;->supportsTlsExtensions:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 268
    return-object v2

    .line 273
    .end local v0    # "cipherSuites":Ljava/util/List;, "Ljava/util/List<Lio/grpc/okhttp/internal/CipherSuite;>;"
    .end local v1    # "cipherSuitesString":Ljava/lang/String;
    :cond_1
    const-string v0, "ConnectionSpec()"

    return-object v0
.end method
