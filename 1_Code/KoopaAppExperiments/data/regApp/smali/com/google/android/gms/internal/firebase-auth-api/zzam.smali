.class public Lcom/google/android/gms/internal/firebase-auth-api/zzam;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static zza(II)I
    .locals 1

    .line 1
    if-ltz p1, :cond_2

    .line 3
    shr-int/lit8 v0, p0, 0x1

    add-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x1

    .line 4
    if-ge p0, p1, :cond_0

    .line 5
    add-int/lit8 p1, p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p0

    shl-int/lit8 p0, p0, 0x1

    .line 6
    :cond_0
    if-gez p0, :cond_1

    .line 7
    const p0, 0x7fffffff

    .line 8
    :cond_1
    return p0

    .line 2
    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "cannot store more than MAX_VALUE elements"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method
