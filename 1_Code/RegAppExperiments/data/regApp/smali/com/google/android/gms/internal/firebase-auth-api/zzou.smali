.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzou;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# static fields
.field private static final zza:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/security/SecureRandom;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzot;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzot;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzou;->zza:Ljava/lang/ThreadLocal;

    return-void
.end method

.method static synthetic zza()Ljava/security/SecureRandom;
    .locals 1

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzou;->zzc()Ljava/security/SecureRandom;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    .line 8
    nop

    .line 9
    return-object v0
.end method

.method public static zza(I)[B
    .locals 1

    .line 20
    new-array p0, p0, [B

    .line 21
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzou;->zza:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/SecureRandom;

    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 22
    return-object p0
.end method

.method private static zzb()Ljava/security/Provider;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    :try_start_0
    const-string v0, "org.conscrypt.Conscrypt"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2
    const-string v1, "newProvider"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 3
    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Provider;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 4
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_0

    :catch_4
    move-exception v0

    .line 5
    :goto_0
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "Failed to get Conscrypt provider"

    invoke-direct {v1, v2, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static zzc()Ljava/security/SecureRandom;
    .locals 2

    .line 10
    const-string v0, "SHA1PRNG"

    :try_start_0
    const-string v1, "GmsCore_OpenSSL"

    invoke-static {v0, v1}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 11
    :catch_0
    move-exception v1

    .line 12
    :try_start_1
    const-string v1, "AndroidOpenSSL"

    invoke-static {v0, v1}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v0
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 13
    :catch_1
    move-exception v1

    .line 14
    :try_start_2
    const-string v1, "Conscrypt"

    invoke-static {v0, v1}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v0
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v0

    .line 15
    :catch_2
    move-exception v1

    .line 16
    :try_start_3
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzou;->zzb()Ljava/security/Provider;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/SecureRandom;

    move-result-object v0
    :try_end_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_3

    return-object v0

    .line 17
    :catch_3
    move-exception v0

    .line 18
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    return-object v0
.end method
