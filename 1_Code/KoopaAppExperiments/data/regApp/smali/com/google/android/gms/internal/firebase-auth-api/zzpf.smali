.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzpf;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# static fields
.field public static final zza:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzpf;->zza:Ljava/nio/charset/Charset;

    return-void
.end method

.method public static zza()I
    .locals 5

    .line 1
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 2
    const/4 v1, 0x4

    new-array v1, v1, [B

    .line 3
    const/4 v2, 0x0

    move v3, v2

    .line 4
    :goto_0
    if-nez v3, :cond_0

    .line 5
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 6
    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    const/4 v4, 0x1

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    const/4 v4, 0x2

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    const/4 v4, 0x3

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    goto :goto_0

    .line 7
    :cond_0
    return v3
.end method

.method public static final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzxt;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [B

    .line 9
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 10
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 11
    const/16 v3, 0x21

    if-lt v2, v3, :cond_0

    const/16 v3, 0x7e

    if-gt v2, v3, :cond_0

    .line 13
    int-to-byte v2, v2

    .line 14
    aput-byte v2, v0, v1

    .line 15
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Not a printable ASCII character: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 16
    :cond_1
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzxt;->zza([B)Lcom/google/android/gms/internal/firebase-auth-api/zzxt;

    move-result-object p0

    return-object p0
.end method

.method public static zza([B[B)Z
    .locals 4

    .line 33
    array-length v0, p1

    array-length v1, p0

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 34
    return v2

    .line 35
    :cond_0
    move v0, v2

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 36
    aget-byte v1, p1, v0

    aget-byte v3, p0, v0

    if-eq v1, v3, :cond_1

    .line 37
    return v2

    .line 38
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 39
    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static final zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzxt;
    .locals 4

    .line 17
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [B

    .line 18
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 19
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 20
    const/16 v3, 0x21

    if-lt v2, v3, :cond_0

    const/16 v3, 0x7e

    if-gt v2, v3, :cond_0

    .line 22
    int-to-byte v2, v2

    .line 23
    aput-byte v2, v0, v1

    .line 24
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 21
    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/zzpd;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Not a printable ASCII character: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzpd;-><init>(Ljava/lang/String;)V

    throw p0

    .line 25
    :cond_1
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzxt;->zza([B)Lcom/google/android/gms/internal/firebase-auth-api/zzxt;

    move-result-object p0

    return-object p0
.end method

.method public static zzb()Ljava/lang/Integer;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 26
    const-string v0, "java.vendor"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 27
    const-string v1, "The Android Project"

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 28
    :goto_1
    if-nez v0, :cond_2

    .line 29
    const/4 v0, 0x0

    return-object v0

    .line 30
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 31
    return-object v0
.end method
