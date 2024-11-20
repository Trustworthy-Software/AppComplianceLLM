.class Lio/grpc/util/AdvancedTlsX509KeyManager$KeyInfo;
.super Ljava/lang/Object;
.source "AdvancedTlsX509KeyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/util/AdvancedTlsX509KeyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyInfo"
.end annotation


# instance fields
.field final certs:[Ljava/security/cert/X509Certificate;

.field final key:Ljava/security/PrivateKey;


# direct methods
.method public constructor <init>(Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;)V
    .locals 0
    .param p1, "key"    # Ljava/security/PrivateKey;
    .param p2, "certs"    # [Ljava/security/cert/X509Certificate;

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput-object p1, p0, Lio/grpc/util/AdvancedTlsX509KeyManager$KeyInfo;->key:Ljava/security/PrivateKey;

    .line 166
    iput-object p2, p0, Lio/grpc/util/AdvancedTlsX509KeyManager$KeyInfo;->certs:[Ljava/security/cert/X509Certificate;

    .line 167
    return-void
.end method
