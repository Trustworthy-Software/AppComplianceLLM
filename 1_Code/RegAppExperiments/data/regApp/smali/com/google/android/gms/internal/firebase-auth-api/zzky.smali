.class final Lcom/google/android/gms/internal/firebase-auth-api/zzky;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzld;


# instance fields
.field private final zza:I


# direct methods
.method constructor <init>(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/16 v0, 0x10

    if-eq p1, v0, :cond_1

    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported key length: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_1
    :goto_0
    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzky;->zza:I

    .line 7
    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzky;->zza:I

    return v0
.end method

.method public final zza([B[B[B[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 12
    array-length v0, p1

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzky;->zza:I

    if-ne v0, v1, :cond_0

    .line 14
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzht;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzht;-><init>([BZ)V

    .line 15
    invoke-virtual {v0, p2, p3, p4}, Lcom/google/android/gms/internal/firebase-auth-api/zzht;->zza([B[B[B)[B

    move-result-object p1

    return-object p1

    .line 13
    :cond_0
    new-instance p2, Ljava/security/InvalidAlgorithmParameterException;

    array-length p1, p1

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Unexpected key length: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final zzb()I
    .locals 1

    .line 2
    const/16 v0, 0xc

    return v0
.end method

.method public final zzc()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 8
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzky;->zza:I

    sparse-switch v0, :sswitch_data_0

    .line 11
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Could not determine HPKE AEAD ID"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :sswitch_0
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzlt;->zzj:[B

    return-object v0

    .line 9
    :sswitch_1
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzlt;->zzi:[B

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x20 -> :sswitch_0
    .end sparse-switch
.end method
