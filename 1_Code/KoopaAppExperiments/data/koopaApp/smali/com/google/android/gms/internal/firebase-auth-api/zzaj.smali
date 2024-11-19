.class abstract Lcom/google/android/gms/internal/firebase-auth-api/zzaj;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzbf;
.source "com.google.firebase:firebase-auth@@22.2.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzbf<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final zza:I

.field private zzb:I


# direct methods
.method protected constructor <init>(II)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbf;-><init>()V

    .line 10
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzy;->zzb(II)I

    .line 11
    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaj;->zza:I

    .line 12
    iput p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaj;->zzb:I

    .line 13
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    .line 14
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaj;->zzb:I

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaj;->zza:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasPrevious()Z
    .locals 1

    .line 15
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaj;->zzb:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaj;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaj;->zzb:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaj;->zzb:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaj;->zza(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final nextIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaj;->zzb:I

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaj;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaj;->zzb:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaj;->zzb:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaj;->zza(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 7
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final previousIndex()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaj;->zzb:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method protected abstract zza(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation
.end method
