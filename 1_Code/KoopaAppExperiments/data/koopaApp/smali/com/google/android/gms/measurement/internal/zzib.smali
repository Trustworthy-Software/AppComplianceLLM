.class final Lcom/google/android/gms/measurement/internal/zzib;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@21.5.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Lcom/google/android/gms/measurement/internal/zzmh;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/measurement/internal/zzo;

.field private final synthetic zzb:Landroid/os/Bundle;

.field private final synthetic zzc:Lcom/google/android/gms/measurement/internal/zzhj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzhj;Lcom/google/android/gms/measurement/internal/zzo;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzib;->zzc:Lcom/google/android/gms/measurement/internal/zzhj;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzib;->zza:Lcom/google/android/gms/measurement/internal/zzo;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzib;->zzb:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzib;->zzc:Lcom/google/android/gms/measurement/internal/zzhj;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzhj;->zza(Lcom/google/android/gms/measurement/internal/zzhj;)Lcom/google/android/gms/measurement/internal/zzmp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzmp;->zzr()V

    .line 3
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzib;->zzc:Lcom/google/android/gms/measurement/internal/zzhj;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzhj;->zza(Lcom/google/android/gms/measurement/internal/zzhj;)Lcom/google/android/gms/measurement/internal/zzmp;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzib;->zza:Lcom/google/android/gms/measurement/internal/zzo;

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzib;->zzb:Landroid/os/Bundle;

    .line 4
    nop

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzmp;->zzl()Lcom/google/android/gms/measurement/internal/zzgy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpg;->zza()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzmp;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v4

    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzbi;->zzcf:Lcom/google/android/gms/measurement/internal/zzfi;

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzaf;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfi;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    if-nez v4, :cond_0

    goto/16 :goto_3

    .line 9
    :cond_0
    if-eqz v0, :cond_3

    .line 10
    const-string v4, "uriSources"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    .line 11
    const-string v5, "uriTimestamps"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v5

    .line 12
    if-eqz v4, :cond_3

    .line 13
    if-eqz v5, :cond_2

    array-length v0, v5

    array-length v6, v4

    if-eq v0, v6, :cond_1

    goto/16 :goto_2

    .line 15
    :cond_1
    const/4 v6, 0x0

    move v7, v6

    :goto_0
    array-length v0, v4

    if-ge v7, v0, :cond_3

    .line 16
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzmp;->zzf()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v8

    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    aget v0, v4, v7

    aget-wide v10, v5, v7

    .line 17
    nop

    .line 18
    invoke-static {v9}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 20
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzmo;->zzak()V

    .line 21
    :try_start_0
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzao;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    .line 22
    const-string v13, "trigger_uris"

    const-string v14, "app_id=? and source=? and timestamp_millis<=?"

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/String;

    aput-object v9, v15, v6

    .line 23
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    aput-object v16, v15, v17

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x2

    aput-object v16, v15, v17

    .line 24
    invoke-virtual {v12, v13, v14, v15}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    .line 25
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v13

    .line 26
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzfr;->zzp()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Pruned "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " trigger URIs. appId, source, timestamp"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 27
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 28
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 29
    invoke-virtual {v13, v12, v9, v0, v10}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    goto :goto_1

    .line 31
    :catch_0
    move-exception v0

    .line 32
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v8

    .line 33
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v8

    .line 34
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    const-string v10, "Error pruning trigger URIs. appId"

    invoke-virtual {v8, v10, v9, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 35
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 14
    :cond_2
    :goto_2
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzmp;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    const-string v4, "Uri sources and timestamps do not match"

    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    .line 36
    :cond_3
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzmp;->zzf()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v0

    iget-object v2, v3, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzao;->zzh(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 37
    return-object v0

    .line 8
    :cond_4
    :goto_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method
