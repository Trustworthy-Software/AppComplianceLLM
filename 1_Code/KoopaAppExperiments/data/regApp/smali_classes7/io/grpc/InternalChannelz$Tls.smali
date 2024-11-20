.class public final Lio/grpc/InternalChannelz$Tls;
.super Ljava/lang/Object;
.source "InternalChannelz.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/InternalChannelz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Tls"
.end annotation


# instance fields
.field public final cipherSuiteStandardName:Ljava/lang/String;

.field public final localCert:Ljava/security/cert/Certificate;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final remoteCert:Ljava/security/cert/Certificate;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/security/cert/Certificate;Ljava/security/cert/Certificate;)V
    .locals 0
    .param p1, "cipherSuiteName"    # Ljava/lang/String;
    .param p2, "localCert"    # Ljava/security/cert/Certificate;
    .param p3, "remoteCert"    # Ljava/security/cert/Certificate;

    .line 670
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 671
    iput-object p1, p0, Lio/grpc/InternalChannelz$Tls;->cipherSuiteStandardName:Ljava/lang/String;

    .line 672
    iput-object p2, p0, Lio/grpc/InternalChannelz$Tls;->localCert:Ljava/security/cert/Certificate;

    .line 673
    iput-object p3, p0, Lio/grpc/InternalChannelz$Tls;->remoteCert:Ljava/security/cert/Certificate;

    .line 674
    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLSession;)V
    .locals 9
    .param p1, "session"    # Ljavax/net/ssl/SSLSession;

    .line 679
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 680
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    .line 681
    .local v0, "cipherSuiteStandardName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 682
    .local v1, "localCert":Ljava/security/cert/Certificate;
    const/4 v2, 0x0

    .line 683
    .local v2, "remoteCert":Ljava/security/cert/Certificate;
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v3

    .line 684
    .local v3, "localCerts":[Ljava/security/cert/Certificate;
    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 685
    aget-object v1, v3, v4

    .line 688
    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v5

    .line 689
    .local v5, "peerCerts":[Ljava/security/cert/Certificate;
    if-eqz v5, :cond_1

    .line 692
    aget-object v4, v5, v4
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    .line 700
    .end local v5    # "peerCerts":[Ljava/security/cert/Certificate;
    :cond_1
    goto :goto_0

    .line 694
    :catch_0
    move-exception v4

    .line 696
    .local v4, "e":Ljavax/net/ssl/SSLPeerUnverifiedException;
    invoke-static {}, Lio/grpc/InternalChannelz;->access$400()Ljava/util/logging/Logger;

    move-result-object v5

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 698
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    const-string v8, "Peer cert not available for peerHost=%s"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 696
    invoke-virtual {v5, v6, v7, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 701
    .end local v4    # "e":Ljavax/net/ssl/SSLPeerUnverifiedException;
    :goto_0
    iput-object v0, p0, Lio/grpc/InternalChannelz$Tls;->cipherSuiteStandardName:Ljava/lang/String;

    .line 702
    iput-object v1, p0, Lio/grpc/InternalChannelz$Tls;->localCert:Ljava/security/cert/Certificate;

    .line 703
    iput-object v2, p0, Lio/grpc/InternalChannelz$Tls;->remoteCert:Ljava/security/cert/Certificate;

    .line 704
    return-void
.end method
