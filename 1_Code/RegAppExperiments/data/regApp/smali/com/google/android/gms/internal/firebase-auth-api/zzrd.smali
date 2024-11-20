.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzrd;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# direct methods
.method public static zza([B)[B
    .locals 2

    .line 1
    array-length v0, p0

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 3
    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 4
    array-length p0, p0

    const/16 v1, -0x80

    aput-byte v1, v0, p0

    .line 5
    return-object v0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "x must be smaller than a block."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static zzb([B)[B
    .locals 6

    .line 6
    array-length v0, p0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_2

    .line 8
    new-array v0, v1, [B

    .line 9
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0xf

    if-ge v3, v1, :cond_1

    .line 10
    aget-byte v5, p0, v3

    shl-int/lit8 v5, v5, 0x1

    and-int/lit16 v5, v5, 0xfe

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    .line 11
    if-ge v3, v4, :cond_0

    .line 12
    add-int/lit8 v4, v3, 0x1

    aget-byte v4, p0, v4

    shr-int/lit8 v4, v4, 0x7

    and-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 13
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 14
    :cond_1
    aget-byte v1, v0, v4

    aget-byte p0, p0, v2

    shr-int/lit8 p0, p0, 0x7

    and-int/lit16 p0, p0, 0x87

    int-to-byte p0, p0

    xor-int/2addr p0, v1

    int-to-byte p0, p0

    aput-byte p0, v0, v4

    .line 15
    return-object v0

    .line 7
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "value must be a block."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
