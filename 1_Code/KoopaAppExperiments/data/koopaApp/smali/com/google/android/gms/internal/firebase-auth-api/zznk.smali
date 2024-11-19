.class final synthetic Lcom/google/android/gms/internal/firebase-auth-api/zznk;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# static fields
.field static final synthetic zza:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzuz;->values()[Lcom/google/android/gms/internal/firebase-auth-api/zzuz;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zznk;->zza:[I

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzuz;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzuz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzuz;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zznk;->zza:[I

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzuz;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzuz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzuz;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    :try_start_2
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zznk;->zza:[I

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzuz;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzuz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzuz;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception v0

    return-void
.end method
