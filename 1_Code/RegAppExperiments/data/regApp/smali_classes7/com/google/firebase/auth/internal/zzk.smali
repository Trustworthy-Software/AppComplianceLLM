.class public final Lcom/google/firebase/auth/internal/zzk;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# static fields
.field private static zza:Lcom/google/firebase/auth/internal/zzk;


# instance fields
.field private final zzb:Ljava/lang/String;

.field private final zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzma;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 3

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p2, p0, Lcom/google/firebase/auth/internal/zzk;->zzb:Ljava/lang/String;

    .line 32
    nop

    .line 33
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzkm;->zza()V

    .line 34
    new-instance p3, Lcom/google/android/gms/internal/firebase-auth-api/zzma$zza;

    invoke-direct {p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzma$zza;-><init>()V

    const-string v0, "GenericIdpKeyset"

    const-string v1, "com.google.firebase.auth.api.crypto.%s"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v2

    .line 35
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 36
    invoke-virtual {p3, p1, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzma$zza;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzma$zza;

    move-result-object p1

    sget-object p3, Lcom/google/android/gms/internal/firebase-auth-api/zzkt;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzvb;

    .line 37
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzma$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzvb;)Lcom/google/android/gms/internal/firebase-auth-api/zzma$zza;

    move-result-object p1

    .line 38
    const-string p3, "android-keystore://firebear_master_key_id.%s"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzma$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzma$zza;

    .line 39
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzma$zza;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzma;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    goto :goto_1

    .line 41
    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 42
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Exception encountered during crypto setup:\n"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FirebearCryptoHelper"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 43
    :goto_1
    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzk;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzma;

    .line 44
    return-void
.end method

.method public static zza(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/auth/internal/zzk;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/firebase/auth/internal/zzk;->zza:Lcom/google/firebase/auth/internal/zzk;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/firebase/auth/internal/zzk;->zzb:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzw;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    :cond_0
    new-instance v0, Lcom/google/firebase/auth/internal/zzk;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/google/firebase/auth/internal/zzk;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    sput-object v0, Lcom/google/firebase/auth/internal/zzk;->zza:Lcom/google/firebase/auth/internal/zzk;

    .line 3
    :cond_1
    sget-object p0, Lcom/google/firebase/auth/internal/zzk;->zza:Lcom/google/firebase/auth/internal/zzk;

    return-object p0
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 5

    .line 18
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzk;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzma;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 19
    const-string v0, "FirebearCryptoHelper"

    const-string v2, "KeysetManager failed to initialize - unable to get Public key"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    return-object v1

    .line 21
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 22
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbi;->zza(Ljava/io/OutputStream;)Lcom/google/android/gms/internal/firebase-auth-api/zzcd;

    move-result-object v2

    .line 23
    :try_start_0
    iget-object v3, p0, Lcom/google/firebase/auth/internal/zzk;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzma;

    monitor-enter v3
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    :try_start_1
    iget-object v4, p0, Lcom/google/firebase/auth/internal/zzk;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzma;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzma;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzbx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzbx;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzcd;)V

    .line 25
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 25
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 26
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 27
    :goto_0
    const-string v2, "FirebearCryptoHelper"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception encountered when attempting to get Public Key:\n"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    return-object v1
.end method

.method public final zza(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 4
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzk;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzma;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 5
    const-string p1, "FirebearCryptoHelper"

    const-string v0, "KeysetManager failed to initialize - unable to decrypt payload"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    return-object v1

    .line 7
    :cond_0
    :try_start_0
    monitor-enter v0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :try_start_1
    iget-object v2, p0, Lcom/google/firebase/auth/internal/zzk;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzma;

    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzma;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzbx;

    move-result-object v2

    const-class v3, Lcom/google/android/gms/internal/firebase-auth-api/zzbo;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zza(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/zzbo;

    .line 10
    new-instance v3, Ljava/lang/String;

    .line 11
    const/16 v4, 0x8

    invoke-static {p1, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 12
    invoke-interface {v2, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzbo;->zza([B[B)[B

    move-result-object p1

    const-string v2, "UTF-8"

    invoke-direct {v3, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    monitor-exit v0

    .line 13
    return-object v3

    .line 14
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    .line 15
    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 16
    :goto_0
    const-string v0, "FirebearCryptoHelper"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception encountered while decrypting bytes:\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    return-object v1
.end method
