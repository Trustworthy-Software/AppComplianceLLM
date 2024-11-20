.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzeo;
.super Lcom/google/android/gms/internal/firebase-auth-api/zznb;
.source "com.google.firebase:firebase-auth@@22.2.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/zznb<",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzsu;",
        ">;"
    }
.end annotation


# static fields
.field private static final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzno;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzno<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzes;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzer;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzer;

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzeo;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzno;

    return-void
.end method

.method constructor <init>()V
    .locals 4

    .line 10
    const-class v0, Lcom/google/android/gms/internal/firebase-auth-api/zzsu;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/internal/firebase-auth-api/zzoh;

    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/zzeq;

    const-class v3, Lcom/google/android/gms/internal/firebase-auth-api/zzbg;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzeq;-><init>(Ljava/lang/Class;)V

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
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 12
    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/zzeo;

    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzeo;-><init>()V

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzct;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zznb;Z)V

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzex;->zza()V

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzns;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzns;

    move-result-object p0

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    const-string v1, "AES128_GCM"

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzhb;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzes;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    nop

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzes;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;

    move-result-object v1

    .line 19
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;

    move-result-object v1

    .line 20
    const/16 v3, 0x10

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;->zzb(I)Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;

    move-result-object v1

    .line 21
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;->zzc(I)Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;

    move-result-object v1

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/zzes$zzb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzes$zzb;

    .line 22
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzes$zzb;)Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;

    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzes;

    move-result-object v1

    .line 24
    const-string v4, "AES128_GCM_RAW"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    const-string v1, "AES256_GCM"

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/zzhb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzes;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    nop

    .line 27
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzes;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;

    move-result-object v1

    .line 28
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;

    move-result-object v1

    .line 29
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;->zzb(I)Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;

    move-result-object v1

    .line 30
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;->zzc(I)Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzes$zzb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzes$zzb;

    .line 31
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzes$zzb;)Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;

    move-result-object v1

    .line 32
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzes;

    move-result-object v1

    .line 33
    const-string v2, "AES256_GCM_RAW"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 35
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzns;->zza(Ljava/util/Map;)V

    .line 36
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zznl;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zznl;

    move-result-object p0

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzeo;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzno;

    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/zzes;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zznl;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzno;Ljava/lang/Class;)V

    .line 37
    return-void
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

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzsu;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahd;Lcom/google/android/gms/internal/firebase-auth-api/zzaig;)Lcom/google/android/gms/internal/firebase-auth-api/zzsu;

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

    .line 38
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzsu;

    .line 39
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzsu;->zza()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxo;->zza(II)V

    .line 40
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzsu;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zzb()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxo;->zza(I)V

    .line 41
    return-void
.end method

.method public final zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzif$zza;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzif$zza;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzif$zza;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzne;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzne<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzsv;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzsu;",
            ">;"
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzet;

    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/zzsv;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzet;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzeo;Ljava/lang/Class;)V

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
    const-string v0, "type.googleapis.com/google.crypto.tink.AesGcmKey"

    return-object v0
.end method
