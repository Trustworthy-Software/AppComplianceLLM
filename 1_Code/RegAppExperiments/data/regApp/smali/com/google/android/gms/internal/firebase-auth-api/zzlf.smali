.class final Lcom/google/android/gms/internal/firebase-auth-api/zzlf;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzbo;


# static fields
.field private static final zza:[B


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzll;

.field private final zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzlj;

.field private final zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzlg;

.field private final zze:Lcom/google/android/gms/internal/firebase-auth-api/zzld;

.field private final zzf:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzlf;->zza:[B

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzll;Lcom/google/android/gms/internal/firebase-auth-api/zzlj;Lcom/google/android/gms/internal/firebase-auth-api/zzlg;Lcom/google/android/gms/internal/firebase-auth-api/zzld;I)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzlf;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzll;

    .line 34
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzlf;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzlj;

    .line 35
    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzlf;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzlg;

    .line 36
    iput-object p4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzlf;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzld;

    .line 37
    iput p5, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzlf;->zzf:I

    .line 38
    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzuu;)Lcom/google/android/gms/internal/firebase-auth-api/zzlf;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzuu;->zzf()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzuu;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzuv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzuv;->zzg()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzuu;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zze()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzuu;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzuv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzuv;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzur;

    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzlk;->zzc(Lcom/google/android/gms/internal/firebase-auth-api/zzur;)Lcom/google/android/gms/internal/firebase-auth-api/zzlj;

    move-result-object v3

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzlk;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzur;)Lcom/google/android/gms/internal/firebase-auth-api/zzlg;

    move-result-object v4

    .line 10
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzlk;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzur;)Lcom/google/android/gms/internal/firebase-auth-api/zzld;

    move-result-object v5

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzur;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzuo;

    move-result-object v0

    .line 12
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzle;->zza:[I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzuo;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzuo;->name()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to determine KEM-encoding length for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 16
    :pswitch_0
    const/16 v0, 0x85

    move v6, v0

    goto :goto_0

    .line 15
    :pswitch_1
    const/16 v0, 0x61

    move v6, v0

    goto :goto_0

    .line 14
    :pswitch_2
    const/16 v0, 0x41

    move v6, v0

    goto :goto_0

    .line 13
    :pswitch_3
    const/16 v0, 0x20

    move v6, v0

    .line 19
    :goto_0
    nop

    .line 20
    nop

    .line 21
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzli;->zza:[I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzuu;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzuv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzuv;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzur;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzur;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzuo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzuo;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 28
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Unrecognized HPKE KEM identifier"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 23
    :pswitch_4
    nop

    .line 24
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzuu;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zzg()[B

    move-result-object v0

    .line 25
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzuu;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzuv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzuv;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zzg()[B

    move-result-object v1

    .line 26
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzuu;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzuv;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzuv;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzur;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzur;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzuo;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzlt;->zzc(Lcom/google/android/gms/internal/firebase-auth-api/zzuo;)Lcom/google/android/gms/internal/firebase-auth-api/zzwo;

    move-result-object p0

    .line 27
    invoke-static {v0, v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzlx;->zza([B[BLcom/google/android/gms/internal/firebase-auth-api/zzwo;)Lcom/google/android/gms/internal/firebase-auth-api/zzlx;

    move-result-object p0

    move-object v2, p0

    goto :goto_1

    .line 22
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzuu;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zzg()[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzlz;->zza([B)Lcom/google/android/gms/internal/firebase-auth-api/zzlz;

    move-result-object p0

    move-object v2, p0

    .line 29
    :goto_1
    nop

    .line 30
    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/zzlf;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzlf;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzll;Lcom/google/android/gms/internal/firebase-auth-api/zzlj;Lcom/google/android/gms/internal/firebase-auth-api/zzlg;Lcom/google/android/gms/internal/firebase-auth-api/zzld;I)V

    return-object p0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "HpkePrivateKey.private_key is empty."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "HpkePrivateKey.public_key is missing params field."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "HpkePrivateKey is missing public_key field."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public final zza([B[B)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 39
    array-length v0, p1

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzlf;->zzf:I

    if-lt v0, v1, :cond_1

    .line 41
    nop

    .line 42
    if-nez p2, :cond_0

    .line 43
    const/4 p2, 0x0

    new-array p2, p2, [B

    move-object v7, p2

    goto :goto_0

    .line 42
    :cond_0
    move-object v7, p2

    .line 44
    :goto_0
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    .line 45
    iget p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzlf;->zzf:I

    array-length v0, p1

    .line 46
    invoke-static {p1, p2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    .line 47
    iget-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzlf;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzll;

    iget-object v4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzlf;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzlj;

    iget-object v5, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzlf;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzlg;

    iget-object v6, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzlf;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzld;

    .line 48
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzlc;->zza([BLcom/google/android/gms/internal/firebase-auth-api/zzll;Lcom/google/android/gms/internal/firebase-auth-api/zzlj;Lcom/google/android/gms/internal/firebase-auth-api/zzlg;Lcom/google/android/gms/internal/firebase-auth-api/zzld;[B)Lcom/google/android/gms/internal/firebase-auth-api/zzlc;

    move-result-object p2

    .line 49
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzlf;->zza:[B

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzlc;->zza([B[B)[B

    move-result-object p1

    return-object p1

    .line 40
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Ciphertext is too short."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
