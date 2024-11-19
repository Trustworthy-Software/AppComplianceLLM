.class public abstract Lcom/google/android/gms/internal/firebase-auth-api/zzj;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Ljava/lang/CharSequence;I)I
    .locals 2

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 2
    nop

    .line 3
    const-string v1, "index"

    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzy;->zza(IILjava/lang/String;)I

    .line 4
    nop

    :goto_0
    if-ge p2, v0, :cond_1

    .line 5
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzj;->zza(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    return p2

    .line 7
    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 8
    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public abstract zza(C)Z
.end method
