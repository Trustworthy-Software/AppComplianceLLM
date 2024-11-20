.class Lcom/google/android/gms/internal/firebase-auth-api/zzan;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzam;
.source "com.google.firebase:firebase-auth@@22.2.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzam<",
        "TE;>;"
    }
.end annotation


# instance fields
.field zza:[Ljava/lang/Object;

.field zzb:I

.field zzc:Z


# direct methods
.method constructor <init>(I)V
    .locals 1

    .line 12
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzam;-><init>()V

    .line 13
    const-string p1, "initialCapacity"

    const/4 v0, 0x4

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzai;->zza(ILjava/lang/String;)I

    .line 14
    new-array p1, v0, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzan;->zza:[Ljava/lang/Object;

    .line 15
    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzan;->zzb:I

    .line 16
    return-void
.end method


# virtual methods
.method public zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzan;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzan<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzy;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzan;->zzb:I

    add-int/lit8 v0, v0, 0x1

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzan;->zza:[Ljava/lang/Object;

    array-length v2, v1

    const/4 v3, 0x0

    if-ge v2, v0, :cond_0

    .line 4
    array-length v2, v1

    .line 5
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzan;->zza(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzan;->zza:[Ljava/lang/Object;

    .line 6
    iput-boolean v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzan;->zzc:Z

    goto :goto_0

    .line 7
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzan;->zzc:Z

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzan;->zza:[Ljava/lang/Object;

    .line 9
    iput-boolean v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzan;->zzc:Z

    .line 10
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzan;->zza:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzan;->zzb:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzan;->zzb:I

    aput-object p1, v0, v1

    .line 11
    return-object p0
.end method
