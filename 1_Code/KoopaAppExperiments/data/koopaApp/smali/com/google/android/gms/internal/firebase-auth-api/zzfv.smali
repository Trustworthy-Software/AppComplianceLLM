.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzfv;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzdb;
.source "com.google.firebase:firebase-auth@@22.2.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/firebase-auth-api/zzfv$zza;
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzfv$zza;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzfv$zza;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzdb;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzfv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzfv$zza;

    .line 7
    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzfv$zza;)Lcom/google/android/gms/internal/firebase-auth-api/zzfv;
    .locals 1

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzfv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzfv;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzfv$zza;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 8
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzfv;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 9
    return v1

    .line 10
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzfv;

    .line 11
    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzfv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzfv$zza;

    .line 12
    nop

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzfv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzfv$zza;

    .line 14
    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    const-class v0, Lcom/google/android/gms/internal/firebase-auth-api/zzfv;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzfv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzfv$zza;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzfv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzfv$zza;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ChaCha20Poly1305 Parameters (variant: "

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

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzfv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzfv$zza;

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzfv$zza;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzfv$zza;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzfv$zza;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzfv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzfv$zza;

    return-object v0
.end method
