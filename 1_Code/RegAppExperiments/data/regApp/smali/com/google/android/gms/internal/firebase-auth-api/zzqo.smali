.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzqo;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# static fields
.field private static final zza:Ljava/lang/String;

.field private static final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzvt;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzvt;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzvt;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzqg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzqg;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zznb;->zze()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzqo;->zza:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzvt;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzvt;

    move-result-object v0

    .line 3
    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzqo;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzvt;

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzqo;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzvt;

    .line 4
    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzqo;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzvt;

    .line 5
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzqo;->zza()V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    return-void

    .line 7
    :catch_0
    move-exception v0

    .line 8
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static zza()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzqt;->zzc()V

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzpy;->zzc()V

    .line 11
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzqg;->zza(Z)V

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzif;->zzb()Z

    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    return-void

    .line 15
    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzpl;->zza(Z)V

    .line 16
    return-void
.end method
