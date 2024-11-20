.class final synthetic Lcom/google/android/gms/internal/firebase-auth-api/zzajr;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# static fields
.field static final synthetic zza:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->values()[Lcom/google/android/gms/internal/firebase-auth-api/zzakq;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzajr;->zza:[I

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzakq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    return-void
.end method
