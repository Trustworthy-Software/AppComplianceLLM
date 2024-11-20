.class final Lcom/google/android/gms/internal/firebase-auth-api/zzlv;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzlj;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzwo;

.field private final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzla;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzla;Lcom/google/android/gms/internal/firebase-auth-api/zzwo;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzlv;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzla;

    .line 8
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzlv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzwo;

    .line 9
    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzwo;)Lcom/google/android/gms/internal/firebase-auth-api/zzlv;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzlu;->zza:[I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzwo;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 5
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid curve type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :pswitch_0
    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/zzlv;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzla;

    const-string v1, "HmacSha512"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzla;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzwo;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzwo;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzlv;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzla;Lcom/google/android/gms/internal/firebase-auth-api/zzwo;)V

    return-object p0

    .line 3
    :pswitch_1
    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/zzlv;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzla;

    const-string v1, "HmacSha384"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzla;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzwo;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzwo;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzlv;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzla;Lcom/google/android/gms/internal/firebase-auth-api/zzwo;)V

    return-object p0

    .line 2
    :pswitch_2
    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/zzlv;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzla;

    const-string v1, "HmacSha256"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzla;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzwo;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzwo;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzlv;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzla;Lcom/google/android/gms/internal/firebase-auth-api/zzwo;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final zza()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 26
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzlu;->zza:[I

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzlv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzwo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzwo;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 30
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Could not determine HPKE KEM ID"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :pswitch_0
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzlt;->zze:[B

    return-object v0

    .line 28
    :pswitch_1
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzlt;->zzd:[B

    return-object v0

    .line 27
    :pswitch_2
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzlt;->zzc:[B

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zza([BLcom/google/android/gms/internal/firebase-auth-api/zzll;)[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzlv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzwo;

    .line 11
    invoke-interface {p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzll;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzxt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxt;->zzb()[B

    move-result-object v1

    .line 12
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzwp;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzwo;[B)Ljava/security/interfaces/ECPrivateKey;

    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzlv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzwo;

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzwr;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzwr;

    .line 14
    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzwp;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzwo;Lcom/google/android/gms/internal/firebase-auth-api/zzwr;[B)Ljava/security/interfaces/ECPublicKey;

    move-result-object v1

    .line 15
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzwp;->zza(Ljava/security/interfaces/ECPrivateKey;Ljava/security/interfaces/ECPublicKey;)[B

    move-result-object v4

    .line 16
    nop

    .line 17
    invoke-interface {p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzll;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzxt;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzxt;->zzb()[B

    move-result-object p2

    .line 18
    nop

    .line 19
    const/4 v0, 0x2

    new-array v0, v0, [[B

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzwg;->zza([[B)[B

    move-result-object v6

    .line 20
    nop

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzlv;->zza()[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzlt;->zza([B)[B

    move-result-object v8

    .line 22
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzlv;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzla;

    const/4 v3, 0x0

    const-string v5, "eae_prk"

    const-string v7, "shared_secret"

    .line 23
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzla;->zza()I

    move-result v9

    .line 24
    invoke-virtual/range {v2 .. v9}, Lcom/google/android/gms/internal/firebase-auth-api/zzla;->zza([B[BLjava/lang/String;[BLjava/lang/String;[BI)[B

    move-result-object p1

    .line 25
    return-object p1
.end method
