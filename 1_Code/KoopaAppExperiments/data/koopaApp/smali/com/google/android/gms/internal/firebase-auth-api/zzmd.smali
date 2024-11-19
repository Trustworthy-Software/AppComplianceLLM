.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzmd;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzcc;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/firebase-auth-api/zzmd$zza;
    }
.end annotation


# static fields
.field private static final zza:Ljava/lang/Object;

.field private static final zzb:Ljava/lang/String;


# instance fields
.field private final zzc:Ljava/lang/String;

.field private zzd:Ljava/security/KeyStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzmd;->zza:Ljava/lang/Object;

    .line 15
    const-class v0, Lcom/google/android/gms/internal/firebase-auth-api/zzmd;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzmd;->zzb:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 16
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzmd$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzmd$zza;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzmd;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzmd$zza;)V

    .line 17
    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzmd$zza;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzmd;->zzc:Ljava/lang/String;

    .line 20
    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzmd$zza;->zza:Ljava/security/KeyStore;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzmd;->zzd:Ljava/security/KeyStore;

    .line 21
    return-void
.end method

.method static synthetic zza()Z
    .locals 1

    .line 22
    const/4 v0, 0x1

    return v0
.end method

.method static zzc(Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 25
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzmd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzmd;-><init>()V

    .line 26
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzmd;->zza:Ljava/lang/Object;

    monitor-enter v1

    .line 27
    :try_start_0
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzmd;->zzd(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 28
    nop

    .line 29
    const-string v0, "android-keystore://"

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzxo;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 30
    const-string v0, "AES"

    const-string v3, "AndroidKeyStore"

    .line 31
    invoke-static {v0, v3}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 32
    new-instance v3, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/4 v4, 0x3

    invoke-direct {v3, p0, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    .line 33
    const/16 p0, 0x100

    invoke-virtual {v3, p0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p0

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "GCM"

    aput-object v5, v4, v2

    .line 34
    invoke-virtual {p0, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p0

    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "NoPadding"

    aput-object v5, v4, v2

    .line 35
    invoke-virtual {p0, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p0

    .line 36
    invoke-virtual {p0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object p0

    .line 37
    invoke-virtual {v0, p0}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 38
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    .line 39
    monitor-exit v1

    return v3

    .line 40
    :cond_0
    monitor-exit v1

    return v2

    .line 41
    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private final declared-synchronized zzd(Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    monitor-enter p0

    .line 42
    :try_start_0
    const-string v0, "android-keystore://"

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxo;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzmd;->zzd:Ljava/security/KeyStore;

    invoke-virtual {v0, p1}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    .line 44
    :catch_0
    move-exception v0

    .line 45
    :try_start_2
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzmd;->zzb:Ljava/lang/String;

    const-string v1, "Keystore is temporarily unavailable, wait, reinitialize Keystore and try again."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 46
    :try_start_3
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-wide/high16 v2, 0x4044000000000000L    # 40.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 47
    int-to-long v0, v0

    :try_start_4
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 48
    goto :goto_0

    .line 49
    :catch_1
    move-exception v0

    .line 50
    :goto_0
    :try_start_5
    const-string v0, "AndroidKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzmd;->zzd:Ljava/security/KeyStore;

    .line 51
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 52
    nop

    .line 55
    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzmd;->zzd:Ljava/security/KeyStore;

    invoke-virtual {v0, p1}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return p1

    .line 53
    :catch_2
    move-exception p1

    .line 54
    :try_start_7
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-direct {v0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 41
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final declared-synchronized zza(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzbg;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzmb;

    const-string v1, "android-keystore://"

    .line 2
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxo;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzmd;->zzd:Ljava/security/KeyStore;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzmb;-><init>(Ljava/lang/String;Ljava/security/KeyStore;)V

    .line 3
    nop

    .line 4
    nop

    .line 5
    const/16 p1, 0xa

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzou;->zza(I)[B

    move-result-object p1

    .line 6
    nop

    .line 7
    const/4 v1, 0x0

    new-array v1, v1, [B

    .line 8
    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzbg;->zzb([B[B)[B

    move-result-object v2

    .line 9
    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzbg;->zza([B[B)[B

    move-result-object v1

    .line 10
    invoke-static {p1, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 12
    nop

    .line 13
    monitor-exit p0

    return-object v0

    .line 11
    :cond_0
    :try_start_1
    new-instance p1, Ljava/security/KeyStoreException;

    const-string v0, "cannot use Android Keystore: encryption/decryption of non-empty message and empty aad returns an incorrect result"

    invoke-direct {p1, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 0
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzb(Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    .line 24
    :try_start_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "android-keystore://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 24
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
