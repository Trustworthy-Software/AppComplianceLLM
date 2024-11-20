.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzma$zza;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase-auth-api/zzma;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation


# instance fields
.field private zza:Landroid/content/Context;

.field private zzb:Ljava/lang/String;

.field private zzc:Ljava/lang/String;

.field private zzd:Ljava/lang/String;

.field private zze:Lcom/google/android/gms/internal/firebase-auth-api/zzbg;

.field private zzf:Z

.field private zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzbu;

.field private zzh:Lcom/google/android/gms/internal/firebase-auth-api/zzvb;

.field private zzi:Lcom/google/android/gms/internal/firebase-auth-api/zzcb;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzma$zza;->zza:Landroid/content/Context;

    .line 76
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzma$zza;->zzb:Ljava/lang/String;

    .line 77
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzma$zza;->zzc:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzma$zza;->zzd:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzma$zza;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzbg;

    .line 80
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzma$zza;->zzf:Z

    .line 81
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzma$zza;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzbu;

    .line 82
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzma$zza;->zzh:Lcom/google/android/gms/internal/firebase-auth-api/zzvb;

    .line 83
    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzma$zza;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzma$zza;->zza:Landroid/content/Context;

    return-object p0
.end method

.method private static zza([B)Lcom/google/android/gms/internal/firebase-auth-api/zzcb;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    nop

    .line 18
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbj;->zza([B)Lcom/google/android/gms/internal/firebase-auth-api/zzca;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbl;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzca;)Lcom/google/android/gms/internal/firebase-auth-api/zzbx;

    move-result-object p0

    .line 19
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzcb;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzbx;)Lcom/google/android/gms/internal/firebase-auth-api/zzcb;

    move-result-object p0

    return-object p0
.end method

.method private final zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzbg;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    const-string v0, "cannot use Android Keystore, it\'ll be disabled"

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzma;->zzd()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzma;->zzc()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Android Keystore requires at least Android M"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    return-object v2

    .line 4
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzmd;

    invoke-direct {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzmd;-><init>()V

    .line 5
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzma$zza;->zzd:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzmd;->zzc(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/ProviderException; {:try_start_0 .. :try_end_0} :catch_2

    .line 6
    nop

    .line 10
    :try_start_1
    iget-object v4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzma$zza;->zzd:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzmd;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzbg;

    move-result-object v0
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/ProviderException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 11
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 12
    :goto_0
    if-eqz v3, :cond_1

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzma;->zzc()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16
    return-object v2

    .line 13
    :cond_1
    new-instance v0, Ljava/security/KeyStoreException;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzma$zza;->zzd:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 14
    const-string v3, "the master key %s exists but is unusable"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 7
    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    .line 8
    :goto_1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzma;->zzc()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9
    return-object v2
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzma$zza;)Lcom/google/android/gms/internal/firebase-auth-api/zzbg;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzma$zza;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzbg;

    return-object p0
.end method

.method private final zzb([B)Lcom/google/android/gms/internal/firebase-auth-api/zzcb;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzmd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzmd;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzma$zza;->zzd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzmd;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzbg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzma$zza;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzbg;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/ProviderException; {:try_start_0 .. :try_end_0} :catch_3

    .line 21
    nop

    .line 28
    nop

    .line 29
    :try_start_1
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzbj;->zza([B)Lcom/google/android/gms/internal/firebase-auth-api/zzca;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzma$zza;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzbg;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzca;Lcom/google/android/gms/internal/firebase-auth-api/zzbg;)Lcom/google/android/gms/internal/firebase-auth-api/zzbx;

    move-result-object v0

    .line 30
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzcb;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzbx;)Lcom/google/android/gms/internal/firebase-auth-api/zzcb;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    .line 31
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 32
    :goto_0
    :try_start_2
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzma$zza;->zza([B)Lcom/google/android/gms/internal/firebase-auth-api/zzcb;

    move-result-object p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    return-object p1

    .line 33
    :catch_2
    move-exception p1

    .line 34
    throw v0

    .line 22
    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    .line 23
    :goto_1
    :try_start_3
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzma$zza;->zza([B)Lcom/google/android/gms/internal/firebase-auth-api/zzcb;

    move-result-object p1

    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzma;->zzc()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cannot use Android Keystore, it\'ll be disabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 25
    return-object p1

    .line 26
    :catch_5
    move-exception p1

    .line 27
    throw v0
.end method

.method private static zzb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    if-eqz p1, :cond_5

    .line 86
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 87
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 88
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 90
    :goto_0
    const/4 p2, 0x0

    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 91
    if-nez p0, :cond_1

    .line 92
    return-object p2

    .line 93
    :cond_1
    nop

    .line 94
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_4

    .line 96
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    .line 97
    new-array v1, p2, [B

    .line 98
    nop

    :goto_1
    if-ge v0, p2, :cond_3

    .line 99
    mul-int/lit8 v2, v0, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    .line 100
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    .line 101
    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    if-eq v2, v4, :cond_2

    .line 103
    shl-int/lit8 v3, v3, 0x4

    add-int/2addr v3, v2

    int-to-byte v2, v3

    aput-byte v2, v1, v0

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 102
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "input is not hexadecimal"

    invoke-direct {p0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 105
    :cond_3
    nop

    .line 106
    return-object v1

    .line 95
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "Expected a string of even length"

    invoke-direct {p0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    .line 108
    :goto_2
    new-instance p0, Ljava/io/CharConversionException;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 109
    const-string p2, "can\'t read keyset; the pref value %s is not a valid hex string"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 85
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "keysetName cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/internal/firebase-auth-api/zzma$zza;)Lcom/google/android/gms/internal/firebase-auth-api/zzcb;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzma$zza;->zzi:Lcom/google/android/gms/internal/firebase-auth-api/zzcb;

    return-object p0
.end method

.method static bridge synthetic zzd(Lcom/google/android/gms/internal/firebase-auth-api/zzma$zza;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzma$zza;->zzb:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic zze(Lcom/google/android/gms/internal/firebase-auth-api/zzma$zza;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzma$zza;->zzc:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzma$zza;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    if-eqz p1, :cond_0

    .line 45
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzma$zza;->zza:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzma$zza;->zzb:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzma$zza;->zzc:Ljava/lang/String;

    .line 48
    return-object p0

    .line 44
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "need an Android context"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzvb;)Lcom/google/android/gms/internal/firebase-auth-api/zzma$zza;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzma$zza;->zzh:Lcom/google/android/gms/internal/firebase-auth-api/zzvb;

    .line 36
    return-object p0
.end method

.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzma$zza;
    .locals 1

    .line 37
    const-string v0, "android-keystore://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzma$zza;->zzf:Z

    if-eqz v0, :cond_0

    .line 41
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzma$zza;->zzd:Ljava/lang/String;

    .line 42
    return-object p0

    .line 40
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "cannot call withMasterKeyUri() after calling doNotUseKeystore()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 38
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "key URI must start with android-keystore://"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final declared-synchronized zza()Lcom/google/android/gms/internal/firebase-auth-api/zzma;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzma$zza;->zzb:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 51
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzma$zza;->zzh:Lcom/google/android/gms/internal/firebase-auth-api/zzvb;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzma$zza;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzbu;

    if-nez v1, :cond_0

    .line 52
    nop

    .line 53
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzagu;->zzj()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzcu;->zza([B)Lcom/google/android/gms/internal/firebase-auth-api/zzch;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbu;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzch;)Lcom/google/android/gms/internal/firebase-auth-api/zzbu;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzma$zza;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzbu;

    .line 54
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzma;->zzb()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 55
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzma$zza;->zza:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzma$zza;->zzb:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzma$zza;->zzc:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzma$zza;->zzb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    .line 56
    if-nez v1, :cond_3

    .line 57
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzma$zza;->zzd:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 58
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzma$zza;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzbg;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzma$zza;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzbg;

    .line 59
    :cond_1
    nop

    .line 60
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzma$zza;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzbu;

    if-eqz v1, :cond_2

    .line 62
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzcb;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzcb;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzma$zza;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzbu;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzcb;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzbu;)Lcom/google/android/gms/internal/firebase-auth-api/zzcb;

    move-result-object v1

    .line 63
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzcb;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzbx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzvj;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzvj;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzvj$zza;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzvj$zza;->zza()I

    move-result v2

    .line 64
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzcb;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzcb;

    move-result-object v1

    .line 65
    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/zzmf;

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzma$zza;->zza:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzma$zza;->zzb:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzma$zza;->zzc:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzmf;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzcb;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzbx;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzma$zza;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzbg;

    invoke-static {v3, v2, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzma;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzbx;Lcom/google/android/gms/internal/firebase-auth-api/zzcd;Lcom/google/android/gms/internal/firebase-auth-api/zzbg;)V

    .line 67
    nop

    .line 68
    iput-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzma$zza;->zzi:Lcom/google/android/gms/internal/firebase-auth-api/zzcb;

    goto :goto_1

    .line 61
    :cond_2
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "cannot read or generate keyset"

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 69
    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzma$zza;->zzd:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzma;->zzd()Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    .line 71
    :cond_4
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzma$zza;->zzb([B)Lcom/google/android/gms/internal/firebase-auth-api/zzcb;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzma$zza;->zzi:Lcom/google/android/gms/internal/firebase-auth-api/zzcb;

    goto :goto_1

    .line 70
    :cond_5
    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzma$zza;->zza([B)Lcom/google/android/gms/internal/firebase-auth-api/zzcb;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzma$zza;->zzi:Lcom/google/android/gms/internal/firebase-auth-api/zzcb;

    .line 72
    :goto_1
    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzma;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzma;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzma$zza;Lcom/google/android/gms/internal/firebase-auth-api/zzmc;)V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .line 73
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1

    .line 50
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keysetName cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 48
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
