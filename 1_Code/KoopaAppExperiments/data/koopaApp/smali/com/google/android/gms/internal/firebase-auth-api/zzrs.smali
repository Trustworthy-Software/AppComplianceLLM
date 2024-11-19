.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzrs;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzbv;

.field private final zzb:I

.field private final zzc:Ljava/lang/String;

.field private final zzd:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzbv;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzrs;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzbv;

    .line 8
    iput p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzrs;->zzb:I

    .line 9
    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzrs;->zzc:Ljava/lang/String;

    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzrs;->zzd:Ljava/lang/String;

    .line 11
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzbv;ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzrv;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/firebase-auth-api/zzrs;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzbv;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 12
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzrs;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 13
    return v1

    .line 14
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzrs;

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzrs;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzbv;

    iget-object v2, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzrs;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzbv;

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzrs;->zzb:I

    iget v2, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzrs;->zzb:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzrs;->zzc:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzrs;->zzc:Ljava/lang/String;

    .line 16
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzrs;->zzd:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzrs;->zzd:Ljava/lang/String;

    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    nop

    .line 18
    return v1
.end method

.method public final hashCode()I
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzrs;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzbv;

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzrs;->zzb:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzrs;->zzc:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzrs;->zzd:Ljava/lang/String;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzrs;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzbv;

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzrs;->zzb:I

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzrs;->zzc:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzrs;->zzd:Ljava/lang/String;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 5
    const-string v1, "(status=%s, keyId=%s, keyType=\'%s\', keyPrefix=\'%s\')"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzrs;->zzb:I

    return v0
.end method
