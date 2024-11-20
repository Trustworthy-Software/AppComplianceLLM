.class final Lcom/google/android/gms/internal/firebase-auth-api/zzba;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzap;
.source "com.google.firebase:firebase-auth@@22.2.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/zzap<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final transient zza:[Ljava/lang/Object;

.field private final transient zzb:I

.field private final transient zzc:I


# direct methods
.method constructor <init>([Ljava/lang/Object;II)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzap;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzba;->zza:[Ljava/lang/Object;

    .line 6
    iput p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzba;->zzb:I

    .line 7
    iput p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzba;->zzc:I

    .line 8
    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 2

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzba;->zzc:I

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzy;->zza(II)I

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzba;->zza:[Ljava/lang/Object;

    mul-int/lit8 p1, p1, 0x2

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzba;->zzb:I

    add-int/2addr p1, v1

    aget-object p1, v0, p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p1
.end method

.method public final size()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzba;->zzc:I

    return v0
.end method

.method final zze()Z
    .locals 1

    .line 9
    const/4 v0, 0x1

    return v0
.end method
