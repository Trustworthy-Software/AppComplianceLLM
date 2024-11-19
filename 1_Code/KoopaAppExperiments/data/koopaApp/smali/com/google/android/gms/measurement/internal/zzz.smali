.class final Lcom/google/android/gms/measurement/internal/zzz;
.super Lcom/google/android/gms/measurement/internal/zzac;
.source "com.google.android.gms:play-services-measurement@@21.5.0"


# instance fields
.field private zzg:Lcom/google/android/gms/internal/measurement/zzew$zzb;

.field private final synthetic zzh:Lcom/google/android/gms/measurement/internal/zzt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzt;Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzew$zzb;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    .line 3
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/measurement/internal/zzac;-><init>(Ljava/lang/String;I)V

    .line 4
    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzg:Lcom/google/android/gms/internal/measurement/zzew$zzb;

    .line 5
    return-void
.end method


# virtual methods
.method final zza()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzg:Lcom/google/android/gms/internal/measurement/zzew$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzew$zzb;->zzb()I

    move-result v0

    return v0
.end method

.method final zza(Ljava/lang/Long;Ljava/lang/Long;Lcom/google/android/gms/internal/measurement/zzfi$zze;JLcom/google/android/gms/measurement/internal/zzbc;Z)Z
    .locals 17

    .line 8
    move-object/from16 v0, p0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzob;->zza()Z

    move-result v1

    const/4 v2, 0x1

    .line 155
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 8
    const/4 v4, 0x0

    .line 50
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 8
    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzid;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v1

    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/zzz;->zza:Ljava/lang/String;

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzbi;->zzbg:Lcom/google/android/gms/measurement/internal/zzfi;

    .line 10
    invoke-virtual {v1, v6, v7}, Lcom/google/android/gms/measurement/internal/zzaf;->zzf(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfi;)Z

    move-result v1

    .line 11
    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v4

    .line 12
    :goto_0
    nop

    .line 13
    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzg:Lcom/google/android/gms/internal/measurement/zzew$zzb;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzew$zzb;->zzj()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 14
    move-object/from16 v6, p6

    iget-wide v6, v6, Lcom/google/android/gms/measurement/internal/zzbc;->zze:J

    goto :goto_1

    .line 13
    :cond_1
    move-wide/from16 v6, p4

    .line 15
    :goto_1
    iget-object v8, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(I)Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_3

    .line 16
    iget-object v8, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v8

    .line 17
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfr;->zzp()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v8

    iget v10, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzb:I

    .line 18
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 19
    iget-object v11, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzg:Lcom/google/android/gms/internal/measurement/zzew$zzb;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzew$zzb;->zzl()Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzg:Lcom/google/android/gms/internal/measurement/zzew$zzb;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzew$zzb;->zzb()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_2

    :cond_2
    move-object v11, v9

    :goto_2
    iget-object v12, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    .line 20
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzid;->zzi()Lcom/google/android/gms/measurement/internal/zzfq;

    move-result-object v12

    iget-object v13, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzg:Lcom/google/android/gms/internal/measurement/zzew$zzb;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzew$zzb;->zzf()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 21
    const-string v13, "Evaluating filter. audience, filter, event"

    invoke-virtual {v8, v13, v10, v11, v12}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 22
    iget-object v8, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v8

    .line 23
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfr;->zzp()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v8

    iget-object v10, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    .line 24
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzml;->g_()Lcom/google/android/gms/measurement/internal/zzmz;

    move-result-object v10

    iget-object v11, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzg:Lcom/google/android/gms/internal/measurement/zzew$zzb;

    invoke-virtual {v10, v11}, Lcom/google/android/gms/measurement/internal/zzmz;->zza(Lcom/google/android/gms/internal/measurement/zzew$zzb;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "Filter definition"

    invoke-virtual {v8, v11, v10}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    :cond_3
    iget-object v8, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzg:Lcom/google/android/gms/internal/measurement/zzew$zzb;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzew$zzb;->zzl()Z

    move-result v8

    if-eqz v8, :cond_2d

    iget-object v8, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzg:Lcom/google/android/gms/internal/measurement/zzew$zzb;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzew$zzb;->zzb()I

    move-result v8

    const/16 v10, 0x100

    if-le v8, v10, :cond_4

    goto/16 :goto_f

    .line 32
    :cond_4
    iget-object v8, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzg:Lcom/google/android/gms/internal/measurement/zzew$zzb;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzew$zzb;->zzh()Z

    move-result v8

    .line 33
    iget-object v10, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzg:Lcom/google/android/gms/internal/measurement/zzew$zzb;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzew$zzb;->zzi()Z

    move-result v10

    .line 34
    iget-object v11, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzg:Lcom/google/android/gms/internal/measurement/zzew$zzb;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzew$zzb;->zzj()Z

    move-result v11

    .line 35
    if-nez v8, :cond_6

    if-nez v10, :cond_6

    if-eqz v11, :cond_5

    goto :goto_3

    :cond_5
    move v8, v4

    goto :goto_4

    :cond_6
    :goto_3
    move v8, v2

    .line 36
    :goto_4
    if-eqz p7, :cond_8

    if-nez v8, :cond_8

    .line 37
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v1

    .line 38
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzp()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v1

    iget v3, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzb:I

    .line 39
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 40
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzg:Lcom/google/android/gms/internal/measurement/zzew$zzb;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzew$zzb;->zzl()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzg:Lcom/google/android/gms/internal/measurement/zzew$zzb;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzew$zzb;->zzb()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 41
    :cond_7
    const-string v4, "Event filter already evaluated true and it is not associated with an enhanced audience. audience ID, filter ID"

    invoke-virtual {v1, v4, v3, v9}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 42
    return v2

    .line 43
    :cond_8
    iget-object v10, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzg:Lcom/google/android/gms/internal/measurement/zzew$zzb;

    .line 44
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/zzfi$zze;->zzg()Ljava/lang/String;

    move-result-object v11

    .line 45
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzew$zzb;->zzk()Z

    move-result v12

    if-eqz v12, :cond_a

    .line 46
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzew$zzb;->zze()Lcom/google/android/gms/internal/measurement/zzew$zzd;

    move-result-object v12

    invoke-static {v6, v7, v12}, Lcom/google/android/gms/measurement/internal/zzz;->zza(JLcom/google/android/gms/internal/measurement/zzew$zzd;)Ljava/lang/Boolean;

    move-result-object v6

    .line 47
    if-nez v6, :cond_9

    .line 48
    move-object v5, v9

    goto/16 :goto_c

    .line 49
    :cond_9
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_a

    .line 50
    goto/16 :goto_c

    .line 51
    :cond_a
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 52
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzew$zzb;->zzg()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/measurement/zzew$zzc;

    .line 53
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzew$zzc;->zze()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_b

    .line 54
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v5

    .line 55
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfr;->zzu()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v5

    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    .line 56
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzid;->zzi()Lcom/google/android/gms/measurement/internal/zzfq;

    move-result-object v6

    invoke-virtual {v6, v11}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 57
    const-string v7, "null or empty param name in filter. event"

    invoke-virtual {v5, v7, v6}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 58
    move-object v5, v9

    goto/16 :goto_c

    .line 59
    :cond_b
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzew$zzc;->zze()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    goto :goto_5

    .line 61
    :cond_c
    new-instance v7, Landroidx/collection/ArrayMap;

    invoke-direct {v7}, Landroidx/collection/ArrayMap;-><init>()V

    .line 62
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/zzfi$zze;->zzh()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_13

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/measurement/zzfi$zzg;

    .line 63
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzfi$zzg;->zzg()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v6, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_12

    .line 64
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzfi$zzg;->zzl()Z

    move-result v14

    if-eqz v14, :cond_e

    .line 65
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzfi$zzg;->zzg()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzfi$zzg;->zzl()Z

    move-result v15

    if-eqz v15, :cond_d

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzfi$zzg;->zzd()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    goto :goto_7

    :cond_d
    move-object v13, v9

    :goto_7
    invoke-interface {v7, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 66
    :cond_e
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzfi$zzg;->zzj()Z

    move-result v14

    if-eqz v14, :cond_10

    .line 67
    nop

    .line 68
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzfi$zzg;->zzg()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzfi$zzg;->zzj()Z

    move-result v15

    if-eqz v15, :cond_f

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzfi$zzg;->zza()D

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    goto :goto_8

    :cond_f
    move-object v13, v9

    .line 69
    :goto_8
    invoke-interface {v7, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 70
    :cond_10
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzfi$zzg;->zzn()Z

    move-result v14

    if-eqz v14, :cond_11

    .line 71
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzfi$zzg;->zzg()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzfi$zzg;->zzh()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v7, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 72
    :cond_11
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v5

    .line 73
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfr;->zzu()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v5

    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    .line 74
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzid;->zzi()Lcom/google/android/gms/measurement/internal/zzfq;

    move-result-object v6

    invoke-virtual {v6, v11}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    .line 75
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzid;->zzi()Lcom/google/android/gms/measurement/internal/zzfq;

    move-result-object v7

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzfi$zzg;->zzg()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/google/android/gms/measurement/internal/zzfq;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 76
    const-string v10, "Unknown value for param. event, param"

    invoke-virtual {v5, v10, v6, v7}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 77
    move-object v5, v9

    goto/16 :goto_c

    .line 78
    :cond_12
    goto/16 :goto_6

    .line 79
    :cond_13
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzew$zzb;->zzg()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_25

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzew$zzc;

    .line 80
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzew$zzc;->zzg()Z

    move-result v12

    if-eqz v12, :cond_14

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzew$zzc;->zzf()Z

    move-result v12

    if-eqz v12, :cond_14

    move v12, v2

    goto :goto_a

    :cond_14
    move v12, v4

    .line 81
    :goto_a
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzew$zzc;->zze()Ljava/lang/String;

    move-result-object v13

    .line 82
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_15

    .line 83
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v5

    .line 84
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfr;->zzu()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v5

    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    .line 85
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzid;->zzi()Lcom/google/android/gms/measurement/internal/zzfq;

    move-result-object v6

    invoke-virtual {v6, v11}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 86
    const-string v7, "Event has empty param name. event"

    invoke-virtual {v5, v7, v6}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 87
    move-object v5, v9

    goto/16 :goto_c

    .line 88
    :cond_15
    invoke-interface {v7, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 89
    instance-of v15, v14, Ljava/lang/Long;

    if-eqz v15, :cond_19

    .line 90
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzew$zzc;->zzh()Z

    move-result v15

    if-nez v15, :cond_16

    .line 91
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v5

    .line 92
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfr;->zzu()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v5

    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    .line 93
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzid;->zzi()Lcom/google/android/gms/measurement/internal/zzfq;

    move-result-object v6

    invoke-virtual {v6, v11}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    .line 94
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzid;->zzi()Lcom/google/android/gms/measurement/internal/zzfq;

    move-result-object v7

    invoke-virtual {v7, v13}, Lcom/google/android/gms/measurement/internal/zzfq;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 95
    const-string v10, "No number filter for long param. event, param"

    invoke-virtual {v5, v10, v6, v7}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 96
    move-object v5, v9

    goto/16 :goto_c

    .line 97
    :cond_16
    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzew$zzc;->zzc()Lcom/google/android/gms/internal/measurement/zzew$zzd;

    move-result-object v10

    invoke-static {v13, v14, v10}, Lcom/google/android/gms/measurement/internal/zzz;->zza(JLcom/google/android/gms/internal/measurement/zzew$zzd;)Ljava/lang/Boolean;

    move-result-object v10

    .line 98
    if-nez v10, :cond_17

    .line 99
    move-object v5, v9

    goto/16 :goto_c

    .line 100
    :cond_17
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-ne v10, v12, :cond_18

    .line 101
    goto/16 :goto_c

    .line 102
    :cond_18
    goto/16 :goto_9

    :cond_19
    instance-of v15, v14, Ljava/lang/Double;

    if-eqz v15, :cond_1d

    .line 103
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzew$zzc;->zzh()Z

    move-result v15

    if-nez v15, :cond_1a

    .line 104
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v5

    .line 105
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfr;->zzu()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v5

    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    .line 106
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzid;->zzi()Lcom/google/android/gms/measurement/internal/zzfq;

    move-result-object v6

    invoke-virtual {v6, v11}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    .line 107
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzid;->zzi()Lcom/google/android/gms/measurement/internal/zzfq;

    move-result-object v7

    invoke-virtual {v7, v13}, Lcom/google/android/gms/measurement/internal/zzfq;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 108
    const-string v10, "No number filter for double param. event, param"

    invoke-virtual {v5, v10, v6, v7}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 109
    move-object v5, v9

    goto/16 :goto_c

    .line 110
    :cond_1a
    check-cast v14, Ljava/lang/Double;

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzew$zzc;->zzc()Lcom/google/android/gms/internal/measurement/zzew$zzd;

    move-result-object v10

    invoke-static {v13, v14, v10}, Lcom/google/android/gms/measurement/internal/zzz;->zza(DLcom/google/android/gms/internal/measurement/zzew$zzd;)Ljava/lang/Boolean;

    move-result-object v10

    .line 111
    if-nez v10, :cond_1b

    .line 112
    move-object v5, v9

    goto/16 :goto_c

    .line 113
    :cond_1b
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-ne v10, v12, :cond_1c

    .line 114
    goto/16 :goto_c

    .line 115
    :cond_1c
    goto/16 :goto_9

    :cond_1d
    instance-of v15, v14, Ljava/lang/String;

    if-eqz v15, :cond_23

    .line 116
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzew$zzc;->zzj()Z

    move-result v15

    if-eqz v15, :cond_1e

    .line 117
    check-cast v14, Ljava/lang/String;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzew$zzc;->zzd()Lcom/google/android/gms/internal/measurement/zzew$zzf;

    move-result-object v10

    iget-object v13, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v13

    invoke-static {v14, v10, v13}, Lcom/google/android/gms/measurement/internal/zzz;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzew$zzf;Lcom/google/android/gms/measurement/internal/zzfr;)Ljava/lang/Boolean;

    move-result-object v10

    goto :goto_b

    .line 118
    :cond_1e
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzew$zzc;->zzh()Z

    move-result v15

    if-eqz v15, :cond_22

    .line 119
    check-cast v14, Ljava/lang/String;

    invoke-static {v14}, Lcom/google/android/gms/measurement/internal/zzmz;->zzb(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_21

    .line 120
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzew$zzc;->zzc()Lcom/google/android/gms/internal/measurement/zzew$zzd;

    move-result-object v10

    invoke-static {v14, v10}, Lcom/google/android/gms/measurement/internal/zzz;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzew$zzd;)Ljava/lang/Boolean;

    move-result-object v10

    .line 133
    :goto_b
    if-nez v10, :cond_1f

    .line 134
    move-object v5, v9

    goto/16 :goto_c

    .line 135
    :cond_1f
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-ne v10, v12, :cond_20

    .line 136
    goto/16 :goto_c

    .line 137
    :cond_20
    goto/16 :goto_9

    .line 121
    :cond_21
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v5

    .line 122
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfr;->zzu()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v5

    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    .line 123
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzid;->zzi()Lcom/google/android/gms/measurement/internal/zzfq;

    move-result-object v6

    invoke-virtual {v6, v11}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    .line 124
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzid;->zzi()Lcom/google/android/gms/measurement/internal/zzfq;

    move-result-object v7

    invoke-virtual {v7, v13}, Lcom/google/android/gms/measurement/internal/zzfq;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 125
    const-string v10, "Invalid param value for number filter. event, param"

    invoke-virtual {v5, v10, v6, v7}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 126
    move-object v5, v9

    goto/16 :goto_c

    .line 127
    :cond_22
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v5

    .line 128
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfr;->zzu()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v5

    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    .line 129
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzid;->zzi()Lcom/google/android/gms/measurement/internal/zzfq;

    move-result-object v6

    invoke-virtual {v6, v11}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    .line 130
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzid;->zzi()Lcom/google/android/gms/measurement/internal/zzfq;

    move-result-object v7

    invoke-virtual {v7, v13}, Lcom/google/android/gms/measurement/internal/zzfq;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 131
    const-string v10, "No filter for String param. event, param"

    invoke-virtual {v5, v10, v6, v7}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 132
    move-object v5, v9

    goto :goto_c

    .line 137
    :cond_23
    if-nez v14, :cond_24

    .line 138
    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v6

    .line 139
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfr;->zzp()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v6

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    .line 140
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzid;->zzi()Lcom/google/android/gms/measurement/internal/zzfq;

    move-result-object v7

    invoke-virtual {v7, v11}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v9, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    .line 141
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzid;->zzi()Lcom/google/android/gms/measurement/internal/zzfq;

    move-result-object v9

    invoke-virtual {v9, v13}, Lcom/google/android/gms/measurement/internal/zzfq;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 142
    const-string v10, "Missing param for filter. event, param"

    invoke-virtual {v6, v10, v7, v9}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 143
    goto :goto_c

    .line 144
    :cond_24
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v5

    .line 145
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfr;->zzu()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v5

    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    .line 146
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzid;->zzi()Lcom/google/android/gms/measurement/internal/zzfq;

    move-result-object v6

    invoke-virtual {v6, v11}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    .line 147
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzid;->zzi()Lcom/google/android/gms/measurement/internal/zzfq;

    move-result-object v7

    invoke-virtual {v7, v13}, Lcom/google/android/gms/measurement/internal/zzfq;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 148
    const-string v10, "Unknown param type. event, param"

    invoke-virtual {v5, v10, v6, v7}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 149
    move-object v5, v9

    goto :goto_c

    .line 150
    :cond_25
    move-object v5, v3

    .line 151
    :goto_c
    nop

    .line 152
    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfr;->zzp()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v6

    if-nez v5, :cond_26

    const-string v7, "null"

    goto :goto_d

    :cond_26
    move-object v7, v5

    :goto_d
    const-string v9, "Event filter result"

    invoke-virtual {v6, v9, v7}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 153
    if-nez v5, :cond_27

    .line 154
    return v4

    .line 155
    :cond_27
    iput-object v3, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzc:Ljava/lang/Boolean;

    .line 156
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_28

    .line 157
    return v2

    .line 158
    :cond_28
    iput-object v3, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzd:Ljava/lang/Boolean;

    .line 159
    if-eqz v8, :cond_2c

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/zzfi$zze;->zzk()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 160
    nop

    .line 161
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/zzfi$zze;->zzd()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 162
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzg:Lcom/google/android/gms/internal/measurement/zzew$zzb;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzew$zzb;->zzi()Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 163
    if-eqz v1, :cond_29

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzg:Lcom/google/android/gms/internal/measurement/zzew$zzb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzew$zzb;->zzk()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 164
    move-object/from16 v3, p1

    .line 165
    :cond_29
    iput-object v3, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzf:Ljava/lang/Long;

    goto :goto_e

    .line 166
    :cond_2a
    if-eqz v1, :cond_2b

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzg:Lcom/google/android/gms/internal/measurement/zzew$zzb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzew$zzb;->zzk()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 167
    move-object/from16 v3, p2

    .line 168
    :cond_2b
    iput-object v3, v0, Lcom/google/android/gms/measurement/internal/zzz;->zze:Ljava/lang/Long;

    .line 169
    :cond_2c
    :goto_e
    return v2

    .line 26
    :cond_2d
    :goto_f
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v1

    .line 27
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzu()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzz;->zza:Ljava/lang/String;

    .line 28
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 29
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzg:Lcom/google/android/gms/internal/measurement/zzew$zzb;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzew$zzb;->zzl()Z

    move-result v3

    if-eqz v3, :cond_2e

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzz;->zzg:Lcom/google/android/gms/internal/measurement/zzew$zzb;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzew$zzb;->zzb()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    :cond_2e
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 30
    const-string v5, "Invalid event filter ID. appId, id"

    invoke-virtual {v1, v5, v2, v3}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 31
    return v4
.end method

.method final zzb()Z
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzg:Lcom/google/android/gms/internal/measurement/zzew$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzew$zzb;->zzk()Z

    move-result v0

    return v0
.end method

.method final zzc()Z
    .locals 1

    .line 7
    const/4 v0, 0x0

    return v0
.end method
