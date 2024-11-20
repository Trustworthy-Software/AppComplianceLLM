.class public final synthetic Lcom/google/android/gms/internal/firebase-auth-api/zzaci;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# direct methods
.method public static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzacf;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    const/4 p0, 0x0

    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    .line 2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    .line 4
    move v1, p0

    :goto_0
    if-ge v1, p1, :cond_3

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzk;->zza(C)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 7
    :goto_1
    if-ge v1, p1, :cond_1

    .line 8
    aget-char v2, v0, v1

    .line 9
    invoke-static {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzk;->zza(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 10
    xor-int/lit8 v2, v2, 0x20

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 11
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 12
    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 13
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 14
    :cond_3
    nop

    .line 15
    return-object v0

    .line 16
    :catch_0
    move-exception p1

    .line 17
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzacf;->zza:Lcom/google/android/gms/common/logging/Logger;

    const-string v0, "Failed to get SHA-256 MessageDigest"

    new-array p0, p0, [Ljava/lang/Object;

    invoke-virtual {p1, v0, p0}, Lcom/google/android/gms/common/logging/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    const/4 p0, 0x0

    return-object p0
.end method

.method public static zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzacf;Ljava/lang/String;)V
    .locals 1

    .line 19
    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacf;->zza(Ljava/lang/String;Lcom/google/android/gms/common/api/Status;)V

    .line 20
    return-void
.end method
