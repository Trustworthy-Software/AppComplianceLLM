.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzqc;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzqr;
.source "com.google.firebase:firebase-auth@@22.2.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/firebase-auth-api/zzqc$zza;
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzql;

.field private final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzxu;

.field private final zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzxt;

.field private final zzd:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzql;Lcom/google/android/gms/internal/firebase-auth-api/zzxu;Lcom/google/android/gms/internal/firebase-auth-api/zzxt;Ljava/lang/Integer;)V
    .locals 0
    .param p4    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzqr;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzqc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzql;

    .line 9
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzqc;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzxu;

    .line 10
    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzqc;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzxt;

    .line 11
    iput-object p4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzqc;->zzd:Ljava/lang/Integer;

    .line 12
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzql;Lcom/google/android/gms/internal/firebase-auth-api/zzxu;Lcom/google/android/gms/internal/firebase-auth-api/zzxt;Ljava/lang/Integer;Lcom/google/android/gms/internal/firebase-auth-api/zzqd;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/firebase-auth-api/zzqc;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzql;Lcom/google/android/gms/internal/firebase-auth-api/zzxu;Lcom/google/android/gms/internal/firebase-auth-api/zzxt;Ljava/lang/Integer;)V

    return-void
.end method

.method public static zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzqc$zza;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzqc$zza;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzqc$zza;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzqe;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic zza()Lcom/google/android/gms/internal/firebase-auth-api/zzqq;
    .locals 1

    .line 2
    nop

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzqc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzql;

    .line 4
    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzxt;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzqc;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzxt;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzxu;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzqc;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzxu;

    return-object v0
.end method
