.class public final Lcom/google/android/gms/internal/measurement/zzlz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@21.5.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zzlz;


# instance fields
.field private zzb:I

.field private zzc:[I

.field private zzd:[Ljava/lang/Object;

.field private zze:I

.field private zzf:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 77
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzlz;

    const/4 v1, 0x0

    new-array v2, v1, [I

    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/zzlz;-><init>(I[I[Ljava/lang/Object;Z)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzlz;->zza:Lcom/google/android/gms/internal/measurement/zzlz;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 78
    const/16 v0, 0x8

    new-array v1, v0, [I

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v3, v1, v0, v2}, Lcom/google/android/gms/internal/measurement/zzlz;-><init>(I[I[Ljava/lang/Object;Z)V

    .line 79
    return-void
.end method

.method private constructor <init>(I[I[Ljava/lang/Object;Z)V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzlz;->zze:I

    .line 82
    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzlz;->zzb:I

    .line 83
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzlz;->zzc:[I

    .line 84
    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzlz;->zzd:[Ljava/lang/Object;

    .line 85
    iput-boolean p4, p0, Lcom/google/android/gms/internal/measurement/zzlz;->zzf:Z

    .line 86
    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/measurement/zzlz;Lcom/google/android/gms/internal/measurement/zzlz;)Lcom/google/android/gms/internal/measurement/zzlz;
    .locals 6

    .line 70
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzlz;->zzb:I

    iget v1, p1, Lcom/google/android/gms/internal/measurement/zzlz;->zzb:I

    add-int/2addr v0, v1

    .line 71
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzlz;->zzc:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    .line 72
    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/zzlz;->zzc:[I

    iget v3, p0, Lcom/google/android/gms/internal/measurement/zzlz;->zzb:I

    iget v4, p1, Lcom/google/android/gms/internal/measurement/zzlz;->zzb:I

    const/4 v5, 0x0

    invoke-static {v2, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzlz;->zzd:[Ljava/lang/Object;

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    .line 74
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzlz;->zzd:[Ljava/lang/Object;

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzlz;->zzb:I

    iget p1, p1, Lcom/google/android/gms/internal/measurement/zzlz;->zzb:I

    invoke-static {v3, v5, v2, p0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzlz;

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/google/android/gms/internal/measurement/zzlz;-><init>(I[I[Ljava/lang/Object;Z)V

    return-object p0
.end method

.method private final zza(I)V
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlz;->zzc:[I

    array-length v1, v0

    if-le p1, v1, :cond_2

    .line 91
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzlz;->zzb:I

    div-int/lit8 v2, v1, 0x2

    add-int/2addr v1, v2

    .line 92
    if-ge v1, p1, :cond_0

    .line 93
    goto :goto_0

    .line 92
    :cond_0
    move p1, v1

    .line 94
    :goto_0
    const/16 v1, 0x8

    if-ge p1, v1, :cond_1

    .line 95
    move p1, v1

    .line 96
    :cond_1
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlz;->zzc:[I

    .line 97
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlz;->zzd:[Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzlz;->zzd:[Ljava/lang/Object;

    .line 98
    :cond_2
    return-void
.end method

.method private static zza(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzmw;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    nop

    .line 130
    ushr-int/lit8 v0, p0, 0x3

    .line 131
    nop

    .line 132
    nop

    .line 133
    and-int/lit8 p0, p0, 0x7

    .line 134
    packed-switch p0, :pswitch_data_0

    .line 151
    :pswitch_0
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zza()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    .line 137
    :pswitch_1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {p2, v0, p0}, Lcom/google/android/gms/internal/measurement/zzmw;->zzb(II)V

    .line 138
    return-void

    .line 143
    :pswitch_2
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzmw;->zza()I

    move-result p0

    sget v1, Lcom/google/android/gms/internal/measurement/zzmz;->zza:I

    if-ne p0, v1, :cond_0

    .line 144
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/measurement/zzmw;->zzb(I)V

    .line 145
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzlz;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzlz;->zzb(Lcom/google/android/gms/internal/measurement/zzmw;)V

    .line 146
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/measurement/zzmw;->zza(I)V

    return-void

    .line 147
    :cond_0
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/measurement/zzmw;->zza(I)V

    .line 148
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzlz;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzlz;->zzb(Lcom/google/android/gms/internal/measurement/zzmw;)V

    .line 149
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/measurement/zzmw;->zzb(I)V

    .line 150
    return-void

    .line 141
    :pswitch_3
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzhm;

    invoke-interface {p2, v0, p1}, Lcom/google/android/gms/internal/measurement/zzmw;->zza(ILcom/google/android/gms/internal/measurement/zzhm;)V

    .line 142
    return-void

    .line 139
    :pswitch_4
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-interface {p2, v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zzmw;->zza(IJ)V

    .line 140
    return-void

    .line 135
    :pswitch_5
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-interface {p2, v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zzmw;->zzb(IJ)V

    .line 136
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static zzc()Lcom/google/android/gms/internal/measurement/zzlz;
    .locals 1

    .line 58
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzlz;->zza:Lcom/google/android/gms/internal/measurement/zzlz;

    return-object v0
.end method

.method static zzd()Lcom/google/android/gms/internal/measurement/zzlz;
    .locals 1

    .line 76
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzlz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzlz;-><init>()V

    return-object v0
.end method

.method private final zzf()V
    .locals 1

    .line 87
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzlz;->zzf:Z

    if-eqz v0, :cond_0

    .line 89
    return-void

    .line 88
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    .line 162
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 163
    return v0

    .line 164
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 165
    return v1

    .line 166
    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/measurement/zzlz;

    if-nez v2, :cond_2

    .line 167
    return v1

    .line 168
    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzlz;

    .line 169
    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzlz;->zzb:I

    iget v3, p1, Lcom/google/android/gms/internal/measurement/zzlz;->zzb:I

    if-ne v2, v3, :cond_8

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzlz;->zzc:[I

    iget-object v4, p1, Lcom/google/android/gms/internal/measurement/zzlz;->zzc:[I

    .line 170
    nop

    .line 171
    move v5, v1

    :goto_0
    if-ge v5, v2, :cond_4

    .line 172
    aget v6, v3, v5

    aget v7, v4, v5

    if-eq v6, v7, :cond_3

    .line 173
    move v2, v1

    goto :goto_1

    .line 174
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 175
    :cond_4
    move v2, v0

    .line 176
    :goto_1
    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzlz;->zzd:[Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzlz;->zzd:[Ljava/lang/Object;

    iget v3, p0, Lcom/google/android/gms/internal/measurement/zzlz;->zzb:I

    .line 177
    nop

    .line 178
    move v4, v1

    :goto_2
    if-ge v4, v3, :cond_6

    .line 179
    aget-object v5, v2, v4

    aget-object v6, p1, v4

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 180
    move p1, v1

    goto :goto_3

    .line 181
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 182
    :cond_6
    move p1, v0

    .line 183
    :goto_3
    if-nez p1, :cond_7

    goto :goto_4

    .line 185
    :cond_7
    return v0

    .line 184
    :cond_8
    :goto_4
    return v1
.end method

.method public final hashCode()I
    .locals 8

    .line 42
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzlz;->zzb:I

    add-int/lit16 v1, v0, 0x20f

    .line 43
    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzlz;->zzc:[I

    .line 44
    nop

    .line 45
    const/16 v3, 0x11

    const/4 v4, 0x0

    move v6, v3

    move v5, v4

    :goto_0
    if-ge v5, v0, :cond_0

    .line 46
    mul-int/lit8 v6, v6, 0x1f

    aget v7, v2, v5

    add-int/2addr v6, v7

    .line 47
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 48
    :cond_0
    nop

    .line 49
    add-int/2addr v1, v6

    .line 50
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlz;->zzd:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzlz;->zzb:I

    .line 51
    nop

    .line 52
    nop

    :goto_1
    if-ge v4, v2, :cond_1

    .line 53
    mul-int/lit8 v3, v3, 0x1f

    aget-object v5, v0, v4

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    add-int/2addr v3, v5

    .line 54
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 55
    :cond_1
    nop

    .line 56
    add-int/2addr v1, v3

    .line 57
    return v1
.end method

.method public final zza()I
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzlz;->zze:I

    .line 2
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3
    return v0

    .line 4
    :cond_0
    nop

    .line 5
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzlz;->zzb:I

    if-ge v0, v2, :cond_1

    .line 6
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzlz;->zzc:[I

    aget v2, v2, v0

    .line 7
    nop

    .line 8
    ushr-int/lit8 v3, v2, 0x3

    .line 9
    nop

    .line 10
    nop

    .line 11
    and-int/lit8 v2, v2, 0x7

    .line 12
    packed-switch v2, :pswitch_data_0

    .line 25
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zza()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 15
    :pswitch_1
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzlz;->zzd:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/measurement/zzig;->zzf(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 16
    goto :goto_1

    .line 21
    :pswitch_2
    nop

    .line 22
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzig;->zzi(I)I

    move-result v2

    shl-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzlz;->zzd:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzlz;

    .line 23
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzlz;->zza()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 24
    goto :goto_1

    .line 19
    :pswitch_3
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzlz;->zzd:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzhm;

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/measurement/zzig;->zzc(ILcom/google/android/gms/internal/measurement/zzhm;)I

    move-result v2

    add-int/2addr v1, v2

    .line 20
    goto :goto_1

    .line 17
    :pswitch_4
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzlz;->zzd:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzig;->zzc(IJ)I

    move-result v2

    add-int/2addr v1, v2

    .line 18
    goto :goto_1

    .line 13
    :pswitch_5
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzlz;->zzd:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzig;->zzg(IJ)I

    move-result v2

    add-int/2addr v1, v2

    .line 14
    nop

    .line 26
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 27
    :cond_1
    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzlz;->zze:I

    .line 28
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/zzlz;)Lcom/google/android/gms/internal/measurement/zzlz;
    .locals 6

    .line 59
    nop

    .line 60
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzlz;->zza:Lcom/google/android/gms/internal/measurement/zzlz;

    .line 61
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzlz;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    return-object p0

    .line 63
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzlz;->zzf()V

    .line 64
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzlz;->zzb:I

    iget v1, p1, Lcom/google/android/gms/internal/measurement/zzlz;->zzb:I

    add-int/2addr v0, v1

    .line 65
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzlz;->zza(I)V

    .line 66
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzlz;->zzc:[I

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzlz;->zzc:[I

    iget v3, p0, Lcom/google/android/gms/internal/measurement/zzlz;->zzb:I

    iget v4, p1, Lcom/google/android/gms/internal/measurement/zzlz;->zzb:I

    const/4 v5, 0x0

    invoke-static {v1, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzlz;->zzd:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzlz;->zzd:[Ljava/lang/Object;

    iget v3, p0, Lcom/google/android/gms/internal/measurement/zzlz;->zzb:I

    iget p1, p1, Lcom/google/android/gms/internal/measurement/zzlz;->zzb:I

    invoke-static {v1, v5, v2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzlz;->zzb:I

    .line 69
    return-object p0
.end method

.method final zza(ILjava/lang/Object;)V
    .locals 2

    .line 109
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzlz;->zzf()V

    .line 110
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzlz;->zzb:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzlz;->zza(I)V

    .line 111
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlz;->zzc:[I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzlz;->zzb:I

    aput p1, v0, v1

    .line 112
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzlz;->zzd:[Ljava/lang/Object;

    aput-object p2, p1, v1

    .line 113
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzlz;->zzb:I

    .line 114
    return-void
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/zzmw;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zzmw;->zza()I

    move-result v0

    sget v1, Lcom/google/android/gms/internal/measurement/zzmz;->zzb:I

    if-ne v0, v1, :cond_1

    .line 116
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzlz;->zzb:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 117
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzlz;->zzc:[I

    aget v1, v1, v0

    .line 118
    ushr-int/lit8 v1, v1, 0x3

    .line 119
    nop

    .line 120
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzlz;->zzd:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {p1, v1, v2}, Lcom/google/android/gms/internal/measurement/zzmw;->zza(ILjava/lang/Object;)V

    .line 121
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void

    .line 122
    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzlz;->zzb:I

    if-ge v0, v1, :cond_2

    .line 123
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzlz;->zzc:[I

    aget v1, v1, v0

    .line 124
    ushr-int/lit8 v1, v1, 0x3

    .line 125
    nop

    .line 126
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzlz;->zzd:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {p1, v1, v2}, Lcom/google/android/gms/internal/measurement/zzmw;->zza(ILjava/lang/Object;)V

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 128
    :cond_2
    return-void
.end method

.method final zza(Ljava/lang/StringBuilder;I)V
    .locals 3

    .line 102
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzlz;->zzb:I

    if-ge v0, v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzlz;->zzc:[I

    aget v1, v1, v0

    .line 104
    ushr-int/lit8 v1, v1, 0x3

    .line 105
    nop

    .line 106
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzlz;->zzd:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/internal/measurement/zzko;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    :cond_0
    return-void
.end method

.method public final zzb()I
    .locals 4

    .line 29
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzlz;->zze:I

    .line 30
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 31
    return v0

    .line 32
    :cond_0
    nop

    .line 33
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzlz;->zzb:I

    if-ge v0, v2, :cond_1

    .line 34
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzlz;->zzc:[I

    aget v2, v2, v0

    .line 35
    ushr-int/lit8 v2, v2, 0x3

    .line 36
    nop

    .line 37
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzlz;->zzd:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzhm;

    .line 38
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/zzig;->zzd(ILcom/google/android/gms/internal/measurement/zzhm;)I

    move-result v2

    add-int/2addr v1, v2

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 40
    :cond_1
    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzlz;->zze:I

    .line 41
    return v1
.end method

.method public final zzb(Lcom/google/android/gms/internal/measurement/zzmw;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzlz;->zzb:I

    if-nez v0, :cond_0

    .line 153
    return-void

    .line 154
    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zzmw;->zza()I

    move-result v0

    sget v1, Lcom/google/android/gms/internal/measurement/zzmz;->zza:I

    if-ne v0, v1, :cond_2

    .line 155
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzlz;->zzb:I

    if-ge v0, v1, :cond_1

    .line 156
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzlz;->zzc:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzlz;->zzd:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/measurement/zzlz;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzmw;)V

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 158
    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzlz;->zzb:I

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    .line 159
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzlz;->zzc:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzlz;->zzd:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/measurement/zzlz;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzmw;)V

    .line 160
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 161
    :cond_3
    return-void
.end method

.method public final zze()V
    .locals 1

    .line 99
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzlz;->zzf:Z

    if-eqz v0, :cond_0

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzlz;->zzf:Z

    .line 101
    :cond_0
    return-void
.end method
