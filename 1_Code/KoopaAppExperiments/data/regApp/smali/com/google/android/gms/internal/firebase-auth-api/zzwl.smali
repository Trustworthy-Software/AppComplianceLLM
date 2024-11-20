.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzwl;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzbo;


# static fields
.field private static final zza:[B


# instance fields
.field private final zzb:Ljava/security/interfaces/ECPrivateKey;

.field private final zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzwn;

.field private final zzd:Ljava/lang/String;

.field private final zze:[B

.field private final zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzwr;

.field private final zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzwi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzwl;->zza:[B

    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/ECPrivateKey;[BLjava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzwr;Lcom/google/android/gms/internal/firebase-auth-api/zzwi;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwl;->zzb:Ljava/security/interfaces/ECPrivateKey;

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzwn;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzwn;-><init>(Ljava/security/interfaces/ECPrivateKey;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwl;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzwn;

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwl;->zze:[B

    .line 6
    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwl;->zzd:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwl;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzwr;

    .line 8
    iput-object p5, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwl;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzwi;

    .line 9
    return-void
.end method


# virtual methods
.method public final zza([B[B)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwl;->zzb:Ljava/security/interfaces/ECPrivateKey;

    invoke-interface {v0}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwl;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzwr;

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzwp;->zza(Ljava/security/spec/EllipticCurve;)I

    move-result v0

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzwr;->ordinal()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 17
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "unknown EC point format"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :pswitch_0
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 16
    :pswitch_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 14
    :pswitch_2
    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 18
    :goto_0
    nop

    .line 19
    array-length v1, p1

    if-lt v1, v0, :cond_0

    .line 21
    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    .line 22
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwl;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzwn;

    iget-object v4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwl;->zzd:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwl;->zze:[B

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwl;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzwi;

    .line 23
    invoke-interface {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzwi;->zza()I

    move-result v7

    iget-object v8, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwl;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzwr;

    .line 24
    move-object v6, p2

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzwn;->zza([BLjava/lang/String;[B[BILcom/google/android/gms/internal/firebase-auth-api/zzwr;)[B

    move-result-object p2

    .line 25
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwl;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzwi;

    invoke-interface {v1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzwi;->zza([B)Lcom/google/android/gms/internal/firebase-auth-api/zzly;

    move-result-object p2

    .line 26
    array-length v1, p1

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzwl;->zza:[B

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzly;->zza([B[B)[B

    move-result-object p1

    return-object p1

    .line 20
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "ciphertext too short"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
