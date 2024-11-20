.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzao;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzan;
.source "com.google.firebase:firebase-auth@@22.2.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzan<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzao;-><init>(I)V

    .line 8
    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    .line 9
    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzan;-><init>(I)V

    .line 10
    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzan;
    .locals 0

    .line 1
    nop

    .line 2
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzan;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzan;

    .line 3
    nop

    .line 4
    return-object p0
.end method

.method public final zza()Lcom/google/android/gms/internal/firebase-auth-api/zzap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzap<",
            "TE;>;"
        }
    .end annotation

    .line 5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzao;->zzc:Z

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzao;->zza:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzao;->zzb:I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzap;->zzb([Ljava/lang/Object;I)Lcom/google/android/gms/internal/firebase-auth-api/zzap;

    move-result-object v0

    return-object v0
.end method
