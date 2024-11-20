.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzrl;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzce;


# static fields
.field private static final zza:[B


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzce;

.field private final zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

.field private final zzd:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzrl;->zza:[B

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzce;Lcom/google/android/gms/internal/firebase-auth-api/zzvs;[B)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzrl;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzce;

    .line 24
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzrl;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    .line 25
    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzrl;->zzd:[B

    .line 26
    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/firebase-auth-api/zznd;)Lcom/google/android/gms/internal/firebase-auth-api/zzce;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    nop

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzbq;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzcs;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zznd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzcs;)Lcom/google/android/gms/internal/firebase-auth-api/zzos;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzuy;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzuy$zzb;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzos;->zzf()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzuy$zzb;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzuy$zzb;

    move-result-object v1

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzos;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzuy$zzb;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahd;)Lcom/google/android/gms/internal/firebase-auth-api/zzuy$zzb;

    move-result-object v1

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzos;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzuy$zza;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzuy$zzb;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzuy$zza;)Lcom/google/android/gms/internal/firebase-auth-api/zzuy$zzb;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzuy;

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzow;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzow;

    move-result-object v2

    const-class v3, Lcom/google/android/gms/internal/firebase-auth-api/zzce;

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzmp;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzuy;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzce;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzos;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    move-result-object v0

    .line 10
    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzrk;->zza:[I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x5

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_0

    .line 19
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "unknown output prefix type"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 16
    :pswitch_0
    nop

    .line 17
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zznd;->zza()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    .line 18
    goto :goto_0

    .line 13
    :pswitch_1
    nop

    .line 14
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zznd;->zza()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    .line 15
    goto :goto_0

    .line 11
    :pswitch_2
    new-array p0, v4, [B

    .line 12
    nop

    .line 20
    :goto_0
    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/zzrl;

    invoke-direct {v2, v1, v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzrl;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzce;Lcom/google/android/gms/internal/firebase-auth-api/zzvs;[B)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final zza([B[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 27
    array-length v0, p1

    const/16 v1, 0xa

    if-lt v0, v1, :cond_3

    .line 29
    nop

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzrl;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x2

    new-array v0, v0, [[B

    aput-object p2, v0, v1

    const/4 p2, 0x1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzrl;->zza:[B

    aput-object v2, v0, p2

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzwg;->zza([[B)[B

    move-result-object p2

    .line 32
    :cond_0
    new-array v0, v1, [B

    .line 33
    nop

    .line 34
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzrl;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 35
    const/4 v0, 0x5

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    .line 36
    array-length v2, p1

    invoke-static {p1, v0, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    move-object v0, v1

    .line 37
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzrl;->zzd:[B

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzrl;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzce;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzce;->zza([B[B)V

    .line 40
    return-void

    .line 38
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "wrong prefix"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_3
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "tag too short"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza([B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 41
    nop

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzrl;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    .line 43
    new-array v0, v3, [[B

    aput-object p1, v0, v2

    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzrl;->zza:[B

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzwg;->zza([[B)[B

    move-result-object p1

    .line 44
    :cond_0
    new-array v0, v3, [[B

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzrl;->zzd:[B

    aput-object v3, v0, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzrl;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzce;

    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzce;->zza([B)[B

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzwg;->zza([[B)[B

    move-result-object p1

    return-object p1
.end method
