.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzly;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzbg;

.field private final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzbp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzbg;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzly;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzbg;

    .line 3
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzly;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzbp;

    .line 4
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzbp;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzly;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzbg;

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzly;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzbp;

    .line 8
    return-void
.end method


# virtual methods
.method public final zza([B[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzly;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzbg;

    if-eqz v0, :cond_0

    .line 10
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzbg;->zza([B[B)[B

    move-result-object p1

    return-object p1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzly;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzbp;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzbp;->zza([B[B)[B

    move-result-object p1

    return-object p1
.end method
