.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzrq;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzrn;

.field private final zzb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzrs;",
            ">;"
        }
    .end annotation
.end field

.field private final zzc:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzrn;Ljava/util/List;Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzrn;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzrs;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzrq;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzrn;

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzrq;->zzb:Ljava/util/List;

    .line 6
    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzrq;->zzc:Ljava/lang/Integer;

    .line 7
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzrn;Ljava/util/List;Ljava/lang/Integer;Lcom/google/android/gms/internal/firebase-auth-api/zzru;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzrq;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzrn;Ljava/util/List;Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 8
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzrq;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 9
    return v1

    .line 10
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzrq;

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzrq;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzrn;

    iget-object v2, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzrq;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzrn;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzrn;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzrq;->zzb:Ljava/util/List;

    iget-object v2, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzrq;->zzb:Ljava/util/List;

    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzrq;->zzc:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzrq;->zzc:Ljava/lang/Integer;

    .line 13
    nop

    .line 14
    const/4 v2, 0x1

    if-eq v0, p1, :cond_2

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move p1, v1

    goto :goto_1

    :cond_2
    :goto_0
    move p1, v2

    .line 15
    :goto_1
    if-eqz p1, :cond_3

    return v2

    :cond_3
    nop

    .line 16
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzrq;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzrn;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzrq;->zzb:Ljava/util/List;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzrq;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzrn;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzrq;->zzb:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzrq;->zzc:Ljava/lang/Integer;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "(annotations=%s, entries=%s, primaryKeyId=%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
