.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzwt;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T_WRAPPER::",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzxb<",
        "TJcePrimitiveT;>;JcePrimitiveT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzwt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzwt<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzxa;",
            "Ljavax/crypto/Cipher;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzwt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzwt<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzxe;",
            "Ljavax/crypto/Mac;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzwt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzwt<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzxd;",
            "Ljavax/crypto/KeyAgreement;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzwt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzwt<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzxf;",
            "Ljava/security/KeyPairGenerator;",
            ">;"
        }
    .end annotation
.end field

.field public static final zze:Lcom/google/android/gms/internal/firebase-auth-api/zzwt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzwt<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzxc;",
            "Ljava/security/KeyFactory;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzwt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzwt<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzxg;",
            "Ljava/security/Signature;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzwt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzwt<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzxh;",
            "Ljava/security/MessageDigest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzh:Lcom/google/android/gms/internal/firebase-auth-api/zzwy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzwy<",
            "TJcePrimitiveT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzwt;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzxa;

    invoke-direct {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxa;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzwt;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzxb;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzwt;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzwt;

    .line 10
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzwt;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzxe;

    invoke-direct {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxe;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzwt;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzxb;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzwt;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzwt;

    .line 11
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzwt;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzxg;

    invoke-direct {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxg;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzwt;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzxb;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzwt;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzwt;

    .line 12
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzwt;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzxh;

    invoke-direct {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxh;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzwt;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzxb;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzwt;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzwt;

    .line 13
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzwt;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzxd;

    invoke-direct {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxd;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzwt;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzxb;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzwt;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzwt;

    .line 14
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzwt;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzxf;

    invoke-direct {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxf;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzwt;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzxb;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzwt;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzwt;

    .line 15
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzwt;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzxc;

    invoke-direct {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxc;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzwt;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzxb;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzwt;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzwt;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzxb;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_WRAPPER;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzif;->zzb()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 18
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzww;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzww;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzxb;Lcom/google/android/gms/internal/firebase-auth-api/zzwz;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwt;->zzh:Lcom/google/android/gms/internal/firebase-auth-api/zzwy;

    return-void

    .line 19
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzxp;->zza()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzws;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzws;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzxb;Lcom/google/android/gms/internal/firebase-auth-api/zzwv;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwt;->zzh:Lcom/google/android/gms/internal/firebase-auth-api/zzwy;

    return-void

    .line 21
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzwu;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzwu;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzxb;Lcom/google/android/gms/internal/firebase-auth-api/zzwx;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwt;->zzh:Lcom/google/android/gms/internal/firebase-auth-api/zzwy;

    .line 22
    return-void
.end method

.method public static varargs zza([Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/Provider;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 4
    invoke-static {v3}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v3

    .line 5
    if-eqz v3, :cond_0

    .line 6
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_1
    return-object v0
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TJcePrimitiveT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwt;->zzh:Lcom/google/android/gms/internal/firebase-auth-api/zzwy;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzwy;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
