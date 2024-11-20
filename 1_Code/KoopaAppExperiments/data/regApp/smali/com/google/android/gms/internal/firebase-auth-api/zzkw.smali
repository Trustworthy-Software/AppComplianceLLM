.class final synthetic Lcom/google/android/gms/internal/firebase-auth-api/zzkw;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# static fields
.field static final synthetic zza:[I

.field static final synthetic zzb:[I

.field static final synthetic zzc:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zztk;->values()[Lcom/google/android/gms/internal/firebase-auth-api/zztk;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzkw;->zzc:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zztk;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zztk;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zztk;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkw;->zzc:[I

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zztk;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zztk;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zztk;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    :goto_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzkw;->zzc:[I

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/zztk;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zztk;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/firebase-auth-api/zztk;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v3

    .line 2
    :goto_2
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzty;->values()[Lcom/google/android/gms/internal/firebase-auth-api/zzty;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzkw;->zzb:[I

    :try_start_3
    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/zzty;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzty;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzty;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v3

    :goto_3
    :try_start_4
    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzkw;->zzb:[I

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/zzty;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzty;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzty;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v3

    :goto_4
    :try_start_5
    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzkw;->zzb:[I

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/zzty;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzty;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzty;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v3

    .line 3
    :goto_5
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzub;->values()[Lcom/google/android/gms/internal/firebase-auth-api/zzub;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzkw;->zza:[I

    :try_start_6
    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/zzub;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzub;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzub;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v1

    :goto_6
    :try_start_7
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzkw;->zza:[I

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzub;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzub;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzub;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v0

    :goto_7
    :try_start_8
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzkw;->zza:[I

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzub;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzub;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzub;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    :catch_8
    move-exception v0

    :goto_8
    :try_start_9
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzkw;->zza:[I

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzub;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzub;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzub;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_9

    :catch_9
    move-exception v0

    :goto_9
    :try_start_a
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzkw;->zza:[I

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzub;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzub;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzub;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    return-void

    :catch_a
    move-exception v0

    return-void
.end method
