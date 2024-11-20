.class public abstract Lcom/google/android/gms/internal/measurement/zzig;
.super Lcom/google/android/gms/internal/measurement/zzhn;
.source "com.google.android.gms:play-services-measurement-base@@21.5.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzig$zza;,
        Lcom/google/android/gms/internal/measurement/zzig$zzb;
    }
.end annotation


# static fields
.field private static final zzb:Ljava/util/logging/Logger;

.field private static final zzc:Z


# instance fields
.field zza:Lcom/google/android/gms/internal/measurement/zzij;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 211
    const-class v0, Lcom/google/android/gms/internal/measurement/zzig;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzig;->zzb:Ljava/util/logging/Logger;

    .line 212
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmg;->zzc()Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gms/internal/measurement/zzig;->zzc:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 213
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzhn;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzih;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzig;-><init>()V

    return-void
.end method

.method public static zza(D)I
    .locals 0

    .line 26
    const/16 p0, 0x8

    return p0
.end method

.method public static zza(F)I
    .locals 0

    .line 52
    const/4 p0, 0x4

    return p0
.end method

.method public static zza(ID)I
    .locals 0

    .line 21
    nop

    .line 22
    nop

    .line 23
    shl-int/lit8 p0, p0, 0x3

    .line 24
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzig;->zzj(I)I

    move-result p0

    .line 25
    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static zza(IF)I
    .locals 0

    .line 47
    nop

    .line 48
    nop

    .line 49
    shl-int/lit8 p0, p0, 0x3

    .line 50
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzig;->zzj(I)I

    move-result p0

    .line 51
    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static zza(ILcom/google/android/gms/internal/measurement/zzjn;)I
    .locals 2

    .line 77
    nop

    .line 78
    nop

    .line 79
    nop

    .line 80
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzig;->zzj(I)I

    move-result v0

    .line 81
    shl-int/lit8 v0, v0, 0x1

    .line 82
    const/4 v1, 0x2

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/measurement/zzig;->zzj(II)I

    move-result p0

    add-int/2addr v0, p0

    .line 83
    const/4 p0, 0x3

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/zzig;->zzb(ILcom/google/android/gms/internal/measurement/zzjn;)I

    move-result p0

    add-int/2addr v0, p0

    .line 84
    return v0
.end method

.method public static zza(Lcom/google/android/gms/internal/measurement/zzjn;)I
    .locals 1

    .line 93
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjn;->zzb()I

    move-result p0

    .line 94
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzig;->zzj(I)I

    move-result v0

    add-int/2addr v0, p0

    .line 95
    return v0
.end method

.method static zza(Lcom/google/android/gms/internal/measurement/zzkj;Lcom/google/android/gms/internal/measurement/zzlb;)I
    .locals 0

    .line 118
    check-cast p0, Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zza(Lcom/google/android/gms/internal/measurement/zzlb;)I

    move-result p0

    .line 119
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzig;->zzj(I)I

    move-result p1

    add-int/2addr p1, p0

    .line 120
    return p1
.end method

.method public static zza(Z)I
    .locals 0

    .line 6
    const/4 p0, 0x1

    return p0
.end method

.method public static zza([B)I
    .locals 1

    .line 7
    array-length p0, p0

    .line 8
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzig;->zzj(I)I

    move-result v0

    add-int/2addr v0, p0

    .line 9
    return v0
.end method

.method public static zzb(ILcom/google/android/gms/internal/measurement/zzjn;)I
    .locals 1

    .line 85
    nop

    .line 86
    nop

    .line 87
    shl-int/lit8 p0, p0, 0x3

    .line 88
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzig;->zzj(I)I

    move-result p0

    .line 89
    nop

    .line 90
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzjn;->zzb()I

    move-result p1

    .line 91
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzig;->zzj(I)I

    move-result v0

    add-int/2addr v0, p1

    .line 92
    add-int/2addr p0, v0

    return p0
.end method

.method public static zzb(ILcom/google/android/gms/internal/measurement/zzkj;)I
    .locals 2

    .line 96
    nop

    .line 97
    nop

    .line 98
    nop

    .line 99
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzig;->zzj(I)I

    move-result v0

    .line 100
    shl-int/lit8 v0, v0, 0x1

    .line 101
    const/4 v1, 0x2

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/measurement/zzig;->zzj(II)I

    move-result p0

    add-int/2addr v0, p0

    .line 102
    nop

    .line 103
    nop

    .line 104
    nop

    .line 105
    nop

    .line 106
    const/16 p0, 0x18

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzig;->zzj(I)I

    move-result p0

    .line 107
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzig;->zzc(Lcom/google/android/gms/internal/measurement/zzkj;)I

    move-result p1

    add-int/2addr p0, p1

    .line 108
    add-int/2addr v0, p0

    .line 109
    return v0
.end method

.method static zzb(ILcom/google/android/gms/internal/measurement/zzkj;Lcom/google/android/gms/internal/measurement/zzlb;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 53
    nop

    .line 54
    nop

    .line 55
    shl-int/lit8 p0, p0, 0x3

    .line 56
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzig;->zzj(I)I

    move-result p0

    .line 57
    shl-int/lit8 p0, p0, 0x1

    .line 58
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzhd;->zza(Lcom/google/android/gms/internal/measurement/zzlb;)I

    move-result p1

    .line 59
    add-int/2addr p0, p1

    return p0
.end method

.method public static zzb(ILjava/lang/String;)I
    .locals 0

    .line 157
    nop

    .line 158
    nop

    .line 159
    shl-int/lit8 p0, p0, 0x3

    .line 160
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzig;->zzj(I)I

    move-result p0

    .line 161
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzig;->zzb(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzb(IZ)I
    .locals 0

    .line 1
    nop

    .line 2
    nop

    .line 3
    shl-int/lit8 p0, p0, 0x3

    .line 4
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzig;->zzj(I)I

    move-result p0

    .line 5
    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static zzb(Lcom/google/android/gms/internal/measurement/zzhm;)I
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhm;->zzb()I

    move-result p0

    .line 19
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzig;->zzj(I)I

    move-result v0

    add-int/2addr v0, p0

    .line 20
    return v0
.end method

.method public static zzb(Lcom/google/android/gms/internal/measurement/zzkj;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 60
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzkj;->zzbw()I

    move-result p0

    return p0
.end method

.method public static zzb(Ljava/lang/String;)I
    .locals 1

    .line 162
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzmh;->zza(Ljava/lang/CharSequence;)I

    move-result p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/measurement/zzmk; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    goto :goto_0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    sget-object v0, Lcom/google/android/gms/internal/measurement/zziz;->zza:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 166
    array-length p0, p0

    .line 167
    :goto_0
    nop

    .line 168
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzig;->zzj(I)I

    move-result v0

    add-int/2addr v0, p0

    .line 169
    return v0
.end method

.method public static zzb([B)Lcom/google/android/gms/internal/measurement/zzig;
    .locals 3

    .line 208
    array-length v0, p0

    .line 209
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzig$zza;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Lcom/google/android/gms/internal/measurement/zzig$zza;-><init>([BII)V

    .line 210
    return-object v1
.end method

.method public static zzc(IJ)I
    .locals 0

    .line 41
    nop

    .line 42
    nop

    .line 43
    shl-int/lit8 p0, p0, 0x3

    .line 44
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzig;->zzj(I)I

    move-result p0

    .line 45
    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static zzc(ILcom/google/android/gms/internal/measurement/zzhm;)I
    .locals 1

    .line 10
    nop

    .line 11
    nop

    .line 12
    shl-int/lit8 p0, p0, 0x3

    .line 13
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzig;->zzj(I)I

    move-result p0

    .line 14
    nop

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhm;->zzb()I

    move-result p1

    .line 16
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzig;->zzj(I)I

    move-result v0

    add-int/2addr v0, p1

    .line 17
    add-int/2addr p0, v0

    return p0
.end method

.method static zzc(ILcom/google/android/gms/internal/measurement/zzkj;Lcom/google/android/gms/internal/measurement/zzlb;)I
    .locals 0

    .line 110
    nop

    .line 111
    nop

    .line 112
    shl-int/lit8 p0, p0, 0x3

    .line 113
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzig;->zzj(I)I

    move-result p0

    .line 114
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/zzig;->zza(Lcom/google/android/gms/internal/measurement/zzkj;Lcom/google/android/gms/internal/measurement/zzlb;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzc(J)I
    .locals 0

    .line 46
    const/16 p0, 0x8

    return p0
.end method

.method public static zzc(Lcom/google/android/gms/internal/measurement/zzkj;)I
    .locals 1

    .line 115
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzkj;->zzbw()I

    move-result p0

    .line 116
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzig;->zzj(I)I

    move-result v0

    add-int/2addr v0, p0

    .line 117
    return v0
.end method

.method static bridge synthetic zzc()Z
    .locals 1

    sget-boolean v0, Lcom/google/android/gms/internal/measurement/zzig;->zzc:Z

    return v0
.end method

.method public static zzd(I)I
    .locals 0

    .line 34
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzig;->zzf(I)I

    move-result p0

    return p0
.end method

.method public static zzd(IJ)I
    .locals 0

    .line 69
    nop

    .line 70
    nop

    .line 71
    shl-int/lit8 p0, p0, 0x3

    .line 72
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzig;->zzj(I)I

    move-result p0

    .line 73
    nop

    .line 74
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/zzig;->zzg(J)I

    move-result p1

    .line 75
    add-int/2addr p0, p1

    return p0
.end method

.method public static zzd(ILcom/google/android/gms/internal/measurement/zzhm;)I
    .locals 2

    .line 121
    nop

    .line 122
    nop

    .line 123
    nop

    .line 124
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzig;->zzj(I)I

    move-result v0

    .line 125
    shl-int/lit8 v0, v0, 0x1

    .line 126
    const/4 v1, 0x2

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/measurement/zzig;->zzj(II)I

    move-result p0

    add-int/2addr v0, p0

    .line 127
    const/4 p0, 0x3

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/zzig;->zzc(ILcom/google/android/gms/internal/measurement/zzhm;)I

    move-result p0

    add-int/2addr v0, p0

    .line 128
    return v0
.end method

.method public static zzd(J)I
    .locals 0

    .line 76
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/zzig;->zzg(J)I

    move-result p0

    return p0
.end method

.method public static zze(I)I
    .locals 0

    .line 40
    const/4 p0, 0x4

    return p0
.end method

.method public static zze(II)I
    .locals 0

    .line 27
    nop

    .line 28
    nop

    .line 29
    shl-int/lit8 p0, p0, 0x3

    .line 30
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzig;->zzj(I)I

    move-result p0

    .line 31
    nop

    .line 32
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzig;->zzf(I)I

    move-result p1

    .line 33
    add-int/2addr p0, p1

    return p0
.end method

.method public static zze(IJ)I
    .locals 0

    .line 135
    nop

    .line 136
    nop

    .line 137
    shl-int/lit8 p0, p0, 0x3

    .line 138
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzig;->zzj(I)I

    move-result p0

    .line 139
    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static zze(J)I
    .locals 0

    .line 140
    const/16 p0, 0x8

    return p0
.end method

.method public static zzf(I)I
    .locals 0

    .line 66
    if-ltz p0, :cond_0

    .line 67
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzig;->zzj(I)I

    move-result p0

    return p0

    .line 68
    :cond_0
    const/16 p0, 0xa

    return p0
.end method

.method public static zzf(II)I
    .locals 0

    .line 35
    nop

    .line 36
    nop

    .line 37
    shl-int/lit8 p0, p0, 0x3

    .line 38
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzig;->zzj(I)I

    move-result p0

    .line 39
    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static zzf(IJ)I
    .locals 0

    .line 149
    nop

    .line 150
    nop

    .line 151
    shl-int/lit8 p0, p0, 0x3

    .line 152
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzig;->zzj(I)I

    move-result p0

    .line 153
    nop

    .line 154
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/zzig;->zzi(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/zzig;->zzg(J)I

    move-result p1

    .line 155
    add-int/2addr p0, p1

    return p0
.end method

.method public static zzf(J)I
    .locals 0

    .line 156
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/zzig;->zzi(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/zzig;->zzg(J)I

    move-result p0

    return p0
.end method

.method public static zzg(I)I
    .locals 0

    .line 134
    const/4 p0, 0x4

    return p0
.end method

.method public static zzg(II)I
    .locals 0

    .line 61
    nop

    .line 62
    nop

    .line 63
    shl-int/lit8 p0, p0, 0x3

    .line 64
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzig;->zzj(I)I

    move-result p0

    .line 65
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzig;->zzf(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzg(IJ)I
    .locals 0

    .line 187
    nop

    .line 188
    nop

    .line 189
    shl-int/lit8 p0, p0, 0x3

    .line 190
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzig;->zzj(I)I

    move-result p0

    .line 191
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/zzig;->zzg(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzg(J)I
    .locals 6

    .line 192
    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 193
    const/4 p0, 0x1

    return p0

    .line 194
    :cond_0
    cmp-long v0, p0, v2

    if-gez v0, :cond_1

    .line 195
    const/16 p0, 0xa

    return p0

    .line 196
    :cond_1
    nop

    .line 197
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 198
    nop

    .line 199
    const/16 v0, 0x1c

    ushr-long/2addr p0, v0

    const/4 v0, 0x6

    goto :goto_0

    .line 197
    :cond_2
    const/4 v0, 0x2

    .line 200
    :goto_0
    const-wide/32 v4, -0x200000

    and-long/2addr v4, p0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_3

    .line 201
    add-int/lit8 v0, v0, 0x2

    .line 202
    const/16 v1, 0xe

    ushr-long/2addr p0, v1

    .line 203
    :cond_3
    const-wide/16 v4, -0x4000

    and-long/2addr p0, v4

    cmp-long p0, p0, v2

    if-eqz p0, :cond_4

    .line 204
    add-int/lit8 v0, v0, 0x1

    .line 205
    :cond_4
    return v0
.end method

.method public static zzh(I)I
    .locals 0

    .line 148
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzig;->zzl(I)I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzig;->zzj(I)I

    move-result p0

    return p0
.end method

.method public static zzh(II)I
    .locals 0

    .line 129
    nop

    .line 130
    nop

    .line 131
    shl-int/lit8 p0, p0, 0x3

    .line 132
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzig;->zzj(I)I

    move-result p0

    .line 133
    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static zzi(I)I
    .locals 0

    .line 170
    nop

    .line 171
    shl-int/lit8 p0, p0, 0x3

    .line 172
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzig;->zzj(I)I

    move-result p0

    return p0
.end method

.method public static zzi(II)I
    .locals 0

    .line 141
    nop

    .line 142
    nop

    .line 143
    shl-int/lit8 p0, p0, 0x3

    .line 144
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzig;->zzj(I)I

    move-result p0

    .line 145
    nop

    .line 146
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzig;->zzl(I)I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzig;->zzj(I)I

    move-result p1

    .line 147
    add-int/2addr p0, p1

    return p0
.end method

.method private static zzi(J)J
    .locals 3

    .line 207
    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long/2addr p0, v2

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static zzj(I)I
    .locals 1

    .line 178
    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    .line 179
    const/4 p0, 0x1

    return p0

    .line 180
    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    .line 181
    const/4 p0, 0x2

    return p0

    .line 182
    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    .line 183
    const/4 p0, 0x3

    return p0

    .line 184
    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_3

    .line 185
    const/4 p0, 0x4

    return p0

    .line 186
    :cond_3
    const/4 p0, 0x5

    return p0
.end method

.method public static zzj(II)I
    .locals 0

    .line 173
    nop

    .line 174
    nop

    .line 175
    shl-int/lit8 p0, p0, 0x3

    .line 176
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzig;->zzj(I)I

    move-result p0

    .line 177
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzig;->zzj(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method private static zzl(I)I
    .locals 1

    .line 206
    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public abstract zza()I
.end method

.method public abstract zza(B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zza(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zza(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zza(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zza(ILcom/google/android/gms/internal/measurement/zzhm;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zza(ILcom/google/android/gms/internal/measurement/zzkj;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract zza(ILcom/google/android/gms/internal/measurement/zzkj;Lcom/google/android/gms/internal/measurement/zzlb;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zza(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zza(IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zza(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zza(Lcom/google/android/gms/internal/measurement/zzhm;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zza(Lcom/google/android/gms/internal/measurement/zzkj;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zza(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method final zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzmk;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzig;->zzb:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "com.google.protobuf.CodedOutputStream"

    const-string v3, "inefficientWriteStringNoTag"

    const-string v4, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 218
    sget-object p2, Lcom/google/android/gms/internal/measurement/zziz;->zza:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 219
    :try_start_0
    array-length p2, p1

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzig;->zzc(I)V

    .line 220
    array-length p2, p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/internal/measurement/zzhn;->zza([BII)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    return-void

    .line 222
    :catch_0
    move-exception p1

    .line 223
    new-instance p2, Lcom/google/android/gms/internal/measurement/zzig$zzb;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/measurement/zzig$zzb;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final zzb()V
    .locals 2

    .line 214
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzig;->zza()I

    move-result v0

    if-nez v0, :cond_0

    .line 216
    return-void

    .line 215
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzb(D)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 228
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzig;->zza(J)V

    .line 229
    return-void
.end method

.method public final zzb(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzig;->zza(I)V

    .line 233
    return-void
.end method

.method public abstract zzb(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final zzb(ID)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 226
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzig;->zza(IJ)V

    .line 227
    return-void
.end method

.method public final zzb(IF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzig;->zza(II)V

    .line 231
    return-void
.end method

.method public abstract zzb(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzb(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzb(ILcom/google/android/gms/internal/measurement/zzhm;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzb(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final zzb(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 224
    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzig;->zza(B)V

    .line 225
    return-void
.end method

.method abstract zzb([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzc(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzc(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzd(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final zzh(IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 238
    invoke-static {p2, p3}, Lcom/google/android/gms/internal/measurement/zzig;->zzi(J)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzig;->zzb(IJ)V

    .line 239
    return-void
.end method

.method public final zzh(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 240
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/zzig;->zzi(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzig;->zzb(J)V

    .line 241
    return-void
.end method

.method public final zzk(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 236
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzig;->zzl(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzig;->zzc(I)V

    .line 237
    return-void
.end method

.method public final zzk(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzig;->zzl(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzig;->zzd(II)V

    .line 235
    return-void
.end method
