.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzfg;
.super Lcom/google/android/gms/internal/firebase-auth-api/zznb;
.source "com.google.firebase:firebase-auth@@22.2.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/zznb<",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzsy;",
        ">;"
    }
.end annotation


# static fields
.field private static final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzno;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzno<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzfj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzff;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzff;

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzfg;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzno;

    return-void
.end method

.method constructor <init>()V
    .locals 4

    .line 10
    const-class v0, Lcom/google/android/gms/internal/firebase-auth-api/zzsy;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/internal/firebase-auth-api/zzoh;

    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/zzfi;

    const-class v3, Lcom/google/android/gms/internal/firebase-auth-api/zzbg;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzfi;-><init>(Ljava/lang/Class;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zznb;-><init>(Ljava/lang/Class;[Lcom/google/android/gms/internal/firebase-auth-api/zzoh;)V

    .line 11
    return-void
.end method

.method public static zza()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public static zza(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzfg;->zzi()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 13
    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/zzfg;

    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzfg;-><init>()V

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzct;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zznb;Z)V

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzfl;->zza()V

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzns;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzns;

    move-result-object p0

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 17
    nop

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzfj;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzfj$zza;

    move-result-object v1

    .line 19
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzfj$zza;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzfj$zza;

    move-result-object v1

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzfj$zzb;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzfj$zzb;

    .line 20
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzfj$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzfj$zzb;)Lcom/google/android/gms/internal/firebase-auth-api/zzfj$zza;

    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzfj$zza;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzfj;

    move-result-object v1

    .line 22
    const-string v3, "AES128_GCM_SIV"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    nop

    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzfj;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzfj$zza;

    move-result-object v1

    .line 25
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzfj$zza;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzfj$zza;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzfj$zzb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzfj$zzb;

    .line 26
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzfj$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzfj$zzb;)Lcom/google/android/gms/internal/firebase-auth-api/zzfj$zza;

    move-result-object v1

    .line 27
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzfj$zza;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzfj;

    move-result-object v1

    .line 28
    const-string v2, "AES128_GCM_SIV_RAW"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    nop

    .line 30
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzfj;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzfj$zza;

    move-result-object v1

    .line 31
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzfj$zza;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzfj$zza;

    move-result-object v1

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzfj$zzb;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzfj$zzb;

    .line 32
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzfj$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzfj$zzb;)Lcom/google/android/gms/internal/firebase-auth-api/zzfj$zza;

    move-result-object v1

    .line 33
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzfj$zza;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzfj;

    move-result-object v1

    .line 34
    const-string v3, "AES256_GCM_SIV"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    nop

    .line 36
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzfj;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzfj$zza;

    move-result-object v1

    .line 37
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzfj$zza;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzfj$zza;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzfj$zzb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzfj$zzb;

    .line 38
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzfj$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzfj$zzb;)Lcom/google/android/gms/internal/firebase-auth-api/zzfj$zza;

    move-result-object v1

    .line 39
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzfj$zza;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzfj;

    move-result-object v1

    .line 40
    const-string v2, "AES256_GCM_SIV_RAW"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 42
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzns;->zza(Ljava/util/Map;)V

    .line 43
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zznl;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zznl;

    move-result-object p0

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzfg;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzno;

    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/zzfj;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zznl;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzno;Ljava/lang/Class;)V

    .line 44
    :cond_0
    return-void
.end method

.method private static zzi()Z
    .locals 1

    .line 49
    :try_start_0
    const-string v0, "AES/GCM-SIV/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    const/4 v0, 0x1

    return v0

    .line 51
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 52
    :goto_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahd;)Lcom/google/android/gms/internal/firebase-auth-api/zzakb;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/firebase-auth-api/zzaja;
        }
    .end annotation

    .line 5
    nop

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaig;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzaig;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzsy;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahd;Lcom/google/android/gms/internal/firebase-auth-api/zzaig;)Lcom/google/android/gms/internal/firebase-auth-api/zzsy;

    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 45
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzsy;

    .line 46
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzsy;->zza()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxo;->zza(II)V

    .line 47
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzsy;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zzb()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxo;->zza(I)V

    .line 48
    return-void
.end method

.method public final zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzif$zza;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzif$zza;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzif$zza;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzne;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzne<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzsz;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzsy;",
            ">;"
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzfh;

    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/zzsz;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzfh;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzfg;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzuy$zza;
    .locals 1

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzuy$zza;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzuy$zza;

    return-object v0
.end method

.method public final zze()Ljava/lang/String;
    .locals 1

    .line 8
    const-string v0, "type.googleapis.com/google.crypto.tink.AesGcmSivKey"

    return-object v0
.end method
