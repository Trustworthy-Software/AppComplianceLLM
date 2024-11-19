.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzka;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzks;
.source "com.google.firebase:firebase-auth@@22.2.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzd;,
        Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;,
        Lcom/google/android/gms/internal/firebase-auth-api/zzka$zza;,
        Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;,
        Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;,
        Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzb;
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzd;

.field private final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;

.field private final zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zza;

.field private final zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzd;Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;Lcom/google/android/gms/internal/firebase-auth-api/zzka$zza;Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzks;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzka;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzd;

    .line 9
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzka;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;

    .line 10
    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzka;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zza;

    .line 11
    iput-object p4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzka;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;

    .line 12
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzd;Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;Lcom/google/android/gms/internal/firebase-auth-api/zzka$zza;Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;Lcom/google/android/gms/internal/firebase-auth-api/zzkd;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/firebase-auth-api/zzka;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzd;Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;Lcom/google/android/gms/internal/firebase-auth-api/zzka$zza;Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;)V

    return-void
.end method

.method public static zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;
    .locals 2

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzkc;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 13
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzka;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 14
    return v1

    .line 15
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzka;

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzka;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzd;

    iget-object v2, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzka;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzd;

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzka;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;

    iget-object v2, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzka;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzka;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zza;

    iget-object v2, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzka;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zza;

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzka;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzka;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzka;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzd;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzka;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzka;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zza;

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzka;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;

    const-class v4, Lcom/google/android/gms/internal/firebase-auth-api/zzka;

    filled-new-array {v4, v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final zza()Z
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzka;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzka$zza;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzka;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zza;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzka;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzd;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzka;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzd;

    return-object v0
.end method

.method public final zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzka;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;

    return-object v0
.end method
