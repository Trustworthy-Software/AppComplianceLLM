.class final Lcom/google/android/gms/internal/firebase-auth-api/zzay;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzap;
.source "com.google.firebase:firebase-auth@@22.2.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/zzap<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/firebase-auth-api/zzaz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzaz;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzay;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzaz;

    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzap;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic get(I)Ljava/lang/Object;
    .locals 2

    .line 2
    nop

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzay;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzaz;

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaz;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzaz;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzy;->zza(II)I

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzay;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzaz;

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaz;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzaz;)[Ljava/lang/Object;

    move-result-object v0

    mul-int/lit8 p1, p1, 0x2

    .line 5
    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzay;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzaz;

    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaz;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzaz;)[Ljava/lang/Object;

    move-result-object v1

    .line 7
    add-int/lit8 p1, p1, 0x1

    aget-object p1, v1, p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v1, v0, p1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 9
    return-object v1
.end method

.method public final size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzay;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzaz;

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaz;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzaz;)I

    move-result v0

    return v0
.end method

.method public final zze()Z
    .locals 1

    .line 11
    const/4 v0, 0x1

    return v0
.end method
