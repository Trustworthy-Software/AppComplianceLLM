.class final Lcom/google/android/gms/measurement/internal/zzx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@21.5.0"


# instance fields
.field private zza:Lcom/google/android/gms/internal/measurement/zzfi$zze;

.field private zzb:Ljava/lang/Long;

.field private zzc:J

.field private final synthetic zzd:Lcom/google/android/gms/measurement/internal/zzt;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/measurement/internal/zzt;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzd:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzt;Lcom/google/android/gms/measurement/internal/zzaa;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzx;-><init>(Lcom/google/android/gms/measurement/internal/zzt;)V

    return-void
.end method


# virtual methods
.method final zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzfi$zze;)Lcom/google/android/gms/internal/measurement/zzfi$zze;
    .locals 13

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfi$zze;->zzg()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfi$zze;->zzh()Ljava/util/List;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzd:Lcom/google/android/gms/measurement/internal/zzt;

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzml;->g_()Lcom/google/android/gms/measurement/internal/zzmz;

    const-string v2, "_eid"

    invoke-static {p2, v2}, Lcom/google/android/gms/measurement/internal/zzmz;->zzb(Lcom/google/android/gms/internal/measurement/zzfi$zze;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Ljava/lang/Long;

    .line 5
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v6, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v4

    .line 6
    :goto_0
    if-eqz v5, :cond_1

    .line 7
    const-string v7, "_ep"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    .line 8
    :goto_1
    const-wide/16 v7, 0x0

    if-eqz v3, :cond_c

    .line 9
    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzd:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzml;->g_()Lcom/google/android/gms/measurement/internal/zzmz;

    const-string v0, "_en"

    invoke-static {p2, v0}, Lcom/google/android/gms/measurement/internal/zzmz;->zzb(Lcom/google/android/gms/internal/measurement/zzfi$zze;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 12
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzd:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzm()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p1

    const-string p2, "Extra parameter without an event name. eventId"

    invoke-virtual {p1, p2, v6}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    return-object v4

    .line 14
    :cond_2
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzx;->zza:Lcom/google/android/gms/internal/measurement/zzfi$zze;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzb:Ljava/lang/Long;

    if-eqz v3, :cond_3

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzb:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    cmp-long v3, v9, v11

    if-eqz v3, :cond_5

    .line 15
    :cond_3
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzd:Lcom/google/android/gms/measurement/internal/zzt;

    .line 16
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzml;->zzh()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v3

    invoke-virtual {v3, p1, v6}, Lcom/google/android/gms/measurement/internal/zzao;->zza(Ljava/lang/String;Ljava/lang/Long;)Landroid/util/Pair;

    move-result-object v3

    .line 17
    if-eqz v3, :cond_b

    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-nez v5, :cond_4

    goto/16 :goto_4

    .line 22
    :cond_4
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzfi$zze;

    iput-object v4, p0, Lcom/google/android/gms/measurement/internal/zzx;->zza:Lcom/google/android/gms/internal/measurement/zzfi$zze;

    .line 23
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzc:J

    .line 24
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzd:Lcom/google/android/gms/measurement/internal/zzt;

    .line 25
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzml;->g_()Lcom/google/android/gms/measurement/internal/zzmz;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzx;->zza:Lcom/google/android/gms/internal/measurement/zzfi$zze;

    invoke-static {v3, v2}, Lcom/google/android/gms/measurement/internal/zzmz;->zzb(Lcom/google/android/gms/internal/measurement/zzfi$zze;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzb:Ljava/lang/Long;

    .line 26
    :cond_5
    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzc:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzc:J

    .line 27
    cmp-long v2, v2, v7

    if-gtz v2, :cond_6

    .line 28
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzd:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzml;->zzh()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v2

    .line 29
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 30
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfr;->zzp()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v3

    const-string v4, "Clearing complex main event info. appId"

    invoke-virtual {v3, v4, p1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    :try_start_0
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzao;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 32
    const-string v4, "delete from main_event_params where app_id=?"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v4, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    goto :goto_2

    .line 34
    :catch_0
    move-exception p1

    .line 35
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v2

    const-string v3, "Error clearing complex main event"

    invoke-virtual {v2, v3, p1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 36
    goto :goto_2

    .line 37
    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzd:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzml;->zzh()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v4

    iget-wide v7, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzc:J

    iget-object v9, p0, Lcom/google/android/gms/measurement/internal/zzx;->zza:Lcom/google/android/gms/internal/measurement/zzfi$zze;

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gms/measurement/internal/zzao;->zza(Ljava/lang/String;Ljava/lang/Long;JLcom/google/android/gms/internal/measurement/zzfi$zze;)Z

    .line 38
    :goto_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 39
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzx;->zza:Lcom/google/android/gms/internal/measurement/zzfi$zze;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfi$zze;->zzh()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfi$zzg;

    .line 40
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzd:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzml;->g_()Lcom/google/android/gms/measurement/internal/zzmz;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfi$zzg;->zzg()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Lcom/google/android/gms/measurement/internal/zzmz;->zza(Lcom/google/android/gms/internal/measurement/zzfi$zze;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfi$zzg;

    move-result-object v4

    .line 41
    if-nez v4, :cond_7

    .line 42
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    :cond_7
    goto :goto_3

    .line 44
    :cond_8
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    .line 45
    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 46
    move-object v1, p1

    goto :goto_6

    .line 47
    :cond_9
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzd:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p1

    .line 48
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzm()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p1

    .line 49
    const-string v2, "No unique parameters in main event. eventName"

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    :cond_a
    goto :goto_6

    .line 18
    :cond_b
    :goto_4
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzd:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzm()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p1

    .line 20
    const-string p2, "Extra parameter without existing main event. eventName, eventId"

    invoke-virtual {p1, p2, v0, v6}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 21
    return-object v4

    .line 50
    :cond_c
    if-eqz v5, :cond_a

    .line 51
    iput-object v6, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzb:Ljava/lang/Long;

    .line 52
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzx;->zza:Lcom/google/android/gms/internal/measurement/zzfi$zze;

    .line 53
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzd:Lcom/google/android/gms/measurement/internal/zzt;

    .line 54
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzml;->g_()Lcom/google/android/gms/measurement/internal/zzmz;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 55
    const-string v3, "_epc"

    invoke-static {p2, v3}, Lcom/google/android/gms/measurement/internal/zzmz;->zzb(Lcom/google/android/gms/internal/measurement/zzfi$zze;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 56
    if-nez v3, :cond_d

    goto :goto_5

    :cond_d
    move-object v2, v3

    .line 57
    :goto_5
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzc:J

    .line 58
    cmp-long v2, v2, v7

    if-gtz v2, :cond_e

    .line 59
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzd:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p1

    .line 60
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzm()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p1

    .line 61
    const-string v2, "Complex event with zero extra param count. eventName"

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    .line 62
    :cond_e
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzd:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzml;->zzh()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v7

    .line 63
    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Ljava/lang/Long;

    iget-wide v10, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzc:J

    .line 64
    move-object v8, p1

    move-object v12, p2

    invoke-virtual/range {v7 .. v12}, Lcom/google/android/gms/measurement/internal/zzao;->zza(Ljava/lang/String;Ljava/lang/Long;JLcom/google/android/gms/internal/measurement/zzfi$zze;)Z

    .line 65
    :goto_6
    nop

    .line 66
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzix;->zzby()Lcom/google/android/gms/internal/measurement/zzix$zzb;

    move-result-object p1

    .line 67
    move-object p2, p1

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzix$zzb;

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzfi$zze$zza;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzfi$zze$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfi$zze$zza;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfi$zze$zza;->zzd()Lcom/google/android/gms/internal/measurement/zzfi$zze$zza;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzfi$zze$zza;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzfi$zze$zza;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzix$zzb;->zzab()Lcom/google/android/gms/internal/measurement/zzkj;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzix;

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzfi$zze;

    return-object p1
.end method
