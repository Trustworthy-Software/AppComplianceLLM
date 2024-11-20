.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzes;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzdb;
.source "com.google.firebase:firebase-auth@@22.2.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/firebase-auth-api/zzes$zzb;,
        Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;
    }
.end annotation


# instance fields
.field private final zza:I

.field private final zzb:I

.field private final zzc:I

.field private final zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzes$zzb;


# direct methods
.method private constructor <init>(IIILcom/google/android/gms/internal/firebase-auth-api/zzes$zzb;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzdb;-><init>()V

    .line 9
    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzes;->zza:I

    .line 10
    iput p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzes;->zzb:I

    .line 11
    iput p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzes;->zzc:I

    .line 12
    iput-object p4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzes;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzes$zzb;

    .line 13
    return-void
.end method

.method synthetic constructor <init>(IIILcom/google/android/gms/internal/firebase-auth-api/zzes$zzb;Lcom/google/android/gms/internal/firebase-auth-api/zzev;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/firebase-auth-api/zzes;-><init>(IIILcom/google/android/gms/internal/firebase-auth-api/zzes$zzb;)V

    return-void
.end method

.method public static zze()Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;
    .locals 2

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzeu;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 14
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzes;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 15
    return v1

    .line 16
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzes;

    .line 17
    nop

    .line 18
    iget v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzes;->zza:I

    .line 19
    nop

    .line 20
    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzes;->zza:I

    .line 21
    if-ne v0, v2, :cond_1

    .line 22
    iget v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzes;->zzb:I

    .line 23
    nop

    .line 24
    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzes;->zzb:I

    .line 25
    if-ne v0, v2, :cond_1

    .line 26
    iget v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzes;->zzc:I

    .line 27
    nop

    .line 28
    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzes;->zzc:I

    .line 29
    if-ne v0, v2, :cond_1

    .line 30
    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzes;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzes$zzb;

    .line 31
    nop

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzes;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzes$zzb;

    .line 33
    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    nop

    .line 34
    return v1
.end method

.method public final hashCode()I
    .locals 5

    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzes;->zza:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzes;->zzb:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzes;->zzc:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzes;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzes$zzb;

    const-class v4, Lcom/google/android/gms/internal/firebase-auth-api/zzes;

    filled-new-array {v4, v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzes;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzes$zzb;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzes;->zzb:I

    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzes;->zzc:I

    iget v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzes;->zza:I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "AesGcm Parameters (variant: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-byte IV, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-byte tag, and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-byte key)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Z
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzes;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzes$zzb;

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzes$zzb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzes$zzb;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzb()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzes;->zzb:I

    return v0
.end method

.method public final zzc()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzes;->zza:I

    return v0
.end method

.method public final zzd()I
    .locals 1

    .line 3
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzes;->zzc:I

    return v0
.end method

.method public final zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzes$zzb;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzes;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzes$zzb;

    return-object v0
.end method
