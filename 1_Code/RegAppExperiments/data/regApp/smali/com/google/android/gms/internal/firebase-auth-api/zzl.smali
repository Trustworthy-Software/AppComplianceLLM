.class final Lcom/google/android/gms/internal/firebase-auth-api/zzl;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzm;
.source "com.google.firebase:firebase-auth@@22.2.0"


# instance fields
.field private final zza:C


# direct methods
.method constructor <init>(C)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzm;-><init>()V

    .line 12
    iput-char p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzl;->zza:C

    .line 13
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 7

    .line 1
    iget-char v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzl;->zza:C

    .line 2
    nop

    .line 3
    nop

    .line 4
    const/4 v1, 0x6

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    .line 5
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    .line 6
    rsub-int/lit8 v4, v2, 0x5

    and-int/lit8 v5, v0, 0xf

    const-string v6, "0123456789ABCDEF"

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput-char v5, v1, v4

    .line 7
    shr-int/2addr v0, v3

    int-to-char v0, v0

    .line 8
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {v1}, Ljava/lang/String;->copyValueOf([C)Ljava/lang/String;

    move-result-object v0

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CharMatcher.is(\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 2
        0x5cs
        0x75s
        0x0s
        0x0s
        0x0s
        0x0s
    .end array-data
.end method

.method public final zza(C)Z
    .locals 1

    .line 14
    iget-char v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzl;->zza:C

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
