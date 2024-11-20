.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzhm;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzdb;
.source "com.google.firebase:firebase-auth@@22.2.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/firebase-auth-api/zzhm$zza;
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzhm$zza;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzhm$zza;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzdb;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzhm;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzhm$zza;

    .line 8
    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzhm$zza;)Lcom/google/android/gms/internal/firebase-auth-api/zzhm;
    .locals 1

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzhm;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzhm;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzhm$zza;)V

    return-object v0
.end method

.method public static zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzhm;
    .locals 2

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzhm;

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzhm$zza;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzhm$zza;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzhm;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzhm$zza;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 9
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzhm;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 10
    return v1

    .line 11
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzhm;

    .line 12
    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzhm;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzhm$zza;

    .line 13
    nop

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzhm;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzhm$zza;

    .line 15
    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    const-class v0, Lcom/google/android/gms/internal/firebase-auth-api/zzhm;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzhm;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzhm$zza;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzhm;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzhm$zza;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "XChaCha20Poly1305 Parameters (variant: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Z
    .locals 2

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzhm;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzhm$zza;

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzhm$zza;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzhm$zza;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzhm$zza;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzhm;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzhm$zza;

    return-object v0
.end method
