.class final Lcom/google/android/gms/internal/measurement/zzmh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@21.5.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zzmi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmg;->zzc()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmg;->zzd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    :cond_0
    nop

    .line 50
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzml;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzml;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzmh;->zza:Lcom/google/android/gms/internal/measurement/zzmi;

    .line 51
    return-void
.end method

.method static zza(Ljava/lang/CharSequence;)I
    .locals 8

    .line 17
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 18
    nop

    .line 19
    const/4 v1, 0x0

    move v2, v1

    .line 20
    :goto_0
    if-ge v2, v0, :cond_0

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x80

    if-ge v3, v4, :cond_0

    .line 21
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 22
    :cond_0
    move v3, v0

    :goto_1
    if-ge v2, v0, :cond_6

    .line 23
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 24
    const/16 v5, 0x800

    if-ge v4, v5, :cond_1

    .line 25
    rsub-int/lit8 v4, v4, 0x7f

    ushr-int/lit8 v4, v4, 0x1f

    add-int/2addr v3, v4

    .line 43
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 26
    :cond_1
    nop

    .line 27
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 28
    nop

    .line 29
    nop

    :goto_2
    if-ge v2, v4, :cond_5

    .line 30
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 31
    if-ge v6, v5, :cond_2

    .line 32
    rsub-int/lit8 v6, v6, 0x7f

    ushr-int/lit8 v6, v6, 0x1f

    add-int/2addr v1, v6

    goto :goto_3

    .line 33
    :cond_2
    add-int/lit8 v1, v1, 0x2

    .line 34
    const v7, 0xd800

    if-gt v7, v6, :cond_4

    const v7, 0xdfff

    if-gt v6, v7, :cond_4

    .line 35
    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v6

    .line 36
    const/high16 v7, 0x10000

    if-lt v6, v7, :cond_3

    .line 38
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 37
    :cond_3
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzmk;

    invoke-direct {p0, v2, v4}, Lcom/google/android/gms/internal/measurement/zzmk;-><init>(II)V

    throw p0

    .line 39
    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 40
    :cond_5
    nop

    .line 41
    add-int/2addr v3, v1

    .line 42
    nop

    .line 44
    :cond_6
    if-lt v3, v0, :cond_7

    .line 46
    return v3

    .line 45
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    int-to-long v0, v3

    const-wide v2, 0x100000000L

    add-long/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UTF-8 length does not fit in int: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static zza(Ljava/lang/CharSequence;[BII)I
    .locals 1

    .line 16
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzmh;->zza:Lcom/google/android/gms/internal/measurement/zzmi;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzmi;->zza(Ljava/lang/CharSequence;[BII)I

    move-result p0

    return p0
.end method

.method static synthetic zza([BII)I
    .locals 4

    .line 1
    nop

    .line 2
    add-int/lit8 v0, p1, -0x1

    aget-byte v0, p0, v0

    .line 3
    sub-int/2addr p2, p1

    const/16 v1, -0x41

    const/4 v2, -0x1

    const/16 v3, -0xc

    packed-switch p2, :pswitch_data_0

    .line 15
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 10
    :pswitch_0
    aget-byte p2, p0, p1

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    .line 11
    if-gt v0, v3, :cond_1

    if-gt p2, v1, :cond_1

    if-le p0, v1, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    shl-int/lit8 p1, p2, 0x8

    xor-int/2addr p1, v0

    shl-int/lit8 p0, p0, 0x10

    xor-int/2addr p0, p1

    .line 14
    return p0

    .line 12
    :cond_1
    :goto_0
    return v2

    .line 7
    :pswitch_1
    aget-byte p0, p0, p1

    .line 8
    if-gt v0, v3, :cond_3

    if-le p0, v1, :cond_2

    goto :goto_1

    :cond_2
    shl-int/lit8 p0, p0, 0x8

    xor-int/2addr p0, v0

    .line 9
    return p0

    .line 8
    :cond_3
    :goto_1
    return v2

    .line 4
    :pswitch_2
    nop

    .line 5
    if-le v0, v3, :cond_4

    return v2

    .line 6
    :cond_4
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static zza([B)Z
    .locals 3

    .line 52
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzmh;->zza:Lcom/google/android/gms/internal/measurement/zzmi;

    const/4 v1, 0x0

    array-length v2, p0

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzmi;->zzb([BII)Z

    move-result p0

    return p0
.end method

.method static zzb([BII)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzji;
        }
    .end annotation

    .line 47
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzmh;->zza:Lcom/google/android/gms/internal/measurement/zzmi;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzmi;->zza([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static zzc([BII)Z
    .locals 1

    .line 53
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzmh;->zza:Lcom/google/android/gms/internal/measurement/zzmi;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzmi;->zzb([BII)Z

    move-result p0

    return p0
.end method
