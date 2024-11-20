.class final Lcom/google/android/gms/internal/measurement/zzhi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@21.5.0"


# direct methods
.method static zza([BI)D
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/zzhi;->zzd([BI)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0
.end method

.method static zza(I[BIILcom/google/android/gms/internal/measurement/zzhl;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzji;
        }
    .end annotation

    .line 159
    nop

    .line 160
    ushr-int/lit8 v0, p0, 0x3

    .line 161
    if-eqz v0, :cond_2

    .line 163
    nop

    .line 164
    and-int/lit8 v0, p0, 0x7

    .line 165
    packed-switch v0, :pswitch_data_0

    .line 182
    :pswitch_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zzc()Lcom/google/android/gms/internal/measurement/zzji;

    move-result-object p0

    throw p0

    .line 168
    :pswitch_1
    add-int/lit8 p2, p2, 0x4

    return p2

    .line 172
    :pswitch_2
    and-int/lit8 p0, p0, -0x8

    or-int/lit8 p0, p0, 0x4

    .line 173
    const/4 v0, 0x0

    .line 174
    :goto_0
    if-ge p2, p3, :cond_0

    .line 175
    invoke-static {p1, p2, p4}, Lcom/google/android/gms/internal/measurement/zzhi;->zzc([BILcom/google/android/gms/internal/measurement/zzhl;)I

    move-result p2

    .line 176
    iget v0, p4, Lcom/google/android/gms/internal/measurement/zzhl;->zza:I

    .line 177
    if-eq v0, p0, :cond_0

    .line 178
    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/measurement/zzhi;->zza(I[BIILcom/google/android/gms/internal/measurement/zzhl;)I

    move-result p2

    goto :goto_0

    .line 179
    :cond_0
    if-gt p2, p3, :cond_1

    if-ne v0, p0, :cond_1

    .line 181
    return p2

    .line 180
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zzg()Lcom/google/android/gms/internal/measurement/zzji;

    move-result-object p0

    throw p0

    .line 170
    :pswitch_3
    invoke-static {p1, p2, p4}, Lcom/google/android/gms/internal/measurement/zzhi;->zzc([BILcom/google/android/gms/internal/measurement/zzhl;)I

    move-result p0

    .line 171
    iget p1, p4, Lcom/google/android/gms/internal/measurement/zzhl;->zza:I

    add-int/2addr p0, p1

    return p0

    .line 169
    :pswitch_4
    add-int/lit8 p2, p2, 0x8

    return p2

    .line 166
    :pswitch_5
    invoke-static {p1, p2, p4}, Lcom/google/android/gms/internal/measurement/zzhi;->zzd([BILcom/google/android/gms/internal/measurement/zzhl;)I

    move-result p0

    .line 167
    return p0

    .line 162
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zzc()Lcom/google/android/gms/internal/measurement/zzji;

    move-result-object p0

    throw p0

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

.method static zza(I[BIILcom/google/android/gms/internal/measurement/zzjf;Lcom/google/android/gms/internal/measurement/zzhl;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/google/android/gms/internal/measurement/zzjf<",
            "*>;",
            "Lcom/google/android/gms/internal/measurement/zzhl;",
            ")I"
        }
    .end annotation

    .line 119
    check-cast p4, Lcom/google/android/gms/internal/measurement/zzja;

    .line 120
    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/measurement/zzhi;->zzc([BILcom/google/android/gms/internal/measurement/zzhl;)I

    move-result p2

    .line 121
    iget v0, p5, Lcom/google/android/gms/internal/measurement/zzhl;->zza:I

    invoke-virtual {p4, v0}, Lcom/google/android/gms/internal/measurement/zzja;->zzd(I)V

    .line 122
    :goto_0
    if-ge p2, p3, :cond_0

    .line 123
    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/measurement/zzhi;->zzc([BILcom/google/android/gms/internal/measurement/zzhl;)I

    move-result v0

    .line 124
    iget v1, p5, Lcom/google/android/gms/internal/measurement/zzhl;->zza:I

    if-ne p0, v1, :cond_0

    .line 125
    invoke-static {p1, v0, p5}, Lcom/google/android/gms/internal/measurement/zzhi;->zzc([BILcom/google/android/gms/internal/measurement/zzhl;)I

    move-result p2

    .line 126
    iget v0, p5, Lcom/google/android/gms/internal/measurement/zzhl;->zza:I

    invoke-virtual {p4, v0}, Lcom/google/android/gms/internal/measurement/zzja;->zzd(I)V

    .line 127
    goto :goto_0

    .line 128
    :cond_0
    return p2
.end method

.method static zza(I[BIILcom/google/android/gms/internal/measurement/zzlz;Lcom/google/android/gms/internal/measurement/zzhl;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzji;
        }
    .end annotation

    .line 53
    nop

    .line 54
    ushr-int/lit8 v0, p0, 0x3

    .line 55
    if-eqz v0, :cond_6

    .line 57
    nop

    .line 58
    and-int/lit8 v0, p0, 0x7

    .line 59
    packed-switch v0, :pswitch_data_0

    .line 89
    :pswitch_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zzc()Lcom/google/android/gms/internal/measurement/zzji;

    move-result-object p0

    throw p0

    .line 63
    :pswitch_1
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/zzhi;->zzc([BI)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Lcom/google/android/gms/internal/measurement/zzlz;->zza(ILjava/lang/Object;)V

    .line 64
    add-int/lit8 p2, p2, 0x4

    return p2

    .line 77
    :pswitch_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlz;->zzd()Lcom/google/android/gms/internal/measurement/zzlz;

    move-result-object v6

    .line 78
    and-int/lit8 v0, p0, -0x8

    or-int/lit8 v7, v0, 0x4

    .line 79
    const/4 v0, 0x0

    .line 80
    :goto_0
    if-ge p2, p3, :cond_1

    .line 81
    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/measurement/zzhi;->zzc([BILcom/google/android/gms/internal/measurement/zzhl;)I

    move-result v2

    .line 82
    iget p2, p5, Lcom/google/android/gms/internal/measurement/zzhl;->zza:I

    .line 83
    if-eq p2, v7, :cond_0

    .line 84
    move v0, p2

    move-object v1, p1

    move v3, p3

    move-object v4, v6

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzhi;->zza(I[BIILcom/google/android/gms/internal/measurement/zzlz;Lcom/google/android/gms/internal/measurement/zzhl;)I

    move-result v0

    move v8, v0

    move v0, p2

    move p2, v8

    goto :goto_0

    .line 83
    :cond_0
    move v0, p2

    move p2, v2

    .line 85
    :cond_1
    if-gt p2, p3, :cond_2

    if-ne v0, v7, :cond_2

    .line 87
    invoke-virtual {p4, p0, v6}, Lcom/google/android/gms/internal/measurement/zzlz;->zza(ILjava/lang/Object;)V

    .line 88
    return p2

    .line 86
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zzg()Lcom/google/android/gms/internal/measurement/zzji;

    move-result-object p0

    throw p0

    .line 67
    :pswitch_3
    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/measurement/zzhi;->zzc([BILcom/google/android/gms/internal/measurement/zzhl;)I

    move-result p2

    .line 68
    iget p3, p5, Lcom/google/android/gms/internal/measurement/zzhl;->zza:I

    .line 69
    if-ltz p3, :cond_5

    .line 71
    array-length p5, p1

    sub-int/2addr p5, p2

    if-gt p3, p5, :cond_4

    .line 73
    if-nez p3, :cond_3

    .line 74
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzhm;->zza:Lcom/google/android/gms/internal/measurement/zzhm;

    invoke-virtual {p4, p0, p1}, Lcom/google/android/gms/internal/measurement/zzlz;->zza(ILjava/lang/Object;)V

    goto :goto_1

    .line 75
    :cond_3
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzhm;->zza([BII)Lcom/google/android/gms/internal/measurement/zzhm;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Lcom/google/android/gms/internal/measurement/zzlz;->zza(ILjava/lang/Object;)V

    .line 76
    :goto_1
    add-int/2addr p2, p3

    return p2

    .line 72
    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zzh()Lcom/google/android/gms/internal/measurement/zzji;

    move-result-object p0

    throw p0

    .line 70
    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zzf()Lcom/google/android/gms/internal/measurement/zzji;

    move-result-object p0

    throw p0

    .line 65
    :pswitch_4
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/zzhi;->zzd([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Lcom/google/android/gms/internal/measurement/zzlz;->zza(ILjava/lang/Object;)V

    .line 66
    add-int/lit8 p2, p2, 0x8

    return p2

    .line 60
    :pswitch_5
    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/measurement/zzhi;->zzd([BILcom/google/android/gms/internal/measurement/zzhl;)I

    move-result p1

    .line 61
    iget-wide p2, p5, Lcom/google/android/gms/internal/measurement/zzhl;->zzb:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p4, p0, p2}, Lcom/google/android/gms/internal/measurement/zzlz;->zza(ILjava/lang/Object;)V

    .line 62
    return p1

    .line 56
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zzc()Lcom/google/android/gms/internal/measurement/zzji;

    move-result-object p0

    throw p0

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

.method static zza(I[BILcom/google/android/gms/internal/measurement/zzhl;)I
    .locals 1

    .line 95
    and-int/lit8 p0, p0, 0x7f

    .line 96
    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p1, p2

    .line 97
    if-ltz p2, :cond_0

    .line 98
    shl-int/lit8 p1, p2, 0x7

    or-int/2addr p0, p1

    iput p0, p3, Lcom/google/android/gms/internal/measurement/zzhl;->zza:I

    .line 99
    return v0

    .line 100
    :cond_0
    and-int/lit8 p2, p2, 0x7f

    shl-int/lit8 p2, p2, 0x7

    or-int/2addr p0, p2

    .line 101
    add-int/lit8 p2, v0, 0x1

    aget-byte v0, p1, v0

    .line 102
    if-ltz v0, :cond_1

    .line 103
    shl-int/lit8 p1, v0, 0xe

    or-int/2addr p0, p1

    iput p0, p3, Lcom/google/android/gms/internal/measurement/zzhl;->zza:I

    .line 104
    return p2

    .line 105
    :cond_1
    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0xe

    or-int/2addr p0, v0

    .line 106
    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p1, p2

    .line 107
    if-ltz p2, :cond_2

    .line 108
    shl-int/lit8 p1, p2, 0x15

    or-int/2addr p0, p1

    iput p0, p3, Lcom/google/android/gms/internal/measurement/zzhl;->zza:I

    .line 109
    return v0

    .line 110
    :cond_2
    and-int/lit8 p2, p2, 0x7f

    shl-int/lit8 p2, p2, 0x15

    or-int/2addr p0, p2

    .line 111
    add-int/lit8 p2, v0, 0x1

    aget-byte v0, p1, v0

    .line 112
    if-ltz v0, :cond_3

    .line 113
    shl-int/lit8 p1, v0, 0x1c

    or-int/2addr p0, p1

    iput p0, p3, Lcom/google/android/gms/internal/measurement/zzhl;->zza:I

    .line 114
    return p2

    .line 115
    :cond_3
    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0x1c

    or-int/2addr p0, v0

    .line 116
    :goto_0
    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p1, p2

    if-ltz p2, :cond_4

    .line 117
    iput p0, p3, Lcom/google/android/gms/internal/measurement/zzhl;->zza:I

    .line 118
    return v0

    .line 116
    :cond_4
    move p2, v0

    goto :goto_0
.end method

.method static zza(Lcom/google/android/gms/internal/measurement/zzlb;I[BIILcom/google/android/gms/internal/measurement/zzjf;Lcom/google/android/gms/internal/measurement/zzhl;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzlb<",
            "*>;I[BII",
            "Lcom/google/android/gms/internal/measurement/zzjf<",
            "*>;",
            "Lcom/google/android/gms/internal/measurement/zzhl;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    nop

    .line 26
    invoke-static {p0, p2, p3, p4, p6}, Lcom/google/android/gms/internal/measurement/zzhi;->zza(Lcom/google/android/gms/internal/measurement/zzlb;[BIILcom/google/android/gms/internal/measurement/zzhl;)I

    move-result p3

    .line 27
    iget-object v0, p6, Lcom/google/android/gms/internal/measurement/zzhl;->zzc:Ljava/lang/Object;

    invoke-interface {p5, v0}, Lcom/google/android/gms/internal/measurement/zzjf;->add(Ljava/lang/Object;)Z

    .line 28
    :goto_0
    if-ge p3, p4, :cond_0

    .line 29
    invoke-static {p2, p3, p6}, Lcom/google/android/gms/internal/measurement/zzhi;->zzc([BILcom/google/android/gms/internal/measurement/zzhl;)I

    move-result v0

    .line 30
    iget v1, p6, Lcom/google/android/gms/internal/measurement/zzhl;->zza:I

    if-ne p1, v1, :cond_0

    .line 31
    invoke-static {p0, p2, v0, p4, p6}, Lcom/google/android/gms/internal/measurement/zzhi;->zza(Lcom/google/android/gms/internal/measurement/zzlb;[BIILcom/google/android/gms/internal/measurement/zzhl;)I

    move-result p3

    .line 32
    iget-object v0, p6, Lcom/google/android/gms/internal/measurement/zzhl;->zzc:Ljava/lang/Object;

    invoke-interface {p5, v0}, Lcom/google/android/gms/internal/measurement/zzjf;->add(Ljava/lang/Object;)Z

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    return p3
.end method

.method static zza(Lcom/google/android/gms/internal/measurement/zzlb;[BIIILcom/google/android/gms/internal/measurement/zzhl;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzlb;->zza()Ljava/lang/Object;

    move-result-object v7

    .line 16
    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/zzhi;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlb;[BIIILcom/google/android/gms/internal/measurement/zzhl;)I

    move-result p1

    .line 17
    invoke-interface {p0, v7}, Lcom/google/android/gms/internal/measurement/zzlb;->zzc(Ljava/lang/Object;)V

    .line 18
    iput-object v7, p5, Lcom/google/android/gms/internal/measurement/zzhl;->zzc:Ljava/lang/Object;

    .line 19
    return p1
.end method

.method static zza(Lcom/google/android/gms/internal/measurement/zzlb;[BIILcom/google/android/gms/internal/measurement/zzhl;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzlb;->zza()Ljava/lang/Object;

    move-result-object v6

    .line 21
    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzhi;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlb;[BIILcom/google/android/gms/internal/measurement/zzhl;)I

    move-result p1

    .line 22
    invoke-interface {p0, v6}, Lcom/google/android/gms/internal/measurement/zzlb;->zzc(Ljava/lang/Object;)V

    .line 23
    iput-object v6, p4, Lcom/google/android/gms/internal/measurement/zzhl;->zzc:Ljava/lang/Object;

    .line 24
    return p1
.end method

.method static zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlb;[BIIILcom/google/android/gms/internal/measurement/zzhl;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzkn;

    .line 146
    nop

    .line 147
    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/zzkn;->zza(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/measurement/zzhl;)I

    move-result p1

    .line 148
    iput-object p0, p6, Lcom/google/android/gms/internal/measurement/zzhl;->zzc:Ljava/lang/Object;

    .line 149
    return p1
.end method

.method static zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlb;[BIILcom/google/android/gms/internal/measurement/zzhl;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    add-int/lit8 v0, p3, 0x1

    aget-byte p3, p2, p3

    .line 151
    if-gez p3, :cond_0

    .line 152
    invoke-static {p3, p2, v0, p5}, Lcom/google/android/gms/internal/measurement/zzhi;->zza(I[BILcom/google/android/gms/internal/measurement/zzhl;)I

    move-result v0

    .line 153
    iget p3, p5, Lcom/google/android/gms/internal/measurement/zzhl;->zza:I

    move v3, v0

    goto :goto_0

    .line 151
    :cond_0
    move v3, v0

    .line 154
    :goto_0
    if-ltz p3, :cond_1

    sub-int/2addr p4, v3

    if-gt p3, p4, :cond_1

    .line 156
    add-int/2addr p3, v3

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move v4, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzlb;->zza(Ljava/lang/Object;[BIILcom/google/android/gms/internal/measurement/zzhl;)V

    .line 157
    iput-object p0, p5, Lcom/google/android/gms/internal/measurement/zzhl;->zzc:Ljava/lang/Object;

    .line 158
    return p3

    .line 155
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zzh()Lcom/google/android/gms/internal/measurement/zzji;

    move-result-object p0

    throw p0
.end method

.method static zza([BILcom/google/android/gms/internal/measurement/zzhl;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzji;
        }
    .end annotation

    .line 3
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzhi;->zzc([BILcom/google/android/gms/internal/measurement/zzhl;)I

    move-result p1

    .line 4
    iget v0, p2, Lcom/google/android/gms/internal/measurement/zzhl;->zza:I

    .line 5
    if-ltz v0, :cond_2

    .line 7
    array-length v1, p0

    sub-int/2addr v1, p1

    if-gt v0, v1, :cond_1

    .line 9
    if-nez v0, :cond_0

    .line 10
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzhm;->zza:Lcom/google/android/gms/internal/measurement/zzhm;

    iput-object p0, p2, Lcom/google/android/gms/internal/measurement/zzhl;->zzc:Ljava/lang/Object;

    .line 11
    return p1

    .line 12
    :cond_0
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzhm;->zza([BII)Lcom/google/android/gms/internal/measurement/zzhm;

    move-result-object p0

    iput-object p0, p2, Lcom/google/android/gms/internal/measurement/zzhl;->zzc:Ljava/lang/Object;

    .line 13
    add-int/2addr p1, v0

    return p1

    .line 8
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zzh()Lcom/google/android/gms/internal/measurement/zzji;

    move-result-object p0

    throw p0

    .line 6
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zzf()Lcom/google/android/gms/internal/measurement/zzji;

    move-result-object p0

    throw p0
.end method

.method static zza([BILcom/google/android/gms/internal/measurement/zzjf;Lcom/google/android/gms/internal/measurement/zzhl;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/google/android/gms/internal/measurement/zzjf<",
            "*>;",
            "Lcom/google/android/gms/internal/measurement/zzhl;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    check-cast p2, Lcom/google/android/gms/internal/measurement/zzja;

    .line 36
    invoke-static {p0, p1, p3}, Lcom/google/android/gms/internal/measurement/zzhi;->zzc([BILcom/google/android/gms/internal/measurement/zzhl;)I

    move-result p1

    .line 37
    iget v0, p3, Lcom/google/android/gms/internal/measurement/zzhl;->zza:I

    add-int/2addr v0, p1

    .line 38
    :goto_0
    if-ge p1, v0, :cond_0

    .line 39
    invoke-static {p0, p1, p3}, Lcom/google/android/gms/internal/measurement/zzhi;->zzc([BILcom/google/android/gms/internal/measurement/zzhl;)I

    move-result p1

    .line 40
    iget v1, p3, Lcom/google/android/gms/internal/measurement/zzhl;->zza:I

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/measurement/zzja;->zzd(I)V

    goto :goto_0

    .line 41
    :cond_0
    if-ne p1, v0, :cond_1

    .line 43
    return p1

    .line 42
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zzh()Lcom/google/android/gms/internal/measurement/zzji;

    move-result-object p0

    throw p0
.end method

.method static zzb([BI)F
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/zzhi;->zzc([BI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method static zzb([BILcom/google/android/gms/internal/measurement/zzhl;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzji;
        }
    .end annotation

    .line 44
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzhi;->zzc([BILcom/google/android/gms/internal/measurement/zzhl;)I

    move-result p1

    .line 45
    iget v0, p2, Lcom/google/android/gms/internal/measurement/zzhl;->zza:I

    .line 46
    if-ltz v0, :cond_1

    .line 48
    if-nez v0, :cond_0

    .line 49
    const-string p0, ""

    iput-object p0, p2, Lcom/google/android/gms/internal/measurement/zzhl;->zzc:Ljava/lang/Object;

    .line 50
    return p1

    .line 51
    :cond_0
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzmh;->zzb([BII)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p2, Lcom/google/android/gms/internal/measurement/zzhl;->zzc:Ljava/lang/Object;

    .line 52
    add-int/2addr p1, v0

    return p1

    .line 47
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zzf()Lcom/google/android/gms/internal/measurement/zzji;

    move-result-object p0

    throw p0
.end method

.method static zzc([BI)I
    .locals 2

    .line 14
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method static zzc([BILcom/google/android/gms/internal/measurement/zzhl;)I
    .locals 1

    .line 90
    add-int/lit8 v0, p1, 0x1

    aget-byte p1, p0, p1

    .line 91
    if-ltz p1, :cond_0

    .line 92
    iput p1, p2, Lcom/google/android/gms/internal/measurement/zzhl;->zza:I

    .line 93
    return v0

    .line 94
    :cond_0
    invoke-static {p1, p0, v0, p2}, Lcom/google/android/gms/internal/measurement/zzhi;->zza(I[BILcom/google/android/gms/internal/measurement/zzhl;)I

    move-result p0

    return p0
.end method

.method static zzd([BILcom/google/android/gms/internal/measurement/zzhl;)I
    .locals 9

    .line 129
    add-int/lit8 v0, p1, 0x1

    aget-byte p1, p0, p1

    int-to-long v1, p1

    .line 130
    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-ltz p1, :cond_0

    .line 131
    iput-wide v1, p2, Lcom/google/android/gms/internal/measurement/zzhl;->zzb:J

    .line 132
    return v0

    .line 133
    :cond_0
    nop

    .line 134
    const-wide/16 v3, 0x7f

    and-long/2addr v1, v3

    .line 135
    add-int/lit8 p1, v0, 0x1

    aget-byte v0, p0, v0

    .line 136
    nop

    .line 137
    and-int/lit8 v3, v0, 0x7f

    int-to-long v3, v3

    const/4 v5, 0x7

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    move v3, v5

    .line 138
    :goto_0
    if-gez v0, :cond_1

    .line 139
    add-int/lit8 v0, p1, 0x1

    aget-byte p1, p0, p1

    .line 140
    add-int/2addr v3, v5

    .line 141
    and-int/lit8 v4, p1, 0x7f

    int-to-long v6, v4

    shl-long/2addr v6, v3

    or-long/2addr v1, v6

    move v8, v0

    move v0, p1

    move p1, v8

    goto :goto_0

    .line 142
    :cond_1
    iput-wide v1, p2, Lcom/google/android/gms/internal/measurement/zzhl;->zzb:J

    .line 143
    nop

    .line 144
    return p1
.end method

.method static zzd([BI)J
    .locals 7

    .line 183
    aget-byte v0, p0, p1

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x4

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x5

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x6

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 p1, p1, 0x7

    aget-byte p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    const/16 v2, 0x38

    shl-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method
