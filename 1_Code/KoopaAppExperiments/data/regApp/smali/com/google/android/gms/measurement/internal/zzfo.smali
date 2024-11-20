.class public final Lcom/google/android/gms/measurement/internal/zzfo;
.super Lcom/google/android/gms/measurement/internal/zze;
.source "com.google.android.gms:play-services-measurement-impl@@21.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/measurement/internal/zzfn;

.field private zzb:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzhf;)V
    .locals 2

    .line 170
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zze;-><init>(Lcom/google/android/gms/measurement/internal/zzhf;)V

    .line 171
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzfn;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zza()Landroid/content/Context;

    move-result-object v0

    .line 172
    nop

    .line 173
    const-string v1, "google_app_measurement_local.db"

    invoke-direct {p1, p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfn;-><init>(Lcom/google/android/gms/measurement/internal/zzfo;Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zza:Lcom/google/android/gms/measurement/internal/zzfn;

    .line 174
    return-void
.end method

.method private static zza(Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 11

    .line 1
    nop

    .line 2
    const/4 v0, 0x0

    :try_start_0
    const-string v2, "messages"

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const-string v4, "rowid"

    const/4 v10, 0x0

    aput-object v4, v3, v10

    const-string v4, "type=?"

    new-array v5, v1, [Ljava/lang/String;

    const-string v1, "3"

    .line 3
    aput-object v1, v5, v10

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "rowid desc"

    const-string v9, "1"

    .line 4
    move-object v1, p0

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 6
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 9
    :cond_0
    return-wide v1

    .line 10
    :cond_1
    nop

    .line 11
    if-eqz v0, :cond_2

    .line 12
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 13
    :cond_2
    const-wide/16 v0, -0x1

    return-wide v0

    .line 14
    :catchall_0
    move-exception p0

    if-eqz v0, :cond_3

    .line 15
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 16
    :cond_3
    throw p0
.end method

.method private final zza(I[B)Z
    .locals 16

    .line 249
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 250
    iget-boolean v0, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzb:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 251
    return v2

    .line 252
    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 253
    const-string v0, "type"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 254
    const-string v0, "entry"

    move-object/from16 v4, p2

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 255
    nop

    .line 256
    const/4 v4, 0x5

    move v5, v2

    move v6, v4

    :goto_0
    if-ge v5, v4, :cond_e

    .line 257
    nop

    .line 258
    nop

    .line 259
    const/4 v7, 0x0

    const/4 v8, 0x1

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzad()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 260
    if-nez v9, :cond_2

    .line 261
    :try_start_1
    iput-boolean v8, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzb:Z
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 262
    if-eqz v9, :cond_1

    .line 263
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 264
    :cond_1
    return v2

    .line 265
    :cond_2
    :try_start_2
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 266
    nop

    .line 267
    const-string v0, "select count(1) from messages"

    invoke-virtual {v9, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 268
    if-eqz v10, :cond_3

    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 269
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 314
    :catchall_0
    move-exception v0

    goto/16 :goto_5

    .line 305
    :catch_0
    move-exception v0

    goto :goto_3

    .line 298
    :catch_1
    move-exception v0

    goto :goto_2

    .line 291
    :catch_2
    move-exception v0

    move-object v7, v10

    goto/16 :goto_7

    .line 270
    :cond_3
    const-wide/16 v11, 0x0

    :goto_1
    const-wide/32 v13, 0x186a0

    cmp-long v0, v11, v13

    const-string v15, "messages"

    if-ltz v0, :cond_4

    .line 271
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    const-string v4, "Data loss, local db full"

    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    .line 272
    sub-long/2addr v13, v11

    const-wide/16 v11, 0x1

    add-long/2addr v13, v11

    .line 273
    const-string v0, "rowid in (select rowid from messages order by rowid asc limit ?)"

    new-array v4, v8, [Ljava/lang/String;

    .line 274
    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v2

    .line 275
    invoke-virtual {v9, v15, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v11, v0

    .line 276
    cmp-long v0, v11, v13

    if-eqz v0, :cond_4

    .line 277
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    .line 278
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    const-string v4, "Different delete count than expected in local db. expected, received, difference"

    .line 279
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 280
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    sub-long/2addr v13, v11

    .line 281
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 282
    invoke-virtual {v0, v4, v2, v8, v11}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 283
    :cond_4
    invoke-virtual {v9, v15, v7, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 284
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 285
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 286
    if-eqz v10, :cond_5

    .line 287
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 288
    :cond_5
    if-eqz v9, :cond_6

    .line 289
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 290
    :cond_6
    const/4 v2, 0x1

    return v2

    .line 298
    :goto_2
    move-object v7, v10

    goto :goto_6

    .line 305
    :catch_3
    move-exception v0

    move-object v10, v7

    :goto_3
    move-object v7, v9

    goto :goto_4

    .line 298
    :catch_4
    move-exception v0

    goto :goto_6

    .line 291
    :catch_5
    move-exception v0

    goto :goto_7

    .line 314
    :catchall_1
    move-exception v0

    move-object v9, v7

    goto :goto_9

    .line 305
    :catch_6
    move-exception v0

    move-object v10, v7

    .line 306
    :goto_4
    if-eqz v7, :cond_7

    :try_start_5
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 307
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 308
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v2

    const-string v4, "Error writing entry to local database"

    invoke-virtual {v2, v4, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 309
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzb:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 310
    if-eqz v10, :cond_8

    .line 311
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 312
    :cond_8
    if-eqz v7, :cond_b

    .line 313
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_8

    .line 314
    :catchall_2
    move-exception v0

    move-object v9, v7

    :goto_5
    move-object v7, v10

    goto :goto_9

    .line 298
    :catch_7
    move-exception v0

    move-object v9, v7

    .line 299
    :goto_6
    int-to-long v10, v6

    :try_start_6
    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 300
    add-int/lit8 v6, v6, 0x14

    .line 301
    if-eqz v7, :cond_9

    .line 302
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 303
    :cond_9
    if-eqz v9, :cond_b

    .line 304
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_8

    .line 291
    :catch_8
    move-exception v0

    move-object v9, v7

    .line 292
    :goto_7
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v2

    const-string v4, "Error writing entry; local database full"

    invoke-virtual {v2, v4, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 293
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzb:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 294
    if-eqz v7, :cond_a

    .line 295
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 296
    :cond_a
    if-eqz v9, :cond_b

    .line 297
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 319
    :cond_b
    :goto_8
    add-int/lit8 v5, v5, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x5

    goto/16 :goto_0

    .line 314
    :catchall_3
    move-exception v0

    :goto_9
    if-eqz v7, :cond_c

    .line 315
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 316
    :cond_c
    if-eqz v9, :cond_d

    .line 317
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 318
    :cond_d
    throw v0

    .line 320
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzp()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    const-string v2, "Failed to write entry to local database"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    .line 321
    const/4 v2, 0x0

    return v2
.end method

.method private final zzad()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    .line 18
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzb:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 19
    return-object v1

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zza:Lcom/google/android/gms/measurement/internal/zzfn;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfn;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzb:Z

    .line 23
    return-object v1

    .line 24
    :cond_1
    return-object v0
.end method

.method private final zzae()Z
    .locals 2

    .line 190
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zza()Landroid/content/Context;

    move-result-object v0

    .line 191
    nop

    .line 192
    const-string v1, "google_app_measurement_local.db"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final bridge synthetic zza()Landroid/content/Context;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 17
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zza()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final zza(I)Ljava/util/List;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;",
            ">;"
        }
    .end annotation

    .line 41
    move-object/from16 v1, p0

    const-string v2, "Error reading entries from local database"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 42
    iget-boolean v0, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzb:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 43
    return-object v3

    .line 44
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 45
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzae()Z

    move-result v0

    if-nez v0, :cond_1

    .line 46
    return-object v4

    .line 47
    :cond_1
    nop

    .line 48
    const/4 v5, 0x5

    const/4 v6, 0x0

    move v8, v5

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_17

    .line 49
    nop

    .line 50
    nop

    .line 51
    const/4 v9, 0x1

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzad()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_15
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_14
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_13
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    .line 52
    if-nez v15, :cond_3

    .line 53
    :try_start_1
    iput-boolean v9, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzb:Z
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    if-eqz v15, :cond_2

    .line 55
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 56
    :cond_2
    return-object v3

    .line 162
    :catchall_0
    move-exception v0

    goto/16 :goto_14

    .line 153
    :catch_0
    move-exception v0

    move-object v10, v3

    goto/16 :goto_10

    .line 139
    :catch_1
    move-exception v0

    move-object v10, v3

    goto/16 :goto_12

    .line 57
    :cond_3
    :try_start_2
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 58
    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/zzfo;->zza(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v10
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_12
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_2 .. :try_end_2} :catch_11
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_10
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    .line 59
    nop

    .line 60
    nop

    .line 61
    const-wide/16 v19, -0x1

    cmp-long v0, v10, v19

    if-eqz v0, :cond_4

    .line 62
    :try_start_3
    const-string v0, "rowid<?"

    .line 63
    new-array v12, v9, [Ljava/lang/String;

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v12, v6
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_3 .. :try_end_3} :catch_11
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v13, v0

    move-object v14, v12

    goto :goto_1

    .line 61
    :cond_4
    move-object v13, v3

    move-object v14, v13

    .line 64
    :goto_1
    :try_start_4
    const-string v11, "messages"

    const/4 v12, 0x3

    new-array v0, v12, [Ljava/lang/String;

    const-string v10, "rowid"

    aput-object v10, v0, v6

    const-string v10, "type"

    aput-object v10, v0, v9

    const-string v10, "entry"

    const/4 v5, 0x2

    aput-object v10, v0, v5

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v18, "rowid asc"

    .line 65
    const/16 v10, 0x64

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_4 .. :try_end_4} :catch_12
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_4 .. :try_end_4} :catch_11
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_10
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    .line 66
    move-object v10, v15

    move v3, v12

    move-object v12, v0

    move-object/from16 v22, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v21

    :try_start_5
    invoke-virtual/range {v10 .. v18}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_5 .. :try_end_5} :catch_f
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_5 .. :try_end_5} :catch_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_d
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    .line 67
    nop

    .line 68
    :goto_2
    :try_start_6
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_6 .. :try_end_6} :catch_c
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_a
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    if-eqz v0, :cond_c

    .line 69
    :try_start_7
    invoke-interface {v10, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 70
    invoke-interface {v10, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 71
    invoke-interface {v10, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v11

    .line 72
    if-nez v0, :cond_6

    .line 73
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v12
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_7 .. :try_end_7} :catch_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 74
    :try_start_8
    array-length v0, v11

    invoke-virtual {v12, v11, v6, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 75
    invoke-virtual {v12, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 76
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzbg;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzbg;
    :try_end_8
    .catch Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 77
    :try_start_9
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    .line 78
    nop

    .line 85
    if-eqz v0, :cond_5

    .line 86
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_9 .. :try_end_9} :catch_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 87
    :cond_5
    goto :goto_2

    .line 83
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 79
    :catch_2
    move-exception v0

    .line 80
    :try_start_a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    const-string v11, "Failed to load event from local database"

    invoke-virtual {v0, v11}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 81
    :try_start_b
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    .line 82
    goto :goto_2

    .line 83
    :goto_3
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    .line 84
    throw v0

    .line 87
    :cond_6
    if-ne v0, v9, :cond_8

    .line 88
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v12
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_b .. :try_end_b} :catch_6
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_b .. :try_end_b} :catch_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 89
    nop

    .line 90
    :try_start_c
    array-length v0, v11

    invoke-virtual {v12, v11, v6, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 91
    invoke-virtual {v12, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 92
    sget-object v0, Lcom/google/android/gms/measurement/internal/zznc;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zznc;
    :try_end_c
    .catch Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 93
    :try_start_d
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_d .. :try_end_d} :catch_6
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_d .. :try_end_d} :catch_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 94
    goto :goto_4

    .line 99
    :catchall_2
    move-exception v0

    goto :goto_5

    .line 95
    :catch_3
    move-exception v0

    .line 96
    :try_start_e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    const-string v11, "Failed to load user property from local database"

    invoke-virtual {v0, v11}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 97
    :try_start_f
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    .line 98
    const/4 v0, 0x0

    .line 101
    :goto_4
    if-eqz v0, :cond_7

    .line 102
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_7
    goto :goto_2

    .line 99
    :goto_5
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    .line 100
    throw v0

    .line 103
    :cond_8
    if-ne v0, v5, :cond_a

    .line 104
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v12
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_f .. :try_end_f} :catch_6
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_f .. :try_end_f} :catch_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 105
    nop

    .line 106
    :try_start_10
    array-length v0, v11

    invoke-virtual {v12, v11, v6, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 107
    invoke-virtual {v12, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 108
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzad;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 109
    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzad;
    :try_end_10
    .catch Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 110
    :try_start_11
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V
    :try_end_11
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_11 .. :try_end_11} :catch_6
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_11 .. :try_end_11} :catch_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 111
    goto :goto_6

    .line 118
    :catchall_3
    move-exception v0

    goto :goto_7

    .line 112
    :catch_4
    move-exception v0

    .line 113
    :try_start_12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    const-string v11, "Failed to load conditional user property from local database"

    .line 115
    invoke-virtual {v0, v11}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .line 116
    :try_start_13
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    .line 117
    const/4 v0, 0x0

    .line 120
    :goto_6
    if-eqz v0, :cond_9

    .line 121
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_9
    goto/16 :goto_2

    .line 118
    :goto_7
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    .line 119
    throw v0

    .line 122
    :cond_a
    if-ne v0, v3, :cond_b

    .line 123
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzu()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    const-string v11, "Skipping app launch break"

    invoke-virtual {v0, v11}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 124
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    const-string v11, "Unknown record type in local database"

    invoke-virtual {v0, v11}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_13 .. :try_end_13} :catch_6
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_13 .. :try_end_13} :catch_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_5
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    .line 125
    goto/16 :goto_2

    .line 162
    :catchall_4
    move-exception v0

    goto :goto_8

    .line 153
    :catch_5
    move-exception v0

    move-object/from16 v15, v22

    goto/16 :goto_10

    .line 139
    :catch_6
    move-exception v0

    move-object/from16 v15, v22

    goto/16 :goto_12

    .line 126
    :cond_c
    :try_start_14
    const-string v0, "messages"

    const-string v3, "rowid <= ?"

    new-array v5, v9, [Ljava/lang/String;

    .line 127
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v5, v6
    :try_end_14
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_14 .. :try_end_14} :catch_c
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_14 .. :try_end_14} :catch_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14 .. :try_end_14} :catch_a
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    .line 128
    move-object/from16 v11, v22

    :try_start_15
    invoke-virtual {v11, v0, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 129
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_d

    .line 130
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    const-string v3, "Fewer entries removed from local database than expected"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    .line 131
    :cond_d
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 132
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_15
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_15 .. :try_end_15} :catch_9
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_15 .. :try_end_15} :catch_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15 .. :try_end_15} :catch_7
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    .line 133
    nop

    .line 134
    if-eqz v10, :cond_e

    .line 135
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 136
    :cond_e
    if-eqz v11, :cond_f

    .line 137
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 138
    :cond_f
    return-object v4

    .line 162
    :catchall_5
    move-exception v0

    move-object v3, v10

    move-object/from16 v22, v11

    goto/16 :goto_15

    .line 153
    :catch_7
    move-exception v0

    goto :goto_9

    .line 146
    :catch_8
    move-exception v0

    goto :goto_a

    .line 139
    :catch_9
    move-exception v0

    goto :goto_b

    .line 162
    :catchall_6
    move-exception v0

    move-object/from16 v11, v22

    :goto_8
    move-object v3, v10

    goto/16 :goto_15

    .line 153
    :catch_a
    move-exception v0

    move-object/from16 v11, v22

    :goto_9
    move-object v15, v11

    goto :goto_10

    .line 146
    :catch_b
    move-exception v0

    move-object/from16 v11, v22

    :goto_a
    move-object v15, v11

    goto/16 :goto_11

    .line 139
    :catch_c
    move-exception v0

    move-object/from16 v11, v22

    :goto_b
    move-object v15, v11

    goto/16 :goto_12

    .line 162
    :catchall_7
    move-exception v0

    move-object/from16 v11, v22

    goto :goto_c

    .line 153
    :catch_d
    move-exception v0

    move-object/from16 v11, v22

    move-object v15, v11

    goto :goto_d

    .line 146
    :catch_e
    move-exception v0

    move-object/from16 v11, v22

    goto :goto_e

    .line 139
    :catch_f
    move-exception v0

    move-object/from16 v11, v22

    move-object v15, v11

    goto :goto_f

    .line 162
    :catchall_8
    move-exception v0

    move-object v11, v15

    move-object/from16 v22, v11

    :goto_c
    const/4 v3, 0x0

    goto/16 :goto_15

    .line 153
    :catch_10
    move-exception v0

    move-object v11, v15

    :goto_d
    const/4 v10, 0x0

    goto :goto_10

    .line 146
    :catch_11
    move-exception v0

    move-object v11, v15

    :goto_e
    move-object v15, v11

    const/4 v10, 0x0

    goto :goto_11

    .line 139
    :catch_12
    move-exception v0

    move-object v11, v15

    :goto_f
    const/4 v10, 0x0

    goto :goto_12

    .line 162
    :catchall_9
    move-exception v0

    const/4 v3, 0x0

    const/16 v22, 0x0

    goto :goto_15

    .line 153
    :catch_13
    move-exception v0

    const/4 v10, 0x0

    const/4 v15, 0x0

    .line 154
    :goto_10
    if-eqz v15, :cond_10

    :try_start_16
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 155
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 156
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 157
    iput-boolean v9, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzb:Z
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_a

    .line 158
    if-eqz v10, :cond_11

    .line 159
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 160
    :cond_11
    if-eqz v15, :cond_14

    .line 161
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_13

    .line 146
    :catch_14
    move-exception v0

    const/4 v10, 0x0

    const/4 v15, 0x0

    .line 147
    :goto_11
    int-to-long v11, v8

    :try_start_17
    invoke-static {v11, v12}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_a

    .line 148
    add-int/lit8 v8, v8, 0x14

    .line 149
    if-eqz v10, :cond_12

    .line 150
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 151
    :cond_12
    if-eqz v15, :cond_14

    .line 152
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_13

    .line 139
    :catch_15
    move-exception v0

    const/4 v10, 0x0

    const/4 v15, 0x0

    .line 140
    :goto_12
    :try_start_18
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 141
    iput-boolean v9, v1, Lcom/google/android/gms/measurement/internal/zzfo;->zzb:Z
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_a

    .line 142
    if-eqz v10, :cond_13

    .line 143
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 144
    :cond_13
    if-eqz v15, :cond_14

    .line 145
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 167
    :cond_14
    :goto_13
    add-int/lit8 v7, v7, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x5

    goto/16 :goto_0

    .line 162
    :catchall_a
    move-exception v0

    move-object v3, v10

    :goto_14
    move-object/from16 v22, v15

    :goto_15
    if-eqz v3, :cond_15

    .line 163
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 164
    :cond_15
    if-eqz v22, :cond_16

    .line 165
    invoke-virtual/range {v22 .. v22}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 166
    :cond_16
    throw v0

    .line 168
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzu()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    const-string v2, "Failed to read events from database in reasonable time"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    .line 169
    const/4 v2, 0x0

    return-object v2
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzad;)Z
    .locals 2

    .line 242
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzq()Lcom/google/android/gms/measurement/internal/zznd;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Landroid/os/Parcelable;)[B

    move-result-object p1

    .line 243
    array-length v0, p1

    const/high16 v1, 0x20000

    if-le v0, v1, :cond_0

    .line 244
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p1

    .line 245
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzm()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p1

    .line 246
    const-string v0, "Conditional user property too long for local database. Sending directly to service"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    .line 247
    const/4 p1, 0x0

    return p1

    .line 248
    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zzfo;->zza(I[B)Z

    move-result p1

    return p1
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzbg;)Z
    .locals 3

    .line 322
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 323
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzbg;->writeToParcel(Landroid/os/Parcel;I)V

    .line 324
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p1

    .line 325
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 326
    array-length v0, p1

    const/high16 v2, 0x20000

    if-le v0, v2, :cond_0

    .line 327
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p1

    .line 328
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzm()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p1

    .line 329
    const-string v0, "Event is too long for local database. Sending event directly to service"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    .line 330
    return v1

    .line 331
    :cond_0
    invoke-direct {p0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzfo;->zza(I[B)Z

    move-result p1

    return p1
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zznc;)Z
    .locals 3

    .line 332
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 333
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zznc;->writeToParcel(Landroid/os/Parcel;I)V

    .line 334
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p1

    .line 335
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 336
    array-length v0, p1

    const/high16 v2, 0x20000

    if-le v0, v2, :cond_0

    .line 337
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p1

    .line 338
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzm()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p1

    .line 339
    const-string v0, "User property too long for local database. Sending directly to service"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    .line 340
    return v1

    .line 341
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zzfo;->zza(I[B)Z

    move-result p1

    return p1
.end method

.method public final zzaa()V
    .locals 3

    .line 178
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 179
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzad()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 180
    if-eqz v0, :cond_0

    .line 181
    nop

    .line 182
    const-string v1, "messages"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 183
    if-lez v0, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzp()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v1

    const-string v2, "Reset local analytics data. records"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :cond_0
    return-void

    .line 186
    :catch_0
    move-exception v0

    .line 187
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v1

    const-string v2, "Error resetting local analytics data. error"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 188
    return-void
.end method

.method public final zzab()Z
    .locals 2

    .line 189
    const/4 v0, 0x0

    new-array v0, v0, [B

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/measurement/internal/zzfo;->zza(I[B)Z

    move-result v0

    return v0
.end method

.method public final zzac()Z
    .locals 11

    .line 194
    const-string v0, "Error deleting app launch break from local database"

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 195
    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzb:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 196
    return v2

    .line 197
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzae()Z

    move-result v1

    if-nez v1, :cond_1

    .line 198
    return v2

    .line 199
    :cond_1
    nop

    .line 200
    const/4 v1, 0x5

    move v4, v1

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_8

    .line 201
    nop

    .line 202
    const/4 v5, 0x1

    const/4 v6, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzad()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 203
    if-nez v6, :cond_3

    .line 204
    iput-boolean v5, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzb:Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    if-eqz v6, :cond_2

    .line 206
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 207
    :cond_2
    return v2

    .line 208
    :cond_3
    :try_start_1
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 209
    const-string v7, "messages"

    const-string v8, "type == ?"

    new-array v9, v5, [Ljava/lang/String;

    .line 210
    const/4 v10, 0x3

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v2

    .line 211
    invoke-virtual {v6, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 212
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 213
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    if-eqz v6, :cond_4

    .line 215
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 216
    :cond_4
    return v5

    .line 234
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 227
    :catch_0
    move-exception v7

    .line 228
    if-eqz v6, :cond_5

    :try_start_2
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 229
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 230
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v8

    invoke-virtual {v8, v0, v7}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 231
    iput-boolean v5, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzb:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 232
    if-eqz v6, :cond_6

    .line 233
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    .line 222
    :catch_1
    move-exception v5

    .line 223
    int-to-long v7, v4

    :try_start_3
    invoke-static {v7, v8}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 224
    add-int/lit8 v4, v4, 0x14

    .line 225
    if-eqz v6, :cond_6

    .line 226
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    .line 217
    :catch_2
    move-exception v7

    .line 218
    :try_start_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v8

    invoke-virtual {v8, v0, v7}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 219
    iput-boolean v5, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzb:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 220
    if-eqz v6, :cond_6

    .line 221
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 237
    :cond_6
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 234
    :goto_2
    if-eqz v6, :cond_7

    .line 235
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 236
    :cond_7
    throw v0

    .line 238
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    .line 239
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzu()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    .line 240
    const-string v1, "Error deleting app launch break from local database in reasonable time"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    .line 241
    return v2
.end method

.method public final bridge synthetic zzb()Lcom/google/android/gms/common/util/Clock;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 25
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzc()Lcom/google/android/gms/measurement/internal/zzb;
    .locals 1

    .line 26
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzc()Lcom/google/android/gms/measurement/internal/zzb;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzd()Lcom/google/android/gms/measurement/internal/zzae;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 27
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zze()Lcom/google/android/gms/measurement/internal/zzaf;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 28
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzf()Lcom/google/android/gms/measurement/internal/zzba;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 29
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzf()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzg()Lcom/google/android/gms/measurement/internal/zzfl;
    .locals 1

    .line 30
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzg()Lcom/google/android/gms/measurement/internal/zzfl;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzh()Lcom/google/android/gms/measurement/internal/zzfo;
    .locals 1

    .line 31
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzh()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzi()Lcom/google/android/gms/measurement/internal/zzfq;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 32
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzi()Lcom/google/android/gms/measurement/internal/zzfq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzj()Lcom/google/android/gms/measurement/internal/zzfr;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 33
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzk()Lcom/google/android/gms/measurement/internal/zzgd;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 34
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzk()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzl()Lcom/google/android/gms/measurement/internal/zzgy;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 35
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzl()Lcom/google/android/gms/measurement/internal/zzgy;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzm()Lcom/google/android/gms/measurement/internal/zziq;
    .locals 1

    .line 36
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzm()Lcom/google/android/gms/measurement/internal/zziq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzn()Lcom/google/android/gms/measurement/internal/zzkh;
    .locals 1

    .line 37
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzn()Lcom/google/android/gms/measurement/internal/zzkh;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzo()Lcom/google/android/gms/measurement/internal/zzkp;
    .locals 1

    .line 38
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzo()Lcom/google/android/gms/measurement/internal/zzkp;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzp()Lcom/google/android/gms/measurement/internal/zzlx;
    .locals 1

    .line 39
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzp()Lcom/google/android/gms/measurement/internal/zzlx;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzq()Lcom/google/android/gms/measurement/internal/zznd;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 40
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzq()Lcom/google/android/gms/measurement/internal/zznd;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzr()V
    .locals 0

    .line 175
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzr()V

    return-void
.end method

.method public final bridge synthetic zzs()V
    .locals 0

    .line 176
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzs()V

    return-void
.end method

.method public final bridge synthetic zzt()V
    .locals 0

    .line 177
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzt()V

    return-void
.end method

.method protected final zzz()Z
    .locals 1

    .line 193
    const/4 v0, 0x0

    return v0
.end method
