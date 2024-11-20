.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzpl;
.super Lcom/google/android/gms/internal/firebase-auth-api/zznb;
.source "com.google.firebase:firebase-auth@@22.2.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/zznb<",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzrw;",
        ">;"
    }
.end annotation


# static fields
.field private static final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzod<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzph;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzpz;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzod<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzph;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzce;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzpk;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzpk;

    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/zzph;

    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/zzpz;

    .line 9
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzod;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzof;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase-auth-api/zzod;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzpl;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzod;

    .line 10
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzpn;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzpn;

    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/zzph;

    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/zzce;

    .line 11
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzod;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzof;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase-auth-api/zzod;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzpl;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzod;

    .line 12
    return-void
.end method

.method constructor <init>()V
    .locals 4

    .line 13
    const-class v0, Lcom/google/android/gms/internal/firebase-auth-api/zzrw;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/internal/firebase-auth-api/zzoh;

    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/zzpm;

    const-class v3, Lcom/google/android/gms/internal/firebase-auth-api/zzce;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzpm;-><init>(Ljava/lang/Class;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zznb;-><init>(Ljava/lang/Class;[Lcom/google/android/gms/internal/firebase-auth-api/zzoh;)V

    .line 14
    return-void
.end method

.method static synthetic zza(I)V
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzpl;->zzb(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzsb;)V
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzpl;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzsb;)V

    return-void
.end method

.method public static zza(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 15
    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/zzpl;

    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzpl;-><init>()V

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzct;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zznb;Z)V

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzpt;->zza()V

    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zznr;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zznr;

    move-result-object p0

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzpl;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzod;

    .line 18
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zznr;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzod;)V

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zznr;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zznr;

    move-result-object p0

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzpl;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzod;

    .line 20
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zznr;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzod;)V

    .line 21
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzns;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzns;

    move-result-object p0

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 23
    const-string v1, "AES_CMAC"

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzqx;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzpo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    const-string v1, "AES256_CMAC"

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzqx;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzpo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    nop

    .line 26
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzpo;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zza;

    move-result-object v1

    .line 27
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zza;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zza;

    move-result-object v1

    .line 28
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zza;->zzb(I)Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zza;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zzb;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zzb;

    .line 29
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zzb;)Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zza;

    move-result-object v1

    .line 30
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zza;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzpo;

    move-result-object v1

    .line 31
    const-string v2, "AES256_CMAC_RAW"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 33
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzns;->zza(Ljava/util/Map;)V

    .line 34
    return-void
.end method

.method private static zzb(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 45
    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    .line 47
    return-void

    .line 46
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "AesCmacKey size wrong, must be 32 bytes"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzsb;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 40
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzsb;->zza()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_1

    .line 42
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzsb;->zza()I

    move-result p0

    const/16 v0, 0x10

    if-gt p0, v0, :cond_0

    .line 44
    return-void

    .line 43
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "tag size too long"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 41
    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "tag size too short"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahd;)Lcom/google/android/gms/internal/firebase-auth-api/zzakb;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/firebase-auth-api/zzaja;
        }
    .end annotation

    .line 4
    nop

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaig;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzaig;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzrw;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahd;Lcom/google/android/gms/internal/firebase-auth-api/zzaig;)Lcom/google/android/gms/internal/firebase-auth-api/zzrw;

    move-result-object p1

    .line 6
    return-object p1
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 35
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzrw;

    .line 36
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzrw;->zza()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxo;->zza(II)V

    .line 37
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzrw;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zzb()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzpl;->zzb(I)V

    .line 38
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzrw;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzsb;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzpl;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzsb;)V

    .line 39
    return-void
.end method

.method public final zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzif$zza;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzif$zza;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzif$zza;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzne;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzne<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzsa;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzrw;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzpp;

    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/zzsa;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzpp;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzpl;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzuy$zza;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzuy$zza;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzuy$zza;

    return-object v0
.end method

.method public final zze()Ljava/lang/String;
    .locals 1

    .line 7
    const-string v0, "type.googleapis.com/google.crypto.tink.AesCmacKey"

    return-object v0
.end method
