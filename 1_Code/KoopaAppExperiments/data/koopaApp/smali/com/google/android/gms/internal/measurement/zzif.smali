.class final Lcom/google/android/gms/internal/measurement/zzif;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzlc;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/measurement/zzib;

.field private zzb:I

.field private zzc:I

.field private zzd:I


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/measurement/zzib;)V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzd:I

    .line 78
    const-string v0, "input"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/zziz;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzib;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 79
    iput-object p0, p1, Lcom/google/android/gms/internal/measurement/zzib;->zzc:Lcom/google/android/gms/internal/measurement/zzif;

    .line 80
    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/measurement/zzib;)Lcom/google/android/gms/internal/measurement/zzif;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzib;->zzc:Lcom/google/android/gms/internal/measurement/zzif;

    if-eqz v0, :cond_0

    .line 40
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzib;->zzc:Lcom/google/android/gms/internal/measurement/zzif;

    return-object p0

    .line 41
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzif;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzif;-><init>(Lcom/google/android/gms/internal/measurement/zzib;)V

    return-object v0
.end method

.method private final zza(Lcom/google/android/gms/internal/measurement/zzlb;Lcom/google/android/gms/internal/measurement/zzik;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/measurement/zzlb<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/zzik;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zzlb;->zza()Ljava/lang/Object;

    move-result-object v0

    .line 65
    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzif;->zzc(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlb;Lcom/google/android/gms/internal/measurement/zzik;)V

    .line 66
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/measurement/zzlb;->zzc(Ljava/lang/Object;)V

    .line 67
    return-object v0
.end method

.method private final zza(Lcom/google/android/gms/internal/measurement/zzmn;Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzik;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzmn;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/android/gms/internal/measurement/zzik;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzie;->zza:[I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzmn;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 63
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unsupported field type."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 62
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzif;->zzo()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 61
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzif;->zzj()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 60
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzif;->zzr()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 59
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzif;->zzn()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 58
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzif;->zzi()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 57
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzif;->zzm()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 56
    :pswitch_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzif;->zzh()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 52
    :pswitch_7
    nop

    .line 53
    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzif;->zzb(I)V

    .line 54
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkx;->zza()Lcom/google/android/gms/internal/measurement/zzkx;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzkx;->zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzlb;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/measurement/zzif;->zzb(Lcom/google/android/gms/internal/measurement/zzlb;Lcom/google/android/gms/internal/measurement/zzik;)Ljava/lang/Object;

    move-result-object p1

    .line 55
    return-object p1

    .line 51
    :pswitch_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzif;->zzl()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 50
    :pswitch_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzif;->zzg()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 49
    :pswitch_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzif;->zzb()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 48
    :pswitch_b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzif;->zzk()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 47
    :pswitch_c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzif;->zzf()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 46
    :pswitch_d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzif;->zze()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 45
    :pswitch_e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzif;->zza()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 44
    :pswitch_f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzif;->zzp()Lcom/google/android/gms/internal/measurement/zzhm;

    move-result-object p1

    return-object p1

    .line 43
    :pswitch_10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzif;->zzs()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final zza(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 732
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 734
    return-void

    .line 733
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zzh()Lcom/google/android/gms/internal/measurement/zzji;

    move-result-object p1

    throw p1
.end method

.method private final zza(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 632
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    .line 633
    and-int/lit8 v0, v0, 0x7

    .line 634
    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 636
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzjp;

    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    .line 637
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzjp;

    .line 638
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzif;->zzp()Lcom/google/android/gms/internal/measurement/zzhm;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/zzjp;->zza(Lcom/google/android/gms/internal/measurement/zzhm;)V

    .line 639
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzt()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 640
    return-void

    .line 641
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzi()I

    move-result p1

    .line 642
    iget p2, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    if-eq p1, p2, :cond_1

    .line 643
    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzd:I

    .line 644
    return-void

    .line 645
    :cond_1
    goto :goto_0

    .line 646
    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzif;->zzr()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzif;->zzq()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 647
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzt()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 648
    return-void

    .line 649
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzi()I

    move-result v0

    .line 650
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    if-eq v0, v1, :cond_5

    .line 651
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzd:I

    .line 652
    return-void

    .line 653
    :cond_5
    goto :goto_1

    .line 635
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zza()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object p1

    throw p1
.end method

.method private final zzb(Lcom/google/android/gms/internal/measurement/zzlb;Lcom/google/android/gms/internal/measurement/zzik;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/measurement/zzlb<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/zzik;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zzlb;->zza()Ljava/lang/Object;

    move-result-object v0

    .line 69
    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzif;->zzd(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlb;Lcom/google/android/gms/internal/measurement/zzik;)V

    .line 70
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/measurement/zzlb;->zzc(Ljava/lang/Object;)V

    .line 71
    return-object v0
.end method

.method private final zzb(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 735
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    .line 736
    and-int/lit8 v0, v0, 0x7

    .line 737
    if-ne v0, p1, :cond_0

    .line 739
    return-void

    .line 738
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zza()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object p1

    throw p1
.end method

.method private static zzc(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 740
    and-int/lit8 p0, p0, 0x3

    if-nez p0, :cond_0

    .line 742
    return-void

    .line 741
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zzg()Lcom/google/android/gms/internal/measurement/zzji;

    move-result-object p0

    throw p0
.end method

.method private final zzc(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlb;Lcom/google/android/gms/internal/measurement/zzik;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/android/gms/internal/measurement/zzlb<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/zzik;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzc:I

    .line 85
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    .line 86
    ushr-int/lit8 v1, v1, 0x3

    .line 87
    shl-int/lit8 v1, v1, 0x3

    or-int/lit8 v1, v1, 0x4

    .line 88
    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzc:I

    .line 89
    :try_start_0
    invoke-interface {p2, p1, p0, p3}, Lcom/google/android/gms/internal/measurement/zzlb;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlc;Lcom/google/android/gms/internal/measurement/zzik;)V

    .line 90
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    iget p2, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzc:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, p2, :cond_0

    .line 92
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzc:I

    .line 93
    return-void

    .line 91
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zzg()Lcom/google/android/gms/internal/measurement/zzji;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    :catchall_0
    move-exception p1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzc:I

    .line 95
    throw p1
.end method

.method private static zzd(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 743
    and-int/lit8 p0, p0, 0x7

    if-nez p0, :cond_0

    .line 745
    return-void

    .line 744
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zzg()Lcom/google/android/gms/internal/measurement/zzji;

    move-result-object p0

    throw p0
.end method

.method private final zzd(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlb;Lcom/google/android/gms/internal/measurement/zzik;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/android/gms/internal/measurement/zzlb<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/zzik;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzj()I

    move-result v0

    .line 100
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    iget v1, v1, Lcom/google/android/gms/internal/measurement/zzib;->zza:I

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    iget v2, v2, Lcom/google/android/gms/internal/measurement/zzib;->zzb:I

    if-ge v1, v2, :cond_0

    .line 103
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/zzib;->zza(I)I

    move-result v0

    .line 104
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    iget v2, v1, Lcom/google/android/gms/internal/measurement/zzib;->zza:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/google/android/gms/internal/measurement/zzib;->zza:I

    .line 105
    invoke-interface {p2, p1, p0, p3}, Lcom/google/android/gms/internal/measurement/zzlb;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlc;Lcom/google/android/gms/internal/measurement/zzik;)V

    .line 106
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzib;->zzb(I)V

    .line 107
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    iget p2, p1, Lcom/google/android/gms/internal/measurement/zzib;->zza:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Lcom/google/android/gms/internal/measurement/zzib;->zza:I

    .line 108
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzc(I)V

    .line 109
    return-void

    .line 101
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzji;

    const-string p2, "Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit."

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzji;-><init>(Ljava/lang/String;)V

    .line 102
    throw p1
.end method


# virtual methods
.method public final zza()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzif;->zzb(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zza()D

    move-result-wide v0

    return-wide v0
.end method

.method public final zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlb;Lcom/google/android/gms/internal/measurement/zzik;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/android/gms/internal/measurement/zzlb<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/zzik;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzif;->zzb(I)V

    .line 82
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzif;->zzc(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlb;Lcom/google/android/gms/internal/measurement/zzik;)V

    .line 83
    return-void
.end method

.method public final zza(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzhk;

    if-eqz v0, :cond_3

    .line 111
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzhk;

    .line 112
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    .line 113
    and-int/lit8 v0, v0, 0x7

    .line 114
    packed-switch v0, :pswitch_data_0

    .line 129
    :pswitch_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zza()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object p1

    throw p1

    .line 115
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzj()I

    move-result v0

    .line 116
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzu()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzhk;->zza(Z)V

    .line 118
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 119
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzif;->zza(I)V

    .line 120
    return-void

    .line 121
    :goto_0
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzu()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzhk;->zza(Z)V

    .line 122
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzt()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    return-void

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzi()I

    move-result v0

    .line 125
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    if-eq v0, v1, :cond_2

    .line 126
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzd:I

    .line 127
    return-void

    .line 128
    :cond_2
    goto :goto_0

    .line 130
    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    .line 131
    and-int/lit8 v0, v0, 0x7

    .line 132
    packed-switch v0, :pswitch_data_1

    .line 147
    :pswitch_3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zza()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object p1

    throw p1

    .line 133
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzj()I

    move-result v0

    .line 134
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    .line 135
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzu()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v0

    if-lt v0, v1, :cond_4

    .line 137
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzif;->zza(I)V

    .line 138
    return-void

    .line 139
    :goto_1
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzu()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzt()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 141
    return-void

    .line 142
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzi()I

    move-result v0

    .line 143
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    if-eq v0, v1, :cond_6

    .line 144
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzd:I

    .line 145
    return-void

    .line 146
    :cond_6
    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final zza(Ljava/util/List;Lcom/google/android/gms/internal/measurement/zzlb;Lcom/google/android/gms/internal/measurement/zzik;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/zzlb<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/zzik;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 350
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    .line 351
    and-int/lit8 v1, v0, 0x7

    .line 352
    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 354
    nop

    .line 355
    :goto_0
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/zzif;->zza(Lcom/google/android/gms/internal/measurement/zzlb;Lcom/google/android/gms/internal/measurement/zzik;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzib;->zzt()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzd:I

    if-eqz v1, :cond_0

    goto :goto_1

    .line 358
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzib;->zzi()I

    move-result v1

    .line 359
    if-eq v1, v0, :cond_1

    .line 360
    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzd:I

    .line 361
    return-void

    .line 362
    :cond_1
    goto :goto_0

    .line 357
    :cond_2
    :goto_1
    return-void

    .line 353
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zza()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object p1

    throw p1
.end method

.method public final zza(Ljava/util/Map;Lcom/google/android/gms/internal/measurement/zzke;Lcom/google/android/gms/internal/measurement/zzik;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/google/android/gms/internal/measurement/zzke<",
            "TK;TV;>;",
            "Lcom/google/android/gms/internal/measurement/zzik;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 439
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzif;->zzb(I)V

    .line 440
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzj()I

    move-result v0

    .line 441
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/zzib;->zza(I)I

    move-result v0

    .line 442
    iget-object v1, p2, Lcom/google/android/gms/internal/measurement/zzke;->zzb:Ljava/lang/Object;

    .line 443
    iget-object v2, p2, Lcom/google/android/gms/internal/measurement/zzke;->zzd:Ljava/lang/Object;

    .line 444
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzif;->zzc()I

    move-result v3

    .line 445
    const v4, 0x7fffffff

    if-eq v3, v4, :cond_2

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzib;->zzt()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_2

    .line 446
    const-string v4, "Unable to parse map entry."

    packed-switch v3, :pswitch_data_0

    .line 453
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzif;->zzt()Z

    move-result v3

    goto :goto_1

    .line 449
    :pswitch_0
    iget-object v3, p2, Lcom/google/android/gms/internal/measurement/zzke;->zzc:Lcom/google/android/gms/internal/measurement/zzmn;

    iget-object v5, p2, Lcom/google/android/gms/internal/measurement/zzke;->zzd:Ljava/lang/Object;

    .line 450
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 451
    invoke-direct {p0, v3, v5, p3}, Lcom/google/android/gms/internal/measurement/zzif;->zza(Lcom/google/android/gms/internal/measurement/zzmn;Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzik;)Ljava/lang/Object;

    move-result-object v2

    .line 452
    goto :goto_0

    .line 447
    :pswitch_1
    iget-object v3, p2, Lcom/google/android/gms/internal/measurement/zzke;->zza:Lcom/google/android/gms/internal/measurement/zzmn;

    const/4 v5, 0x0

    invoke-direct {p0, v3, v5, v5}, Lcom/google/android/gms/internal/measurement/zzif;->zza(Lcom/google/android/gms/internal/measurement/zzmn;Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzik;)Ljava/lang/Object;

    move-result-object v1

    .line 448
    goto :goto_0

    .line 456
    :catch_0
    move-exception v3

    goto :goto_2

    .line 453
    :goto_1
    if-eqz v3, :cond_0

    .line 455
    goto :goto_0

    .line 454
    :cond_0
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzji;

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/measurement/zzji;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Lcom/google/android/gms/internal/measurement/zzjh; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 457
    :goto_2
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzif;->zzt()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 459
    goto :goto_0

    .line 458
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzji;

    invoke-direct {p1, v4}, Lcom/google/android/gms/internal/measurement/zzji;-><init>(Ljava/lang/String;)V

    throw p1

    .line 460
    :cond_2
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 461
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzc(I)V

    .line 462
    return-void

    .line 463
    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzc(I)V

    .line 464
    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzb()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzif;->zzb(I)V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzb()F

    move-result v0

    return v0
.end method

.method public final zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlb;Lcom/google/android/gms/internal/measurement/zzik;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/android/gms/internal/measurement/zzlb<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/zzik;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzif;->zzb(I)V

    .line 97
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzif;->zzd(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlb;Lcom/google/android/gms/internal/measurement/zzik;)V

    .line 98
    return-void
.end method

.method public final zzb(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzhm;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    .line 149
    and-int/lit8 v0, v0, 0x7

    .line 150
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 152
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzif;->zzp()Lcom/google/android/gms/internal/measurement/zzhm;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzi()I

    move-result v0

    .line 156
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    if-eq v0, v1, :cond_1

    .line 157
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzd:I

    .line 158
    return-void

    .line 159
    :cond_1
    goto :goto_0

    .line 151
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zza()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object p1

    throw p1
.end method

.method public final zzb(Ljava/util/List;Lcom/google/android/gms/internal/measurement/zzlb;Lcom/google/android/gms/internal/measurement/zzik;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/zzlb<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/zzik;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 465
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    .line 466
    and-int/lit8 v1, v0, 0x7

    .line 467
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 469
    nop

    .line 470
    :goto_0
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/zzif;->zzb(Lcom/google/android/gms/internal/measurement/zzlb;Lcom/google/android/gms/internal/measurement/zzik;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 471
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzib;->zzt()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzd:I

    if-eqz v1, :cond_0

    goto :goto_1

    .line 473
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzib;->zzi()I

    move-result v1

    .line 474
    if-eq v1, v0, :cond_1

    .line 475
    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzd:I

    .line 476
    return-void

    .line 477
    :cond_1
    goto :goto_0

    .line 472
    :cond_2
    :goto_1
    return-void

    .line 468
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zza()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object p1

    throw p1
.end method

.method public final zzc()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzd:I

    if-eqz v0, :cond_0

    .line 6
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    .line 7
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzd:I

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzi()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    .line 9
    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzc:I

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 11
    :cond_1
    nop

    .line 12
    ushr-int/lit8 v0, v0, 0x3

    .line 13
    return v0

    .line 10
    :cond_2
    :goto_1
    const v0, 0x7fffffff

    return v0
.end method

.method public final zzc(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzii;

    if-eqz v0, :cond_3

    .line 161
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzii;

    .line 162
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    .line 163
    and-int/lit8 v0, v0, 0x7

    .line 164
    packed-switch v0, :pswitch_data_0

    .line 179
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zza()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object p1

    throw p1

    .line 165
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzj()I

    move-result v0

    .line 166
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzif;->zzd(I)V

    .line 167
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zza()D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzii;->zza(D)V

    .line 169
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 170
    return-void

    .line 171
    :goto_0
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zza()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzii;->zza(D)V

    .line 172
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzt()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    return-void

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzi()I

    move-result v0

    .line 175
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    if-eq v0, v1, :cond_2

    .line 176
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzd:I

    .line 177
    return-void

    .line 178
    :cond_2
    goto :goto_0

    .line 180
    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    .line 181
    and-int/lit8 v0, v0, 0x7

    .line 182
    packed-switch v0, :pswitch_data_1

    .line 197
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zza()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object p1

    throw p1

    .line 183
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzj()I

    move-result v0

    .line 184
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzif;->zzd(I)V

    .line 185
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    .line 186
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zza()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v0

    if-lt v0, v1, :cond_4

    .line 188
    return-void

    .line 189
    :goto_1
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zza()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzt()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 191
    return-void

    .line 192
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzi()I

    move-result v0

    .line 193
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    if-eq v0, v1, :cond_6

    .line 194
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzd:I

    .line 195
    return-void

    .line 196
    :cond_6
    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public final zzd()I
    .locals 1

    .line 14
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    return v0
.end method

.method public final zzd(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzja;

    if-eqz v0, :cond_3

    .line 199
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzja;

    .line 200
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    .line 201
    and-int/lit8 v0, v0, 0x7

    .line 202
    packed-switch v0, :pswitch_data_0

    .line 217
    :pswitch_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zza()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object p1

    throw p1

    .line 203
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzj()I

    move-result v0

    .line 204
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzd()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzja;->zzd(I)V

    .line 206
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 207
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzif;->zza(I)V

    .line 208
    return-void

    .line 209
    :goto_0
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzd()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzja;->zzd(I)V

    .line 210
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzt()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    return-void

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzi()I

    move-result v0

    .line 213
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    if-eq v0, v1, :cond_2

    .line 214
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzd:I

    .line 215
    return-void

    .line 216
    :cond_2
    goto :goto_0

    .line 218
    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    .line 219
    and-int/lit8 v0, v0, 0x7

    .line 220
    packed-switch v0, :pswitch_data_1

    .line 235
    :pswitch_3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zza()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object p1

    throw p1

    .line 221
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzj()I

    move-result v0

    .line 222
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    .line 223
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzd()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v0

    if-lt v0, v1, :cond_4

    .line 225
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzif;->zza(I)V

    .line 226
    return-void

    .line 227
    :goto_1
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzd()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzt()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 229
    return-void

    .line 230
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzi()I

    move-result v0

    .line 231
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    if-eq v0, v1, :cond_6

    .line 232
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzd:I

    .line 233
    return-void

    .line 234
    :cond_6
    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final zze()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzif;->zzb(I)V

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzd()I

    move-result v0

    return v0
.end method

.method public final zze(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 236
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzja;

    if-eqz v0, :cond_3

    .line 237
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzja;

    .line 238
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    .line 239
    and-int/lit8 v0, v0, 0x7

    .line 240
    sparse-switch v0, :sswitch_data_0

    .line 255
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zza()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object p1

    throw p1

    .line 247
    :goto_0
    :sswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zze()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzja;->zzd(I)V

    .line 248
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    return-void

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzi()I

    move-result v0

    .line 251
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    if-eq v0, v1, :cond_1

    .line 252
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzd:I

    .line 253
    return-void

    .line 254
    :cond_1
    goto :goto_0

    .line 241
    :sswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzj()I

    move-result v0

    .line 242
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzif;->zzc(I)V

    .line 243
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    .line 244
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zze()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzja;->zzd(I)V

    .line 245
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v0

    if-lt v0, v1, :cond_2

    .line 246
    return-void

    .line 256
    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    .line 257
    and-int/lit8 v0, v0, 0x7

    .line 258
    sparse-switch v0, :sswitch_data_1

    .line 273
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zza()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object p1

    throw p1

    .line 265
    :goto_1
    :sswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zze()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzt()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 267
    return-void

    .line 268
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzi()I

    move-result v0

    .line 269
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    if-eq v0, v1, :cond_5

    .line 270
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzd:I

    .line 271
    return-void

    .line 272
    :cond_5
    goto :goto_1

    .line 259
    :sswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzj()I

    move-result v0

    .line 260
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzif;->zzc(I)V

    .line 261
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    .line 262
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zze()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v0

    if-lt v0, v1, :cond_6

    .line 264
    return-void

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x2 -> :sswitch_3
        0x5 -> :sswitch_2
    .end sparse-switch
.end method

.method public final zzf()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzif;->zzb(I)V

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zze()I

    move-result v0

    return v0
.end method

.method public final zzf(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 274
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzjy;

    if-eqz v0, :cond_3

    .line 275
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzjy;

    .line 276
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    .line 277
    and-int/lit8 v0, v0, 0x7

    .line 278
    packed-switch v0, :pswitch_data_0

    .line 293
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zza()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object p1

    throw p1

    .line 279
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzj()I

    move-result v0

    .line 280
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzif;->zzd(I)V

    .line 281
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzk()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzjy;->zza(J)V

    .line 283
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 284
    return-void

    .line 285
    :goto_0
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzk()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzjy;->zza(J)V

    .line 286
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzt()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 287
    return-void

    .line 288
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzi()I

    move-result v0

    .line 289
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    if-eq v0, v1, :cond_2

    .line 290
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzd:I

    .line 291
    return-void

    .line 292
    :cond_2
    goto :goto_0

    .line 294
    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    .line 295
    and-int/lit8 v0, v0, 0x7

    .line 296
    packed-switch v0, :pswitch_data_1

    .line 311
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zza()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object p1

    throw p1

    .line 297
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzj()I

    move-result v0

    .line 298
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzif;->zzd(I)V

    .line 299
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    .line 300
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzk()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v0

    if-lt v0, v1, :cond_4

    .line 302
    return-void

    .line 303
    :goto_1
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzk()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzt()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 305
    return-void

    .line 306
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzi()I

    move-result v0

    .line 307
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    if-eq v0, v1, :cond_6

    .line 308
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzd:I

    .line 309
    return-void

    .line 310
    :cond_6
    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public final zzg()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzif;->zzb(I)V

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzf()I

    move-result v0

    return v0
.end method

.method public final zzg(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 312
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zziw;

    if-eqz v0, :cond_3

    .line 313
    check-cast p1, Lcom/google/android/gms/internal/measurement/zziw;

    .line 314
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    .line 315
    and-int/lit8 v0, v0, 0x7

    .line 316
    sparse-switch v0, :sswitch_data_0

    .line 331
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zza()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object p1

    throw p1

    .line 323
    :goto_0
    :sswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzb()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zziw;->zza(F)V

    .line 324
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    return-void

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzi()I

    move-result v0

    .line 327
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    if-eq v0, v1, :cond_1

    .line 328
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzd:I

    .line 329
    return-void

    .line 330
    :cond_1
    goto :goto_0

    .line 317
    :sswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzj()I

    move-result v0

    .line 318
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzif;->zzc(I)V

    .line 319
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    .line 320
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzb()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zziw;->zza(F)V

    .line 321
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v0

    if-lt v0, v1, :cond_2

    .line 322
    return-void

    .line 332
    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    .line 333
    and-int/lit8 v0, v0, 0x7

    .line 334
    sparse-switch v0, :sswitch_data_1

    .line 349
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zza()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object p1

    throw p1

    .line 341
    :goto_1
    :sswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzb()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzt()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 343
    return-void

    .line 344
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzi()I

    move-result v0

    .line 345
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    if-eq v0, v1, :cond_5

    .line 346
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzd:I

    .line 347
    return-void

    .line 348
    :cond_5
    goto :goto_1

    .line 335
    :sswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzj()I

    move-result v0

    .line 336
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzif;->zzc(I)V

    .line 337
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    .line 338
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzb()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v0

    if-lt v0, v1, :cond_6

    .line 340
    return-void

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x2 -> :sswitch_3
        0x5 -> :sswitch_2
    .end sparse-switch
.end method

.method public final zzh()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzif;->zzb(I)V

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzg()I

    move-result v0

    return v0
.end method

.method public final zzh(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 363
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzja;

    if-eqz v0, :cond_3

    .line 364
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzja;

    .line 365
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    .line 366
    and-int/lit8 v0, v0, 0x7

    .line 367
    packed-switch v0, :pswitch_data_0

    .line 382
    :pswitch_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zza()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object p1

    throw p1

    .line 368
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzj()I

    move-result v0

    .line 369
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzf()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzja;->zzd(I)V

    .line 371
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 372
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzif;->zza(I)V

    .line 373
    return-void

    .line 374
    :goto_0
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzf()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzja;->zzd(I)V

    .line 375
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzt()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 376
    return-void

    .line 377
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzi()I

    move-result v0

    .line 378
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    if-eq v0, v1, :cond_2

    .line 379
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzd:I

    .line 380
    return-void

    .line 381
    :cond_2
    goto :goto_0

    .line 383
    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    .line 384
    and-int/lit8 v0, v0, 0x7

    .line 385
    packed-switch v0, :pswitch_data_1

    .line 400
    :pswitch_3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zza()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object p1

    throw p1

    .line 386
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzj()I

    move-result v0

    .line 387
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    .line 388
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzf()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v0

    if-lt v0, v1, :cond_4

    .line 390
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzif;->zza(I)V

    .line 391
    return-void

    .line 392
    :goto_1
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzf()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 393
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzt()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 394
    return-void

    .line 395
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzi()I

    move-result v0

    .line 396
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    if-eq v0, v1, :cond_6

    .line 397
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzd:I

    .line 398
    return-void

    .line 399
    :cond_6
    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final zzi()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzif;->zzb(I)V

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzh()I

    move-result v0

    return v0
.end method

.method public final zzi(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 401
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzjy;

    if-eqz v0, :cond_3

    .line 402
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzjy;

    .line 403
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    .line 404
    and-int/lit8 v0, v0, 0x7

    .line 405
    packed-switch v0, :pswitch_data_0

    .line 420
    :pswitch_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zza()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object p1

    throw p1

    .line 406
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzj()I

    move-result v0

    .line 407
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzl()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzjy;->zza(J)V

    .line 409
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 410
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzif;->zza(I)V

    .line 411
    return-void

    .line 412
    :goto_0
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzl()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzjy;->zza(J)V

    .line 413
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzt()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 414
    return-void

    .line 415
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzi()I

    move-result v0

    .line 416
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    if-eq v0, v1, :cond_2

    .line 417
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzd:I

    .line 418
    return-void

    .line 419
    :cond_2
    goto :goto_0

    .line 421
    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    .line 422
    and-int/lit8 v0, v0, 0x7

    .line 423
    packed-switch v0, :pswitch_data_1

    .line 438
    :pswitch_3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zza()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object p1

    throw p1

    .line 424
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzj()I

    move-result v0

    .line 425
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    .line 426
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzl()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v0

    if-lt v0, v1, :cond_4

    .line 428
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzif;->zza(I)V

    .line 429
    return-void

    .line 430
    :goto_1
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzl()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzt()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 432
    return-void

    .line 433
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzi()I

    move-result v0

    .line 434
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    if-eq v0, v1, :cond_6

    .line 435
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzd:I

    .line 436
    return-void

    .line 437
    :cond_6
    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final zzj()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzif;->zzb(I)V

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzj()I

    move-result v0

    return v0
.end method

.method public final zzj(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 478
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzja;

    if-eqz v0, :cond_3

    .line 479
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzja;

    .line 480
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    .line 481
    and-int/lit8 v0, v0, 0x7

    .line 482
    sparse-switch v0, :sswitch_data_0

    .line 497
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zza()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object p1

    throw p1

    .line 489
    :goto_0
    :sswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzg()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzja;->zzd(I)V

    .line 490
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 491
    return-void

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzi()I

    move-result v0

    .line 493
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    if-eq v0, v1, :cond_1

    .line 494
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzd:I

    .line 495
    return-void

    .line 496
    :cond_1
    goto :goto_0

    .line 483
    :sswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzj()I

    move-result v0

    .line 484
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzif;->zzc(I)V

    .line 485
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    .line 486
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzg()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzja;->zzd(I)V

    .line 487
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v0

    if-lt v0, v1, :cond_2

    .line 488
    return-void

    .line 498
    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    .line 499
    and-int/lit8 v0, v0, 0x7

    .line 500
    sparse-switch v0, :sswitch_data_1

    .line 515
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zza()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object p1

    throw p1

    .line 507
    :goto_1
    :sswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzg()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 508
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzt()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 509
    return-void

    .line 510
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzi()I

    move-result v0

    .line 511
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    if-eq v0, v1, :cond_5

    .line 512
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzd:I

    .line 513
    return-void

    .line 514
    :cond_5
    goto :goto_1

    .line 501
    :sswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzj()I

    move-result v0

    .line 502
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzif;->zzc(I)V

    .line 503
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    .line 504
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzg()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 505
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v0

    if-lt v0, v1, :cond_6

    .line 506
    return-void

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x2 -> :sswitch_3
        0x5 -> :sswitch_2
    .end sparse-switch
.end method

.method public final zzk()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzif;->zzb(I)V

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzk()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzk(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 516
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzjy;

    if-eqz v0, :cond_3

    .line 517
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzjy;

    .line 518
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    .line 519
    and-int/lit8 v0, v0, 0x7

    .line 520
    packed-switch v0, :pswitch_data_0

    .line 535
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zza()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object p1

    throw p1

    .line 521
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzj()I

    move-result v0

    .line 522
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzif;->zzd(I)V

    .line 523
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzn()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzjy;->zza(J)V

    .line 525
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 526
    return-void

    .line 527
    :goto_0
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzn()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzjy;->zza(J)V

    .line 528
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzt()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 529
    return-void

    .line 530
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzi()I

    move-result v0

    .line 531
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    if-eq v0, v1, :cond_2

    .line 532
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzd:I

    .line 533
    return-void

    .line 534
    :cond_2
    goto :goto_0

    .line 536
    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    .line 537
    and-int/lit8 v0, v0, 0x7

    .line 538
    packed-switch v0, :pswitch_data_1

    .line 553
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zza()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object p1

    throw p1

    .line 539
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzj()I

    move-result v0

    .line 540
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzif;->zzd(I)V

    .line 541
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    .line 542
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzn()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 543
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v0

    if-lt v0, v1, :cond_4

    .line 544
    return-void

    .line 545
    :goto_1
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzn()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 546
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzt()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 547
    return-void

    .line 548
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzi()I

    move-result v0

    .line 549
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    if-eq v0, v1, :cond_6

    .line 550
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzd:I

    .line 551
    return-void

    .line 552
    :cond_6
    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public final zzl()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzif;->zzb(I)V

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzl()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzl(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 554
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzja;

    if-eqz v0, :cond_3

    .line 555
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzja;

    .line 556
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    .line 557
    and-int/lit8 v0, v0, 0x7

    .line 558
    packed-switch v0, :pswitch_data_0

    .line 573
    :pswitch_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zza()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object p1

    throw p1

    .line 559
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzj()I

    move-result v0

    .line 560
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzh()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzja;->zzd(I)V

    .line 562
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 563
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzif;->zza(I)V

    .line 564
    return-void

    .line 565
    :goto_0
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzh()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzja;->zzd(I)V

    .line 566
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzt()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 567
    return-void

    .line 568
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzi()I

    move-result v0

    .line 569
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    if-eq v0, v1, :cond_2

    .line 570
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzd:I

    .line 571
    return-void

    .line 572
    :cond_2
    goto :goto_0

    .line 574
    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    .line 575
    and-int/lit8 v0, v0, 0x7

    .line 576
    packed-switch v0, :pswitch_data_1

    .line 591
    :pswitch_3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zza()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object p1

    throw p1

    .line 577
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzj()I

    move-result v0

    .line 578
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    .line 579
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzh()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 580
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v0

    if-lt v0, v1, :cond_4

    .line 581
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzif;->zza(I)V

    .line 582
    return-void

    .line 583
    :goto_1
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzh()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 584
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzt()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 585
    return-void

    .line 586
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzi()I

    move-result v0

    .line 587
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    if-eq v0, v1, :cond_6

    .line 588
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzd:I

    .line 589
    return-void

    .line 590
    :cond_6
    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final zzm()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzif;->zzb(I)V

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzn()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzm(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 592
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzjy;

    if-eqz v0, :cond_3

    .line 593
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzjy;

    .line 594
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    .line 595
    and-int/lit8 v0, v0, 0x7

    .line 596
    packed-switch v0, :pswitch_data_0

    .line 611
    :pswitch_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zza()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object p1

    throw p1

    .line 597
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzj()I

    move-result v0

    .line 598
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    .line 599
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzo()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzjy;->zza(J)V

    .line 600
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 601
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzif;->zza(I)V

    .line 602
    return-void

    .line 603
    :goto_0
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzo()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzjy;->zza(J)V

    .line 604
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzt()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 605
    return-void

    .line 606
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzi()I

    move-result v0

    .line 607
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    if-eq v0, v1, :cond_2

    .line 608
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzd:I

    .line 609
    return-void

    .line 610
    :cond_2
    goto :goto_0

    .line 612
    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    .line 613
    and-int/lit8 v0, v0, 0x7

    .line 614
    packed-switch v0, :pswitch_data_1

    .line 629
    :pswitch_3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zza()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object p1

    throw p1

    .line 615
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzj()I

    move-result v0

    .line 616
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    .line 617
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzo()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 618
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v0

    if-lt v0, v1, :cond_4

    .line 619
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzif;->zza(I)V

    .line 620
    return-void

    .line 621
    :goto_1
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzo()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 622
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzt()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 623
    return-void

    .line 624
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzi()I

    move-result v0

    .line 625
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    if-eq v0, v1, :cond_6

    .line 626
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzd:I

    .line 627
    return-void

    .line 628
    :cond_6
    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final zzn()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzif;->zzb(I)V

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzo()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzn(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 630
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzif;->zza(Ljava/util/List;Z)V

    .line 631
    return-void
.end method

.method public final zzo()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzif;->zzb(I)V

    .line 36
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzp()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzo(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 654
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzif;->zza(Ljava/util/List;Z)V

    .line 655
    return-void
.end method

.method public final zzp()Lcom/google/android/gms/internal/measurement/zzhm;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzif;->zzb(I)V

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzq()Lcom/google/android/gms/internal/measurement/zzhm;

    move-result-object v0

    return-object v0
.end method

.method public final zzp(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 656
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzja;

    if-eqz v0, :cond_3

    .line 657
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzja;

    .line 658
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    .line 659
    and-int/lit8 v0, v0, 0x7

    .line 660
    packed-switch v0, :pswitch_data_0

    .line 675
    :pswitch_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zza()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object p1

    throw p1

    .line 661
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzj()I

    move-result v0

    .line 662
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    .line 663
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzj()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzja;->zzd(I)V

    .line 664
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 665
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzif;->zza(I)V

    .line 666
    return-void

    .line 667
    :goto_0
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzj()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzja;->zzd(I)V

    .line 668
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzt()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 669
    return-void

    .line 670
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzi()I

    move-result v0

    .line 671
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    if-eq v0, v1, :cond_2

    .line 672
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzd:I

    .line 673
    return-void

    .line 674
    :cond_2
    goto :goto_0

    .line 676
    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    .line 677
    and-int/lit8 v0, v0, 0x7

    .line 678
    packed-switch v0, :pswitch_data_1

    .line 693
    :pswitch_3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zza()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object p1

    throw p1

    .line 679
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzj()I

    move-result v0

    .line 680
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    .line 681
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzj()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 682
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v0

    if-lt v0, v1, :cond_4

    .line 683
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzif;->zza(I)V

    .line 684
    return-void

    .line 685
    :goto_1
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzj()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 686
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzt()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 687
    return-void

    .line 688
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzi()I

    move-result v0

    .line 689
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    if-eq v0, v1, :cond_6

    .line 690
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzd:I

    .line 691
    return-void

    .line 692
    :cond_6
    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final zzq()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzif;->zzb(I)V

    .line 73
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzq(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 694
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzjy;

    if-eqz v0, :cond_3

    .line 695
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzjy;

    .line 696
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    .line 697
    and-int/lit8 v0, v0, 0x7

    .line 698
    packed-switch v0, :pswitch_data_0

    .line 713
    :pswitch_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zza()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object p1

    throw p1

    .line 699
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzj()I

    move-result v0

    .line 700
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    .line 701
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzp()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzjy;->zza(J)V

    .line 702
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 703
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzif;->zza(I)V

    .line 704
    return-void

    .line 705
    :goto_0
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzp()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzjy;->zza(J)V

    .line 706
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzt()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 707
    return-void

    .line 708
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzi()I

    move-result v0

    .line 709
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    if-eq v0, v1, :cond_2

    .line 710
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzd:I

    .line 711
    return-void

    .line 712
    :cond_2
    goto :goto_0

    .line 714
    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    .line 715
    and-int/lit8 v0, v0, 0x7

    .line 716
    packed-switch v0, :pswitch_data_1

    .line 731
    :pswitch_3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zza()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object p1

    throw p1

    .line 717
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzj()I

    move-result v0

    .line 718
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    .line 719
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 720
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()I

    move-result v0

    if-lt v0, v1, :cond_4

    .line 721
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzif;->zza(I)V

    .line 722
    return-void

    .line 723
    :goto_1
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzp()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 724
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzt()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 725
    return-void

    .line 726
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzi()I

    move-result v0

    .line 727
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    if-eq v0, v1, :cond_6

    .line 728
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzd:I

    .line 729
    return-void

    .line 730
    :cond_6
    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final zzr()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzif;->zzb(I)V

    .line 75
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzs()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzs()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 746
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzif;->zzb(I)V

    .line 747
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzu()Z

    move-result v0

    return v0
.end method

.method public final zzt()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 748
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzt()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzb:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zzc:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 750
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzd(I)Z

    move-result v0

    return v0

    .line 749
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
