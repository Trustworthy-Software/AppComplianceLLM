.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzyk;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzafi;",
            ">;"
        }
    .end annotation
.end field

.field private zzc:Lcom/google/firebase/auth/zzf;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/google/firebase/auth/zzf;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzafi;",
            ">;",
            "Lcom/google/firebase/auth/zzf;",
            ")V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyk;->zza:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyk;->zzb:Ljava/util/List;

    .line 7
    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyk;->zzc:Lcom/google/firebase/auth/zzf;

    .line 8
    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/firebase/auth/zzf;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyk;->zzc:Lcom/google/firebase/auth/zzf;

    return-object v0
.end method

.method public final zzb()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyk;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public final zzc()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/MultiFactorInfo;",
            ">;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyk;->zzb:Ljava/util/List;

    invoke-static {v0}, Lcom/google/firebase/auth/internal/zzba;->zza(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
