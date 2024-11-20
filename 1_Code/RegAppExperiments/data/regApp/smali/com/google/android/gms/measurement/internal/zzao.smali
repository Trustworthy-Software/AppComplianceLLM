.class final Lcom/google/android/gms/measurement/internal/zzao;
.super Lcom/google/android/gms/measurement/internal/zzmo;
.source "com.google.android.gms:play-services-measurement@@21.5.0"


# static fields
.field private static final zza:[Ljava/lang/String;

.field private static final zzb:[Ljava/lang/String;

.field private static final zzc:[Ljava/lang/String;

.field private static final zzd:[Ljava/lang/String;

.field private static final zze:[Ljava/lang/String;

.field private static final zzg:[Ljava/lang/String;

.field private static final zzh:[Ljava/lang/String;

.field private static final zzi:[Ljava/lang/String;

.field private static final zzj:[Ljava/lang/String;

.field private static final zzk:[Ljava/lang/String;


# instance fields
.field private final zzl:Lcom/google/android/gms/measurement/internal/zzau;

.field private final zzm:Lcom/google/android/gms/measurement/internal/zzmi;


# direct methods
.method static constructor <clinit>()V
    .locals 73

    .line 1154
    const-string v0, "last_bundled_timestamp"

    const-string v1, "ALTER TABLE events ADD COLUMN last_bundled_timestamp INTEGER;"

    const-string v2, "last_bundled_day"

    const-string v3, "ALTER TABLE events ADD COLUMN last_bundled_day INTEGER;"

    const-string v4, "last_sampled_complex_event_id"

    const-string v5, "ALTER TABLE events ADD COLUMN last_sampled_complex_event_id INTEGER;"

    const-string v6, "last_sampling_rate"

    const-string v7, "ALTER TABLE events ADD COLUMN last_sampling_rate INTEGER;"

    const-string v8, "last_exempt_from_sampling"

    const-string v9, "ALTER TABLE events ADD COLUMN last_exempt_from_sampling INTEGER;"

    const-string v10, "current_session_count"

    const-string v11, "ALTER TABLE events ADD COLUMN current_session_count INTEGER;"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzao;->zza:[Ljava/lang/String;

    .line 1155
    const-string v0, "origin"

    const-string v1, "ALTER TABLE user_attributes ADD COLUMN origin TEXT;"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzao;->zzb:[Ljava/lang/String;

    .line 1156
    const-string v1, "app_version"

    const-string v2, "ALTER TABLE apps ADD COLUMN app_version TEXT;"

    const-string v3, "app_store"

    const-string v4, "ALTER TABLE apps ADD COLUMN app_store TEXT;"

    const-string v5, "gmp_version"

    const-string v6, "ALTER TABLE apps ADD COLUMN gmp_version INTEGER;"

    const-string v7, "dev_cert_hash"

    const-string v8, "ALTER TABLE apps ADD COLUMN dev_cert_hash INTEGER;"

    const-string v9, "measurement_enabled"

    const-string v10, "ALTER TABLE apps ADD COLUMN measurement_enabled INTEGER;"

    const-string v11, "last_bundle_start_timestamp"

    const-string v12, "ALTER TABLE apps ADD COLUMN last_bundle_start_timestamp INTEGER;"

    const-string v13, "day"

    const-string v14, "ALTER TABLE apps ADD COLUMN day INTEGER;"

    const-string v15, "daily_public_events_count"

    const-string v16, "ALTER TABLE apps ADD COLUMN daily_public_events_count INTEGER;"

    const-string v17, "daily_events_count"

    const-string v18, "ALTER TABLE apps ADD COLUMN daily_events_count INTEGER;"

    const-string v19, "daily_conversions_count"

    const-string v20, "ALTER TABLE apps ADD COLUMN daily_conversions_count INTEGER;"

    const-string v21, "remote_config"

    const-string v22, "ALTER TABLE apps ADD COLUMN remote_config BLOB;"

    const-string v23, "config_fetched_time"

    const-string v24, "ALTER TABLE apps ADD COLUMN config_fetched_time INTEGER;"

    const-string v25, "failed_config_fetch_time"

    const-string v26, "ALTER TABLE apps ADD COLUMN failed_config_fetch_time INTEGER;"

    const-string v27, "app_version_int"

    const-string v28, "ALTER TABLE apps ADD COLUMN app_version_int INTEGER;"

    const-string v29, "firebase_instance_id"

    const-string v30, "ALTER TABLE apps ADD COLUMN firebase_instance_id TEXT;"

    const-string v31, "daily_error_events_count"

    const-string v32, "ALTER TABLE apps ADD COLUMN daily_error_events_count INTEGER;"

    const-string v33, "daily_realtime_events_count"

    const-string v34, "ALTER TABLE apps ADD COLUMN daily_realtime_events_count INTEGER;"

    const-string v35, "health_monitor_sample"

    const-string v36, "ALTER TABLE apps ADD COLUMN health_monitor_sample TEXT;"

    const-string v37, "android_id"

    const-string v38, "ALTER TABLE apps ADD COLUMN android_id INTEGER;"

    const-string v39, "adid_reporting_enabled"

    const-string v40, "ALTER TABLE apps ADD COLUMN adid_reporting_enabled INTEGER;"

    const-string v41, "ssaid_reporting_enabled"

    const-string v42, "ALTER TABLE apps ADD COLUMN ssaid_reporting_enabled INTEGER;"

    const-string v43, "admob_app_id"

    const-string v44, "ALTER TABLE apps ADD COLUMN admob_app_id TEXT;"

    const-string v45, "linked_admob_app_id"

    const-string v46, "ALTER TABLE apps ADD COLUMN linked_admob_app_id TEXT;"

    const-string v47, "dynamite_version"

    const-string v48, "ALTER TABLE apps ADD COLUMN dynamite_version INTEGER;"

    const-string v49, "safelisted_events"

    const-string v50, "ALTER TABLE apps ADD COLUMN safelisted_events TEXT;"

    const-string v51, "ga_app_id"

    const-string v52, "ALTER TABLE apps ADD COLUMN ga_app_id TEXT;"

    const-string v53, "config_last_modified_time"

    const-string v54, "ALTER TABLE apps ADD COLUMN config_last_modified_time TEXT;"

    const-string v55, "e_tag"

    const-string v56, "ALTER TABLE apps ADD COLUMN e_tag TEXT;"

    const-string v57, "session_stitching_token"

    const-string v58, "ALTER TABLE apps ADD COLUMN session_stitching_token TEXT;"

    const-string v59, "sgtm_upload_enabled"

    const-string v60, "ALTER TABLE apps ADD COLUMN sgtm_upload_enabled INTEGER;"

    const-string v61, "target_os_version"

    const-string v62, "ALTER TABLE apps ADD COLUMN target_os_version INTEGER;"

    const-string v63, "session_stitching_token_hash"

    const-string v64, "ALTER TABLE apps ADD COLUMN session_stitching_token_hash INTEGER;"

    const-string v65, "ad_services_version"

    const-string v66, "ALTER TABLE apps ADD COLUMN ad_services_version INTEGER;"

    const-string v67, "unmatched_first_open_without_ad_id"

    const-string v68, "ALTER TABLE apps ADD COLUMN unmatched_first_open_without_ad_id INTEGER;"

    const-string v69, "npa_metadata_value"

    const-string v70, "ALTER TABLE apps ADD COLUMN npa_metadata_value INTEGER;"

    const-string v71, "attribution_eligibility_status"

    const-string v72, "ALTER TABLE apps ADD COLUMN attribution_eligibility_status INTEGER;"

    filled-new-array/range {v1 .. v72}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzao;->zzc:[Ljava/lang/String;

    .line 1157
    const-string v0, "realtime"

    const-string v1, "ALTER TABLE raw_events ADD COLUMN realtime INTEGER;"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzao;->zzd:[Ljava/lang/String;

    .line 1158
    const-string v0, "retry_count"

    const-string v1, "ALTER TABLE queue ADD COLUMN retry_count INTEGER;"

    const-string v2, "has_realtime"

    const-string v3, "ALTER TABLE queue ADD COLUMN has_realtime INTEGER;"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzao;->zze:[Ljava/lang/String;

    .line 1159
    const-string v0, "ALTER TABLE event_filters ADD COLUMN session_scoped BOOLEAN;"

    const-string v1, "session_scoped"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzao;->zzg:[Ljava/lang/String;

    .line 1160
    const-string v0, "ALTER TABLE property_filters ADD COLUMN session_scoped BOOLEAN;"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzao;->zzh:[Ljava/lang/String;

    .line 1161
    const-string v0, "previous_install_count"

    const-string v1, "ALTER TABLE app2 ADD COLUMN previous_install_count INTEGER;"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzao;->zzi:[Ljava/lang/String;

    .line 1162
    const-string v0, "dma_consent_settings"

    const-string v1, "ALTER TABLE consent_settings ADD COLUMN dma_consent_settings TEXT;"

    const-string v2, "consent_source"

    const-string v3, "ALTER TABLE consent_settings ADD COLUMN consent_source INTEGER;"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzao;->zzj:[Ljava/lang/String;

    .line 1163
    const-string v0, "idempotent"

    const-string v1, "CREATE INDEX IF NOT EXISTS trigger_uris_index ON trigger_uris (app_id);"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzao;->zzk:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzmp;)V
    .locals 2

    .line 1164
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzmo;-><init>(Lcom/google/android/gms/measurement/internal/zzmp;)V

    .line 1165
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzmi;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/measurement/internal/zzmi;-><init>(Lcom/google/android/gms/common/util/Clock;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzao;->zzm:Lcom/google/android/gms/measurement/internal/zzmi;

    .line 1166
    nop

    .line 1167
    nop

    .line 1168
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzau;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zza()Landroid/content/Context;

    move-result-object v0

    const-string v1, "google_app_measurement.db"

    invoke-direct {p1, p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzau;-><init>(Lcom/google/android/gms/measurement/internal/zzao;Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzao;->zzl:Lcom/google/android/gms/measurement/internal/zzau;

    .line 1169
    return-void
.end method

.method private final zza(Ljava/lang/String;[Ljava/lang/String;J)J
    .locals 2

    .line 137
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzao;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 138
    nop

    .line 139
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 140
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 141
    const/4 p2, 0x0

    invoke-interface {v1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    if-eqz v1, :cond_0

    .line 143
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 144
    :cond_0
    return-wide p1

    .line 145
    :cond_1
    nop

    .line 146
    if-eqz v1, :cond_2

    .line 147
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 148
    :cond_2
    return-wide p3

    .line 152
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 149
    :catch_0
    move-exception p2

    .line 150
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p3

    const-string p4, "Database error"

    invoke-virtual {p3, p4, p1, p2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 151
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    :goto_0
    if-eqz v1, :cond_3

    .line 153
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 154
    :cond_3
    throw p1
.end method

.method static synthetic zza(Landroid/database/Cursor;)Lcom/google/android/gms/measurement/internal/zzih;
    .locals 2

    .line 526
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 527
    const/4 v1, 0x1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    .line 528
    invoke-static {v0, p0}, Lcom/google/android/gms/measurement/internal/zzih;->zza(Ljava/lang/String;I)Lcom/google/android/gms/measurement/internal/zzih;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/measurement/internal/zzao;)Lcom/google/android/gms/measurement/internal/zzmi;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzao;->zzm:Lcom/google/android/gms/measurement/internal/zzmi;

    return-object p0
.end method

.method private final zza(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 2

    .line 582
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getType(I)I

    move-result v0

    .line 583
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 591
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p1

    const-string p2, "Loaded invalid unknown value type, ignoring it"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 592
    return-object v1

    .line 589
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p1

    const-string p2, "Loaded invalid blob type value, ignoring it"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    .line 590
    return-object v1

    .line 588
    :pswitch_1
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 587
    :pswitch_2
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 586
    :pswitch_3
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 584
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p1

    const-string p2, "Loaded invalid null value from database"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    .line 585
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final zza(Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzar;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/measurement/internal/zzar<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 593
    nop

    .line 594
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzao;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 595
    invoke-virtual {v1, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 596
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-nez p2, :cond_1

    .line 597
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzp()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p2

    const-string p3, "No data found"

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 598
    if-eqz p1, :cond_0

    .line 599
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 600
    :cond_0
    return-object v0

    .line 601
    :cond_1
    :try_start_2
    invoke-interface {p3, p1}, Lcom/google/android/gms/measurement/internal/zzar;->zza(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object p2
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 602
    if-eqz p1, :cond_2

    .line 603
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 604
    :cond_2
    return-object p2

    .line 605
    :catch_0
    move-exception p2

    goto :goto_0

    .line 609
    :catchall_0
    move-exception p2

    goto :goto_1

    .line 605
    :catch_1
    move-exception p2

    move-object p1, v0

    .line 606
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p3

    const-string v1, "Error querying database."

    invoke-virtual {p3, v1, p2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 607
    if-eqz p1, :cond_3

    .line 608
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 612
    :cond_3
    return-object v0

    .line 609
    :catchall_1
    move-exception p2

    move-object v0, p1

    :goto_1
    if-eqz v0, :cond_4

    .line 610
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 611
    :cond_4
    throw p2
.end method

.method private final zza(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 658
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzao;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 659
    nop

    .line 660
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 661
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 662
    const/4 p2, 0x0

    invoke-interface {v1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 663
    if-eqz v1, :cond_0

    .line 664
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 665
    :cond_0
    return-object p1

    .line 666
    :cond_1
    nop

    .line 667
    if-eqz v1, :cond_2

    .line 668
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 669
    :cond_2
    return-object p3

    .line 673
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 670
    :catch_0
    move-exception p2

    .line 671
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p3

    const-string v0, "Database error"

    invoke-virtual {p3, v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 672
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 673
    :goto_0
    if-eqz v1, :cond_3

    .line 674
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 675
    :cond_3
    throw p1
.end method

.method private static zza(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1233
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1234
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1235
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1236
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1237
    :cond_0
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 1238
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-void

    .line 1239
    :cond_1
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_2

    .line 1240
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    return-void

    .line 1241
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid value type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final zza(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 5

    .line 1504
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzao;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1505
    invoke-virtual {p3, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1506
    if-nez v1, :cond_0

    .line 1507
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p3

    .line 1508
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzfr;->zzh()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p3

    const-string v0, "Value of the primary key is not set."

    .line 1509
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1510
    return-void

    .line 1511
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 1512
    invoke-virtual {v0, p1, p3, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    .line 1513
    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 1514
    nop

    .line 1515
    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-virtual {v0, p1, v1, p3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    .line 1516
    const-wide/16 v2, -0x1

    cmp-long p3, v0, v2

    if-nez p3, :cond_1

    .line 1517
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p3

    .line 1518
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p3

    const-string v0, "Failed to insert/update table (got -1). key"

    .line 1519
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1520
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1521
    invoke-virtual {p3, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1522
    :cond_1
    return-void

    .line 1523
    :catch_0
    move-exception p3

    .line 1524
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    .line 1525
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    .line 1526
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 1527
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .line 1528
    const-string v1, "Error storing into table. key"

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1529
    return-void
.end method

.method private final zza(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzew$zzb;)Z
    .locals 5

    .line 1615
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzmo;->zzak()V

    .line 1616
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 1617
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1618
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1619
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzew$zzb;->zzf()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1620
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    .line 1621
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzu()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    .line 1622
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 1623
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 1624
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzew$zzb;->zzl()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzew$zzb;->zzb()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 1625
    const-string v2, "Event filter had no event name. Audience definition ignored. appId, audienceId, filterId"

    invoke-virtual {v0, v2, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1626
    return v1

    .line 1627
    :cond_1
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzhd;->zzbv()[B

    move-result-object v0

    .line 1628
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1629
    const-string v4, "app_id"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1630
    const-string v4, "audience_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1631
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzew$zzb;->zzl()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzew$zzb;->zzb()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    :cond_2
    move-object p2, v2

    :goto_0
    const-string v4, "filter_id"

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1632
    const-string p2, "event_name"

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzew$zzb;->zzf()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1633
    nop

    .line 1634
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzew$zzb;->zzm()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzew$zzb;->zzj()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    goto :goto_1

    :cond_3
    move-object p2, v2

    .line 1635
    :goto_1
    const-string p3, "session_scoped"

    invoke-virtual {v3, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1636
    const-string p2, "data"

    invoke-virtual {v3, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1637
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzao;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    .line 1638
    const-string p3, "event_filters"

    .line 1639
    const/4 v0, 0x5

    invoke-virtual {p2, p3, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p2

    .line 1640
    const-wide/16 v2, -0x1

    cmp-long p2, p2, v2

    if-nez p2, :cond_4

    .line 1641
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p2

    .line 1642
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p2

    const-string p3, "Failed to insert event filter (got -1). appId"

    .line 1643
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1644
    :cond_4
    nop

    .line 1650
    const/4 p1, 0x1

    return p1

    .line 1645
    :catch_0
    move-exception p2

    .line 1646
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p3

    .line 1647
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p3

    .line 1648
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Error storing event filter. appId"

    invoke-virtual {p3, v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1649
    return v1
.end method

.method private final zza(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzew$zze;)Z
    .locals 5

    .line 1651
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzmo;->zzak()V

    .line 1652
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 1653
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1654
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1655
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzew$zze;->zze()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1656
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    .line 1657
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzu()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    .line 1658
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 1659
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 1660
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzew$zze;->zzi()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzew$zze;->zza()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 1661
    const-string v2, "Property filter had no property name. Audience definition ignored. appId, audienceId, filterId"

    invoke-virtual {v0, v2, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1662
    return v1

    .line 1663
    :cond_1
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzhd;->zzbv()[B

    move-result-object v0

    .line 1664
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1665
    const-string v4, "app_id"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1666
    const-string v4, "audience_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1667
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzew$zze;->zzi()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzew$zze;->zza()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    :cond_2
    move-object p2, v2

    :goto_0
    const-string v4, "filter_id"

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1668
    const-string p2, "property_name"

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzew$zze;->zze()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1669
    nop

    .line 1670
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzew$zze;->zzj()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzew$zze;->zzh()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    goto :goto_1

    :cond_3
    move-object p2, v2

    .line 1671
    :goto_1
    const-string p3, "session_scoped"

    invoke-virtual {v3, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1672
    const-string p2, "data"

    invoke-virtual {v3, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1673
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzao;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    .line 1674
    const-string p3, "property_filters"

    .line 1675
    const/4 v0, 0x5

    invoke-virtual {p2, p3, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p2

    .line 1676
    const-wide/16 v2, -0x1

    cmp-long p2, p2, v2

    if-nez p2, :cond_4

    .line 1677
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p2

    .line 1678
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p2

    const-string p3, "Failed to insert property filter (got -1). appId"

    .line 1679
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1680
    return v1

    .line 1681
    :cond_4
    nop

    .line 1687
    const/4 p1, 0x1

    return p1

    .line 1682
    :catch_0
    move-exception p2

    .line 1683
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p3

    .line 1684
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p3

    .line 1685
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Error storing property filter. appId"

    invoke-virtual {p3, v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1686
    return v1
.end method

.method static bridge synthetic zzaa()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzao;->zzi:[Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic zzab()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzao;->zzc:[Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic zzac()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzao;->zzj:[Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic zzad()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzao;->zza:[Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic zzae()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzao;->zzg:[Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic zzaf()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzao;->zzh:[Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic zzag()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzao;->zze:[Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic zzah()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzao;->zzd:[Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic zzai()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzao;->zzk:[Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic zzaj()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzao;->zzb:[Ljava/lang/String;

    return-object v0
.end method

.method private final zzan()Z
    .locals 2

    .line 1747
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zza()Landroid/content/Context;

    move-result-object v0

    .line 1748
    nop

    .line 1749
    const-string v1, "google_app_measurement.db"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method private final zzb(Ljava/lang/String;[Ljava/lang/String;)J
    .locals 3

    .line 122
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzao;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 123
    nop

    .line 124
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 125
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 126
    const/4 p2, 0x0

    invoke-interface {v1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    if-eqz v1, :cond_0

    .line 128
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 129
    :cond_0
    return-wide p1

    .line 130
    :cond_1
    :try_start_1
    new-instance p2, Landroid/database/sqlite/SQLiteException;

    const-string v0, "Database returned empty set"

    invoke-direct {p2, v0}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 131
    :catch_0
    move-exception p2

    .line 132
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    const-string v2, "Database error"

    invoke-virtual {v0, v2, p1, p2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 133
    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 134
    :goto_0
    if-eqz v1, :cond_2

    .line 135
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 136
    :cond_2
    throw p1
.end method

.method private final zzb(Ljava/lang/String;Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 1530
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1531
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzmo;->zzak()V

    .line 1532
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 1533
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzao;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1534
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "select count(1) from audience_filter_values where app_id=?"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v3

    .line 1535
    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzao;->zzb(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1536
    nop

    .line 1542
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v4

    .line 1543
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzbi;->zzaf:Lcom/google/android/gms/measurement/internal/zzfi;

    invoke-virtual {v4, p1, v5}, Lcom/google/android/gms/measurement/internal/zzaf;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfi;)I

    move-result v4

    .line 1544
    const/16 v5, 0x7d0

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1545
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1546
    nop

    .line 1547
    int-to-long v5, v4

    cmp-long v2, v2, v5

    if-gtz v2, :cond_0

    .line 1548
    return v1

    .line 1549
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1550
    move v3, v1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 1551
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 1552
    if-nez v5, :cond_1

    .line 1553
    return v1

    .line 1554
    :cond_1
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1555
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1556
    :cond_2
    const-string p2, ","

    invoke-static {p2, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, ")"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1557
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "audience_id in (select audience_id from audience_filter_values where app_id=? and audience_id not in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, " order by rowid desc limit -1 offset ?)"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1558
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {p1, v2}, [Ljava/lang/String;

    move-result-object p1

    .line 1559
    const-string v2, "audience_filter_values"

    invoke-virtual {v0, v2, p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 1560
    if-lez p1, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    return v1

    .line 1537
    :catch_0
    move-exception p2

    .line 1538
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    .line 1539
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    .line 1540
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Database error querying filters. appId"

    invoke-virtual {v0, v2, p1, p2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1541
    return v1
.end method


# virtual methods
.method public final b_()J
    .locals 6

    .line 33
    nop

    .line 34
    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzao;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 35
    const-string v4, "select rowid from raw_events order by rowid desc limit 1;"

    invoke-virtual {v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 36
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 37
    nop

    .line 38
    if-eqz v2, :cond_0

    .line 39
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 40
    :cond_0
    return-wide v0

    .line 41
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    if-eqz v2, :cond_2

    .line 43
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 44
    :cond_2
    return-wide v0

    .line 49
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 45
    :catch_0
    move-exception v3

    .line 46
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v4

    const-string v5, "Error querying raw events"

    invoke-virtual {v4, v5, v3}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    if-eqz v2, :cond_3

    .line 48
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 52
    :cond_3
    return-wide v0

    .line 49
    :goto_0
    if-eqz v2, :cond_4

    .line 50
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 51
    :cond_4
    throw v0
.end method

.method public final c_()J
    .locals 4

    .line 118
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const-string v3, "select max(bundle_end_timestamp) from queue"

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzao;->zza(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final d_()J
    .locals 4

    .line 119
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const-string v3, "select max(timestamp) from raw_events"

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzao;->zza(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method final e_()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    .line 155
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzao;->zzl:Lcom/google/android/gms/measurement/internal/zzau;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzau;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzu()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v1

    const-string v2, "Error opening database"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 159
    throw v0
.end method

.method public final f_()Ljava/lang/String;
    .locals 6

    .line 637
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzao;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 638
    nop

    .line 639
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "select app_id from queue order by has_realtime desc, rowid asc limit 1;"

    .line 640
    invoke-virtual {v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 641
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 642
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 643
    if-eqz v0, :cond_0

    .line 644
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 645
    :cond_0
    return-object v1

    .line 646
    :cond_1
    nop

    .line 647
    if-eqz v0, :cond_2

    .line 648
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 649
    :cond_2
    return-object v1

    .line 650
    :catch_0
    move-exception v2

    goto :goto_0

    .line 655
    :catchall_0
    move-exception v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_1

    .line 650
    :catch_1
    move-exception v2

    move-object v0, v1

    .line 651
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v3

    const-string v4, "Database error getting next bundle app id"

    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 652
    if-eqz v0, :cond_3

    .line 653
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 654
    :cond_3
    return-object v1

    .line 655
    :catchall_1
    move-exception v1

    :goto_1
    if-eqz v0, :cond_4

    .line 656
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 657
    :cond_4
    throw v1
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzmo;->zzak()V

    .line 5
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzao;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 6
    const-string v1, "conditional_properties"

    const-string v2, "app_id=? and name=?"

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    return p1

    .line 9
    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v1

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzi()Lcom/google/android/gms/measurement/internal/zzfq;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/android/gms/measurement/internal/zzfq;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 14
    const-string v2, "Error deleting conditional property"

    invoke-virtual {v1, v2, p1, p2, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    const/4 p1, 0x0

    return p1
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzfi$zzj;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 54
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzmo;->zzak()V

    .line 55
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfi$zzj;->zzx()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzbv()[B

    move-result-object v0

    .line 58
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzml;->g_()Lcom/google/android/gms/measurement/internal/zzmz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/zzmz;->zza([B)J

    move-result-wide v1

    .line 59
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 60
    const-string v4, "app_id"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfi$zzj;->zzx()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v4, "metadata_fingerprint"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 62
    const-string v4, "metadata"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 63
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzao;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 64
    const-string v4, "raw_events_metadata"

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-virtual {v0, v4, v5, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    nop

    .line 72
    return-wide v1

    .line 66
    :catch_0
    move-exception v0

    .line 67
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v1

    .line 68
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v1

    .line 69
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfi$zzj;->zzx()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 70
    const-string v2, "Error storing raw event metadata. appId"

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 71
    throw v0
.end method

.method public final zza(Ljava/lang/String;)J
    .locals 4

    .line 16
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzmo;->zzak()V

    .line 19
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzao;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v1

    .line 21
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzbi;->zzp:Lcom/google/android/gms/measurement/internal/zzfi;

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/measurement/internal/zzaf;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfi;)I

    move-result v1

    .line 22
    const v2, 0xf4240

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 23
    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 24
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 25
    const-string v2, "raw_events"

    const-string v3, "rowid in (select rowid from raw_events where app_id=? order by rowid desc limit -1 offset ?)"

    filled-new-array {p1, v1}, [Ljava/lang/String;

    move-result-object v1

    .line 26
    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, p1

    .line 27
    return-wide v0

    .line 28
    :catch_0
    move-exception v0

    .line 29
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v1

    .line 30
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v1

    .line 31
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Error deleting over the limit events. appId"

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 32
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/Long;)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/google/android/gms/internal/measurement/zzfi$zze;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 208
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 209
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzmo;->zzak()V

    .line 210
    nop

    .line 211
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzao;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 212
    const-string v2, "select main_event, children_to_process from main_event_params where app_id=? and event_id=?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 213
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v3, v6

    .line 214
    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_1

    .line 216
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzp()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p1

    const-string p2, "Main event not found"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 217
    if-eqz v1, :cond_0

    .line 218
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 219
    :cond_0
    return-object v0

    .line 220
    :cond_1
    :try_start_2
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    .line 221
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 222
    :try_start_3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfi$zze;->zze()Lcom/google/android/gms/internal/measurement/zzfi$zze$zza;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/google/android/gms/measurement/internal/zzmz;->zza(Lcom/google/android/gms/internal/measurement/zzkm;[B)Lcom/google/android/gms/internal/measurement/zzkm;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfi$zze$zza;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzix$zzb;->zzab()Lcom/google/android/gms/internal/measurement/zzkj;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzix;

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfi$zze;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 223
    nop

    .line 232
    :try_start_4
    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 233
    if-eqz v1, :cond_2

    .line 234
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 235
    :cond_2
    return-object p1

    .line 224
    :catch_0
    move-exception v2

    .line 225
    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v3

    .line 226
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v3

    const-string v4, "Failed to merge main event. appId, eventId"

    .line 227
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 228
    invoke-virtual {v3, v4, p1, p2, v2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 229
    if-eqz v1, :cond_3

    .line 230
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 231
    :cond_3
    return-object v0

    .line 236
    :catch_1
    move-exception p1

    goto :goto_0

    .line 240
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 236
    :catch_2
    move-exception p1

    move-object v1, v0

    .line 237
    :goto_0
    :try_start_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p2

    const-string v2, "Error selecting main event"

    invoke-virtual {p2, v2, p1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 238
    if-eqz v1, :cond_4

    .line 239
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 243
    :cond_4
    return-object v0

    .line 240
    :catchall_1
    move-exception p1

    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_5

    .line 241
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 242
    :cond_5
    throw p1
.end method

.method public final zza(JLjava/lang/String;JZZZZZ)Lcom/google/android/gms/measurement/internal/zzap;
    .locals 22

    .line 412
    const-string v0, "daily_realtime_events_count"

    const-string v1, "daily_error_events_count"

    const-string v2, "daily_conversions_count"

    const-string v3, "daily_public_events_count"

    const-string v4, "daily_events_count"

    const-string v5, "day"

    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 413
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 414
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzmo;->zzak()V

    .line 415
    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v6

    .line 416
    new-instance v7, Lcom/google/android/gms/measurement/internal/zzap;

    invoke-direct {v7}, Lcom/google/android/gms/measurement/internal/zzap;-><init>()V

    .line 417
    nop

    .line 418
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzao;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15

    .line 419
    const-string v10, "apps"

    const/4 v9, 0x6

    new-array v11, v9, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v5, v11, v14

    const/4 v13, 0x1

    aput-object v4, v11, v13

    const/4 v12, 0x2

    aput-object v3, v11, v12

    const/4 v9, 0x3

    aput-object v2, v11, v9

    const/4 v8, 0x4

    aput-object v1, v11, v8

    const/4 v8, 0x5

    aput-object v0, v11, v8

    const-string v16, "app_id=?"

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 420
    move v8, v9

    move-object v9, v15

    move v8, v12

    move-object/from16 v12, v16

    move v8, v13

    move-object/from16 v13, v17

    move v8, v14

    move-object/from16 v14, v18

    move-object/from16 v21, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v20

    invoke-virtual/range {v9 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 421
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-nez v10, :cond_1

    .line 422
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    .line 423
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzu()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    const-string v1, "Not updating daily counts, app is not known. appId"

    .line 424
    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 425
    nop

    .line 426
    if-eqz v9, :cond_0

    .line 427
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 428
    :cond_0
    return-object v7

    .line 429
    :cond_1
    :try_start_2
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 430
    cmp-long v8, v10, p1

    if-nez v8, :cond_2

    .line 431
    const/4 v8, 0x1

    invoke-interface {v9, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    iput-wide v10, v7, Lcom/google/android/gms/measurement/internal/zzap;->zzb:J

    .line 432
    const/4 v8, 0x2

    invoke-interface {v9, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    iput-wide v10, v7, Lcom/google/android/gms/measurement/internal/zzap;->zza:J

    .line 433
    const/4 v8, 0x3

    invoke-interface {v9, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    iput-wide v10, v7, Lcom/google/android/gms/measurement/internal/zzap;->zzc:J

    .line 434
    const/4 v8, 0x4

    invoke-interface {v9, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    iput-wide v10, v7, Lcom/google/android/gms/measurement/internal/zzap;->zzd:J

    .line 435
    const/4 v8, 0x5

    invoke-interface {v9, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    iput-wide v10, v7, Lcom/google/android/gms/measurement/internal/zzap;->zze:J

    .line 436
    :cond_2
    if-eqz p6, :cond_3

    .line 437
    iget-wide v10, v7, Lcom/google/android/gms/measurement/internal/zzap;->zzb:J

    add-long v10, v10, p4

    iput-wide v10, v7, Lcom/google/android/gms/measurement/internal/zzap;->zzb:J

    .line 438
    :cond_3
    if-eqz p7, :cond_4

    .line 439
    iget-wide v10, v7, Lcom/google/android/gms/measurement/internal/zzap;->zza:J

    add-long v10, v10, p4

    iput-wide v10, v7, Lcom/google/android/gms/measurement/internal/zzap;->zza:J

    .line 440
    :cond_4
    if-eqz p8, :cond_5

    .line 441
    iget-wide v10, v7, Lcom/google/android/gms/measurement/internal/zzap;->zzc:J

    add-long v10, v10, p4

    iput-wide v10, v7, Lcom/google/android/gms/measurement/internal/zzap;->zzc:J

    .line 442
    :cond_5
    if-eqz p9, :cond_6

    .line 443
    iget-wide v10, v7, Lcom/google/android/gms/measurement/internal/zzap;->zzd:J

    add-long v10, v10, p4

    iput-wide v10, v7, Lcom/google/android/gms/measurement/internal/zzap;->zzd:J

    .line 444
    :cond_6
    if-eqz p10, :cond_7

    .line 445
    iget-wide v10, v7, Lcom/google/android/gms/measurement/internal/zzap;->zze:J

    add-long v10, v10, p4

    iput-wide v10, v7, Lcom/google/android/gms/measurement/internal/zzap;->zze:J

    .line 446
    :cond_7
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 447
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v5, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 448
    iget-wide v10, v7, Lcom/google/android/gms/measurement/internal/zzap;->zza:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v8, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 449
    iget-wide v10, v7, Lcom/google/android/gms/measurement/internal/zzap;->zzb:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v8, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 450
    iget-wide v3, v7, Lcom/google/android/gms/measurement/internal/zzap;->zzc:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 451
    iget-wide v2, v7, Lcom/google/android/gms/measurement/internal/zzap;->zzd:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 452
    iget-wide v1, v7, Lcom/google/android/gms/measurement/internal/zzap;->zze:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 453
    const-string v0, "apps"

    const-string v1, "app_id=?"

    move-object/from16 v2, v21

    invoke-virtual {v2, v0, v8, v1, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 454
    nop

    .line 455
    if-eqz v9, :cond_8

    .line 456
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 457
    :cond_8
    return-object v7

    .line 466
    :catchall_0
    move-exception v0

    move-object v8, v9

    goto :goto_1

    .line 458
    :catch_0
    move-exception v0

    move-object v8, v9

    goto :goto_0

    .line 466
    :catchall_1
    move-exception v0

    const/4 v8, 0x0

    goto :goto_1

    .line 458
    :catch_1
    move-exception v0

    const/4 v8, 0x0

    .line 459
    :goto_0
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v1

    .line 460
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v1

    const-string v2, "Error updating daily counts. appId"

    .line 461
    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 462
    nop

    .line 463
    if-eqz v8, :cond_9

    .line 464
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 465
    :cond_9
    return-object v7

    .line 466
    :catchall_2
    move-exception v0

    :goto_1
    if-eqz v8, :cond_a

    .line 467
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 468
    :cond_a
    throw v0
.end method

.method public final zza(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/measurement/internal/zzap;
    .locals 11

    .line 411
    const-wide/16 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move/from16 v8, p6

    move/from16 v10, p8

    invoke-virtual/range {v0 .. v10}, Lcom/google/android/gms/measurement/internal/zzao;->zza(JLjava/lang/String;JZZZZZ)Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    return-object v0
.end method

.method public final zza(J)Ljava/lang/String;
    .locals 4

    .line 613
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 614
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzmo;->zzak()V

    .line 615
    nop

    .line 616
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzao;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 617
    const-string v2, "select app_id from apps where app_id in (select distinct app_id from raw_events) and config_fetched_time < ? order by failed_config_fetch_time limit 1;"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    .line 618
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v3, p2

    .line 619
    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 620
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_1

    .line 621
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzp()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p2

    const-string v1, "No expired configs for apps with pending events"

    invoke-virtual {p2, v1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 622
    if-eqz p1, :cond_0

    .line 623
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 624
    :cond_0
    return-object v0

    .line 625
    :cond_1
    :try_start_2
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 626
    if-eqz p1, :cond_2

    .line 627
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 628
    :cond_2
    return-object p2

    .line 629
    :catch_0
    move-exception p2

    goto :goto_0

    .line 633
    :catchall_0
    move-exception p2

    goto :goto_1

    .line 629
    :catch_1
    move-exception p2

    move-object p1, v0

    .line 630
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v1

    const-string v2, "Error selecting expired configs"

    invoke-virtual {v1, v2, p2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 631
    if-eqz p1, :cond_3

    .line 632
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 636
    :cond_3
    return-object v0

    .line 633
    :catchall_1
    move-exception p2

    move-object v0, p1

    :goto_1
    if-eqz v0, :cond_4

    .line 634
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 635
    :cond_4
    throw p2
.end method

.method public final zza(Ljava/lang/String;II)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/google/android/gms/internal/measurement/zzfi$zzj;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 676
    move/from16 v1, p3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 677
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzmo;->zzak()V

    .line 678
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez p2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 679
    if-lez v1, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 680
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 681
    nop

    .line 682
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzao;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 683
    const-string v6, "queue"

    const/4 v0, 0x3

    new-array v7, v0, [Ljava/lang/String;

    const-string v0, "rowid"

    aput-object v0, v7, v3

    const-string v0, "data"

    aput-object v0, v7, v2

    const-string v0, "retry_count"

    const/4 v14, 0x2

    aput-object v0, v7, v14

    const-string v8, "app_id=?"

    filled-new-array/range {p1 .. p1}, [Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "rowid"

    .line 684
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    .line 685
    invoke-virtual/range {v5 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 686
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_3

    .line 687
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 688
    if-eqz v4, :cond_2

    .line 689
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 690
    :cond_2
    return-object v0

    .line 691
    :cond_3
    :try_start_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 692
    move v6, v3

    .line 693
    :goto_2
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 694
    :try_start_2
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 695
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzml;->g_()Lcom/google/android/gms/measurement/internal/zzmz;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/google/android/gms/measurement/internal/zzmz;->zzc([B)[B

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 696
    nop

    .line 702
    :try_start_3
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_4

    array-length v9, v0
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/2addr v9, v6

    if-gt v9, v1, :cond_d

    .line 703
    :cond_4
    :try_start_4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfi$zzj;->zzu()Lcom/google/android/gms/internal/measurement/zzfi$zzj$zza;

    move-result-object v9

    invoke-static {v9, v0}, Lcom/google/android/gms/measurement/internal/zzmz;->zza(Lcom/google/android/gms/internal/measurement/zzkm;[B)Lcom/google/android/gms/internal/measurement/zzkm;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzfi$zzj$zza;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 704
    nop

    .line 710
    :try_start_5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznp;->zza()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 711
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v10

    sget-object v11, Lcom/google/android/gms/measurement/internal/zzbi;->zzcq:Lcom/google/android/gms/measurement/internal/zzfi;

    invoke-virtual {v10, v11}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Lcom/google/android/gms/measurement/internal/zzfi;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 712
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_a

    .line 713
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Pair;

    iget-object v10, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzfi$zzj;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzix$zzb;->zzab()Lcom/google/android/gms/internal/measurement/zzkj;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzix;

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzfi$zzj;

    .line 714
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfi$zzj;->zzac()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzfi$zzj;->zzac()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 715
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfi$zzj;->zzab()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzfi$zzj;->zzab()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 716
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfi$zzj;->zzas()Z

    move-result v12

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzfi$zzj;->zzas()Z

    move-result v13

    if-ne v12, v13, :cond_9

    .line 717
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfi$zzj;->zzad()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzfi$zzj;->zzad()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 718
    nop

    .line 719
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfi$zzj;->zzaq()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-string v13, "_npa"

    const-wide/16 v15, -0x1

    if-eqz v12, :cond_6

    :try_start_6
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/measurement/zzfi$zzn;

    .line 720
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzfi$zzn;->zzg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 721
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzfi$zzn;->zzc()J

    move-result-wide v17

    .line 722
    goto :goto_4

    .line 723
    :cond_5
    const/4 v2, 0x1

    goto :goto_3

    .line 719
    :cond_6
    move-wide/from16 v17, v15

    .line 724
    :goto_4
    nop

    .line 725
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzfi$zzj;->zzaq()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzfi$zzn;

    .line 726
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfi$zzn;->zzg()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 727
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfi$zzn;->zzc()J

    move-result-wide v15

    .line 728
    goto :goto_6

    .line 729
    :cond_7
    goto :goto_5

    .line 730
    :cond_8
    :goto_6
    cmp-long v2, v17, v15

    if-nez v2, :cond_9

    const/4 v2, 0x1

    goto :goto_7

    :cond_9
    move v2, v3

    .line 731
    :goto_7
    if-eqz v2, :cond_d

    .line 732
    :cond_a
    invoke-interface {v4, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_b

    .line 733
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v9, v2}, Lcom/google/android/gms/internal/measurement/zzfi$zzj$zza;->zzh(I)Lcom/google/android/gms/internal/measurement/zzfi$zzj$zza;

    .line 734
    :cond_b
    array-length v0, v0

    add-int/2addr v6, v0

    .line 735
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzix$zzb;->zzab()Lcom/google/android/gms/internal/measurement/zzkj;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzix;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfi$zzj;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 705
    :catch_0
    move-exception v0

    .line 706
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v2

    .line 707
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v2

    const-string v7, "Failed to merge queued bundle. appId"

    .line 708
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v2, v7, v8, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 709
    goto :goto_8

    .line 697
    :catch_1
    move-exception v0

    .line 698
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v2

    .line 699
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v2

    const-string v7, "Failed to unzip queued bundle. appId"

    .line 700
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v2, v7, v8, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 701
    nop

    .line 736
    :goto_8
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v0, :cond_d

    if-le v6, v1, :cond_c

    goto :goto_9

    :cond_c
    const/4 v2, 0x1

    goto/16 :goto_2

    .line 737
    :cond_d
    :goto_9
    nop

    .line 738
    if-eqz v4, :cond_e

    .line 739
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 740
    :cond_e
    return-object v5

    .line 747
    :catchall_0
    move-exception v0

    goto :goto_a

    .line 741
    :catch_2
    move-exception v0

    .line 742
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v1

    const-string v2, "Error querying bundles. appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 743
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 744
    if-eqz v4, :cond_f

    .line 745
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 746
    :cond_f
    return-object v0

    .line 747
    :goto_a
    if-eqz v4, :cond_10

    .line 748
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 749
    :cond_10
    throw v0
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzad;",
            ">;"
        }
    .end annotation

    .line 750
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 751
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 752
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzmo;->zzak()V

    .line 753
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 754
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 755
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "app_id=?"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 756
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 757
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 758
    const-string p2, " and origin=?"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 759
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 760
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "*"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 761
    const-string p2, " and name glob ?"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    invoke-interface {v0, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    .line 763
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzao;->zza(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 39
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzad;",
            ">;"
        }
    .end annotation

    .line 764
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 765
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzmo;->zzak()V

    .line 766
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 767
    nop

    .line 768
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzao;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 769
    const-string v3, "conditional_properties"

    const/16 v4, 0xd

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "app_id"

    const/4 v11, 0x0

    aput-object v5, v4, v11

    const-string v5, "origin"

    const/4 v12, 0x1

    aput-object v5, v4, v12

    const-string v5, "name"

    const/4 v13, 0x2

    aput-object v5, v4, v13

    const-string v5, "value"

    const/4 v14, 0x3

    aput-object v5, v4, v14

    const-string v5, "active"

    const/4 v15, 0x4

    aput-object v5, v4, v15

    const-string v5, "trigger_event_name"

    const/4 v10, 0x5

    aput-object v5, v4, v10

    const-string v5, "trigger_timeout"

    const/4 v9, 0x6

    aput-object v5, v4, v9

    const-string v5, "timed_out_event"

    const/4 v8, 0x7

    aput-object v5, v4, v8

    const-string v5, "creation_timestamp"

    const/16 v7, 0x8

    aput-object v5, v4, v7

    const-string v5, "triggered_event"

    const/16 v6, 0x9

    aput-object v5, v4, v6

    const-string v5, "triggered_timestamp"

    const/16 v1, 0xa

    aput-object v5, v4, v1

    const-string v5, "time_to_live"

    const/16 v1, 0xb

    aput-object v5, v4, v1

    const-string v5, "expired_event"

    const/16 v1, 0xc

    aput-object v5, v4, v1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string v21, "rowid"

    .line 770
    const-string v22, "1001"

    .line 771
    move-object/from16 v5, p1

    move v1, v6

    move-object/from16 v6, p2

    move v1, v7

    move-object/from16 v7, v19

    move v1, v8

    move-object/from16 v8, v20

    move v1, v9

    move-object/from16 v9, v21

    move v1, v10

    move-object/from16 v10, v22

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 772
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_1

    .line 773
    nop

    .line 774
    if-eqz v2, :cond_0

    .line 775
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 776
    :cond_0
    return-object v0

    .line 777
    :cond_1
    :goto_0
    :try_start_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0x3e8

    if-lt v3, v4, :cond_2

    .line 778
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v1

    .line 779
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v1

    const-string v3, "Read more than the max allowed conditional properties, ignoring extra"

    .line 780
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 781
    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 782
    goto/16 :goto_2

    .line 783
    :cond_2
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 784
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 785
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 786
    move-object/from16 v9, p0

    invoke-direct {v9, v2, v14}, Lcom/google/android/gms/measurement/internal/zzao;->zza(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v8

    .line 787
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_3

    move/from16 v22, v12

    goto :goto_1

    :cond_3
    move/from16 v22, v11

    .line 788
    :goto_1
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 789
    const/4 v6, 0x6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    .line 790
    nop

    .line 791
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzml;->g_()Lcom/google/android/gms/measurement/internal/zzmz;

    move-result-object v4

    const/4 v7, 0x7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzbg;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v4, v1, v6}, Lcom/google/android/gms/measurement/internal/zzmz;->zza([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/measurement/internal/zzbg;

    .line 792
    const/16 v6, 0x8

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    .line 793
    nop

    .line 794
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzml;->g_()Lcom/google/android/gms/measurement/internal/zzmz;

    move-result-object v4

    const/16 v11, 0x9

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzbg;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzmz;->zza([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v4

    move-object/from16 v29, v4

    check-cast v29, Lcom/google/android/gms/measurement/internal/zzbg;

    .line 795
    const/16 v6, 0xa

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 796
    const/16 v7, 0xb

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v31

    .line 797
    nop

    .line 798
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzml;->g_()Lcom/google/android/gms/measurement/internal/zzmz;

    move-result-object v4

    const/16 v11, 0xc

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzbg;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzmz;->zza([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v4

    move-object/from16 v30, v4

    check-cast v30, Lcom/google/android/gms/measurement/internal/zzbg;

    .line 799
    new-instance v33, Lcom/google/android/gms/measurement/internal/zznc;

    move-object/from16 v4, v33

    const/16 v34, 0xb

    const/16 v35, 0xa

    const/16 v36, 0x8

    const/16 v37, 0x7

    const/16 v38, 0x6

    move-wide/from16 v6, v16

    move-object v9, v10

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/measurement/internal/zznc;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 800
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzad;

    move-object/from16 v16, v4

    move-object/from16 v17, v3

    move-object/from16 v18, v10

    move-object/from16 v19, v33

    move-wide/from16 v20, v27

    move-object/from16 v23, v24

    move-object/from16 v24, v1

    move-object/from16 v27, v29

    move-wide/from16 v28, v31

    invoke-direct/range {v16 .. v30}, Lcom/google/android/gms/measurement/internal/zzad;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zznc;JZLjava/lang/String;Lcom/google/android/gms/measurement/internal/zzbg;JLcom/google/android/gms/measurement/internal/zzbg;JLcom/google/android/gms/measurement/internal/zzbg;)V

    .line 801
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 802
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_5

    .line 803
    :goto_2
    nop

    .line 804
    if-eqz v2, :cond_4

    .line 805
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 806
    :cond_4
    return-object v0

    .line 802
    :cond_5
    const/4 v1, 0x5

    const/4 v11, 0x0

    goto/16 :goto_0

    .line 813
    :catchall_0
    move-exception v0

    move-object v1, v2

    goto :goto_4

    .line 807
    :catch_0
    move-exception v0

    move-object v1, v2

    goto :goto_3

    .line 813
    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    goto :goto_4

    .line 807
    :catch_1
    move-exception v0

    const/4 v1, 0x0

    .line 808
    :goto_3
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v2

    const-string v3, "Error querying conditional user property value"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 809
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 810
    if-eqz v1, :cond_6

    .line 811
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 812
    :cond_6
    return-object v0

    .line 813
    :catchall_2
    move-exception v0

    :goto_4
    if-eqz v1, :cond_7

    .line 814
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 815
    :cond_7
    throw v0
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzbc;)V
    .locals 5

    .line 1471
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1472
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 1473
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzmo;->zzak()V

    .line 1474
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1475
    const-string v1, "app_id"

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzbc;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1476
    const-string v1, "name"

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzbc;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1477
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzbc;->zzc:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "lifetime_count"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1478
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzbc;->zzd:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "current_bundle_count"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1479
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzbc;->zzf:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "last_fire_timestamp"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1480
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzbc;->zzg:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "last_bundled_timestamp"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1481
    const-string v1, "last_bundled_day"

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzbc;->zzh:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1482
    const-string v1, "last_sampled_complex_event_id"

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzbc;->zzi:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1483
    const-string v1, "last_sampling_rate"

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzbc;->zzj:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1484
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzbc;->zze:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "current_session_count"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1485
    nop

    .line 1486
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzbc;->zzk:Ljava/lang/Boolean;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzbc;->zzk:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1487
    const-wide/16 v3, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    .line 1488
    :cond_0
    move-object v1, v2

    :goto_0
    const-string v3, "last_exempt_from_sampling"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1489
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzao;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1490
    const-string v3, "events"

    .line 1491
    const/4 v4, 0x5

    invoke-virtual {v1, v3, v2, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    .line 1492
    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 1493
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    .line 1494
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    const-string v1, "Failed to insert/update event aggregates (got -1). appId"

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzbc;->zza:Ljava/lang/String;

    .line 1495
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1496
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1497
    :cond_1
    return-void

    .line 1498
    :catch_0
    move-exception v0

    .line 1499
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v1

    .line 1500
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzbc;->zza:Ljava/lang/String;

    .line 1501
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 1502
    const-string v2, "Error storing event aggregates. appId"

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1503
    return-void
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzh;)V
    .locals 8

    .line 1367
    const-string v0, "apps"

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1368
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 1369
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzmo;->zzak()V

    .line 1370
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzx()Ljava/lang/String;

    move-result-object v1

    .line 1371
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1372
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1373
    const-string v3, "app_id"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1374
    const-string v3, "app_instance_id"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzy()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1375
    const-string v3, "gmp_app_id"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzac()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1376
    const-string v3, "resettable_device_id_hash"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzae()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1377
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzq()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "last_bundle_index"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1378
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzr()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "last_bundle_start_timestamp"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1379
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzp()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "last_bundle_end_timestamp"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1380
    const-string v3, "app_version"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzaa()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1381
    const-string v3, "app_store"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzz()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1382
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzo()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "gmp_version"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1383
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzl()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "dev_cert_hash"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1384
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzak()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "measurement_enabled"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1385
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzk()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "day"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1386
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzi()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "daily_public_events_count"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1387
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzh()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "daily_events_count"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1388
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzf()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "daily_conversions_count"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1389
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zze()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "config_fetched_time"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1390
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzn()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "failed_config_fetch_time"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1391
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzc()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "app_version_int"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1392
    const-string v3, "firebase_instance_id"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzab()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1393
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzg()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "daily_error_events_count"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1394
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzj()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "daily_realtime_events_count"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1395
    const-string v3, "health_monitor_sample"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzad()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1396
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzb()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "android_id"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1397
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzaj()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "adid_reporting_enabled"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1398
    const-string v3, "admob_app_id"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzv()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzm()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "dynamite_version"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1400
    const-string v3, "session_stitching_token"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzaf()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1401
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzam()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "sgtm_upload_enabled"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1402
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzt()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "target_os_version"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1403
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzs()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "session_stitching_token_hash"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1404
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpg;->zza()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzbi;->zzcf:Lcom/google/android/gms/measurement/internal/zzfi;

    invoke-virtual {v3, v1, v4}, Lcom/google/android/gms/measurement/internal/zzaf;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfi;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1405
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zza()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "ad_services_version"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1406
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzd()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "attribution_eligibility_status"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1407
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznk;->zza()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1408
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzbi;->zzcr:Lcom/google/android/gms/measurement/internal/zzfi;

    invoke-virtual {v3, v1, v4}, Lcom/google/android/gms/measurement/internal/zzaf;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfi;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1409
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzan()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "unmatched_first_open_without_ad_id"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1410
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzag()Ljava/util/List;

    move-result-object v3

    .line 1411
    const-string v4, "safelisted_events"

    if-eqz v3, :cond_3

    .line 1412
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1413
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfr;->zzu()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v3

    const-string v5, "Safelisted events should not be an empty list. appId"

    invoke-virtual {v3, v5, v1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 1414
    :cond_2
    nop

    .line 1415
    const-string v5, ","

    invoke-static {v5, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    .line 1416
    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1417
    :cond_3
    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznq;->zza()Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_4

    .line 1418
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v3

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzbi;->zzbp:Lcom/google/android/gms/measurement/internal/zzfi;

    invoke-virtual {v3, v6}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Lcom/google/android/gms/measurement/internal/zzfi;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1419
    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1420
    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1421
    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznp;->zza()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzbi;->zzcm:Lcom/google/android/gms/measurement/internal/zzfi;

    invoke-virtual {v3, v1, v4}, Lcom/google/android/gms/measurement/internal/zzaf;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfi;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1422
    const-string v3, "npa_metadata_value"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzu()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1423
    :cond_5
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzao;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    .line 1424
    const-string v3, "app_id = ?"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    int-to-long v3, v3

    .line 1425
    const-wide/16 v6, 0x0

    cmp-long v3, v3, v6

    if-nez v3, :cond_6

    .line 1426
    nop

    .line 1427
    const/4 v3, 0x5

    invoke-virtual {p1, v0, v5, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2

    .line 1428
    const-wide/16 v4, -0x1

    cmp-long p1, v2, v4

    if-nez p1, :cond_6

    .line 1429
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p1

    .line 1430
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p1

    const-string v0, "Failed to insert/update app (got -1). appId"

    .line 1431
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1432
    :cond_6
    return-void

    .line 1433
    :catch_0
    move-exception p1

    .line 1434
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    const-string v2, "Error storing app. appId"

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1, p1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1435
    return-void
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzay;)V
    .locals 2

    .line 1460
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznp;->zza()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzbi;->zzcm:Lcom/google/android/gms/measurement/internal/zzfi;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Lcom/google/android/gms/measurement/internal/zzfi;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1462
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1463
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1464
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 1465
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzmo;->zzak()V

    .line 1466
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1467
    const-string v1, "app_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1468
    const-string p1, "dma_consent_settings"

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzay;->zzf()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1469
    const-string p1, "consent_settings"

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/measurement/internal/zzao;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 1470
    return-void

    .line 1461
    :cond_1
    :goto_0
    return-void
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzih;)V
    .locals 5

    .line 1436
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1437
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1438
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 1439
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzmo;->zzak()V

    .line 1440
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1441
    const-string v1, "app_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1442
    const-string v2, "consent_state"

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzih;->zze()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1443
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznp;->zza()Z

    move-result v2

    const-string v3, "consent_settings"

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v2

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzbi;->zzcm:Lcom/google/android/gms/measurement/internal/zzfi;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Lcom/google/android/gms/measurement/internal/zzfi;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1444
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzih;->zza()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "consent_source"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1445
    invoke-direct {p0, v3, v1, v0}, Lcom/google/android/gms/measurement/internal/zzao;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V

    return-void

    .line 1446
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzao;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    .line 1447
    nop

    .line 1448
    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-virtual {p2, v3, v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    .line 1449
    const-wide/16 v2, -0x1

    cmp-long p2, v0, v2

    if-nez p2, :cond_1

    .line 1450
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p2

    .line 1451
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p2

    const-string v0, "Failed to insert/update consent setting (got -1). appId"

    .line 1452
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1453
    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1454
    :cond_1
    return-void

    .line 1455
    :catch_0
    move-exception p2

    .line 1456
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    .line 1457
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    .line 1458
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Error storing consent setting. appId, error"

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1459
    return-void
.end method

.method final zza(Ljava/lang/String;Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzew$zza;",
            ">;)V"
        }
    .end annotation

    .line 1242
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const-string v3, "app_id=? and audience_id=?"

    const-string v4, "event_filters"

    const-string v5, "app_id=?"

    const-string v6, "property_filters"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1243
    const/4 v8, 0x0

    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_7

    .line 1244
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzew$zza;

    .line 1245
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzix;->zzby()Lcom/google/android/gms/internal/measurement/zzix$zzb;

    move-result-object v9

    .line 1246
    move-object v11, v9

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzix$zzb;

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzew$zza$zza;

    .line 1247
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzew$zza$zza;->zza()I

    move-result v11

    if-eqz v11, :cond_4

    .line 1248
    const/4 v11, 0x0

    .line 1249
    :goto_1
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzew$zza$zza;->zza()I

    move-result v12

    if-ge v11, v12, :cond_4

    .line 1250
    invoke-virtual {v9, v11}, Lcom/google/android/gms/internal/measurement/zzew$zza$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzew$zzb;

    move-result-object v12

    .line 1251
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzix;->zzby()Lcom/google/android/gms/internal/measurement/zzix$zzb;

    move-result-object v12

    .line 1252
    move-object v13, v12

    check-cast v13, Lcom/google/android/gms/internal/measurement/zzix$zzb;

    check-cast v12, Lcom/google/android/gms/internal/measurement/zzew$zzb$zza;

    .line 1253
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzhf;->clone()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/measurement/zzix$zzb;

    check-cast v13, Lcom/google/android/gms/internal/measurement/zzew$zzb$zza;

    .line 1254
    nop

    .line 1255
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzew$zzb$zza;->zzb()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/google/android/gms/measurement/internal/zzii;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1256
    if-eqz v14, :cond_0

    .line 1257
    invoke-virtual {v13, v14}, Lcom/google/android/gms/internal/measurement/zzew$zzb$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzew$zzb$zza;

    .line 1258
    const/4 v14, 0x1

    goto :goto_2

    .line 1256
    :cond_0
    const/4 v14, 0x0

    .line 1259
    :goto_2
    const/4 v15, 0x0

    :goto_3
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzew$zzb$zza;->zza()I

    move-result v10

    if-ge v15, v10, :cond_2

    .line 1260
    invoke-virtual {v12, v15}, Lcom/google/android/gms/internal/measurement/zzew$zzb$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzew$zzc;

    move-result-object v10

    .line 1261
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzew$zzc;->zze()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/google/android/gms/measurement/internal/zzik;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1262
    if-eqz v7, :cond_1

    .line 1263
    nop

    .line 1264
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzix;->zzby()Lcom/google/android/gms/internal/measurement/zzix$zzb;

    move-result-object v10

    .line 1265
    move-object v14, v10

    check-cast v14, Lcom/google/android/gms/internal/measurement/zzix$zzb;

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzew$zzc$zza;

    invoke-virtual {v10, v7}, Lcom/google/android/gms/internal/measurement/zzew$zzc$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzew$zzc$zza;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzix$zzb;->zzab()Lcom/google/android/gms/internal/measurement/zzkj;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzix;

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzew$zzc;

    .line 1266
    invoke-virtual {v13, v15, v7}, Lcom/google/android/gms/internal/measurement/zzew$zzb$zza;->zza(ILcom/google/android/gms/internal/measurement/zzew$zzc;)Lcom/google/android/gms/internal/measurement/zzew$zzb$zza;

    .line 1267
    const/4 v14, 0x1

    .line 1268
    :cond_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 1269
    :cond_2
    if-eqz v14, :cond_3

    .line 1270
    invoke-virtual {v9, v11, v13}, Lcom/google/android/gms/internal/measurement/zzew$zza$zza;->zza(ILcom/google/android/gms/internal/measurement/zzew$zzb$zza;)Lcom/google/android/gms/internal/measurement/zzew$zza$zza;

    move-result-object v9

    .line 1271
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzix$zzb;->zzab()Lcom/google/android/gms/internal/measurement/zzkj;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzix;

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzew$zza;

    invoke-interface {v2, v8, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1272
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1273
    :cond_4
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzew$zza$zza;->zzb()I

    move-result v7

    if-eqz v7, :cond_6

    .line 1274
    const/4 v7, 0x0

    .line 1275
    :goto_4
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzew$zza$zza;->zzb()I

    move-result v10

    if-ge v7, v10, :cond_6

    .line 1276
    invoke-virtual {v9, v7}, Lcom/google/android/gms/internal/measurement/zzew$zza$zza;->zzb(I)Lcom/google/android/gms/internal/measurement/zzew$zze;

    move-result-object v10

    .line 1277
    nop

    .line 1278
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzew$zze;->zze()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzij;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1279
    if-eqz v11, :cond_5

    .line 1280
    nop

    .line 1281
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzix;->zzby()Lcom/google/android/gms/internal/measurement/zzix$zzb;

    move-result-object v10

    .line 1282
    move-object v12, v10

    check-cast v12, Lcom/google/android/gms/internal/measurement/zzix$zzb;

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzew$zze$zza;

    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/measurement/zzew$zze$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzew$zze$zza;

    move-result-object v10

    .line 1283
    invoke-virtual {v9, v7, v10}, Lcom/google/android/gms/internal/measurement/zzew$zza$zza;->zza(ILcom/google/android/gms/internal/measurement/zzew$zze$zza;)Lcom/google/android/gms/internal/measurement/zzew$zza$zza;

    move-result-object v9

    .line 1284
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzix$zzb;->zzab()Lcom/google/android/gms/internal/measurement/zzkj;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzix;

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzew$zza;

    invoke-interface {v2, v8, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1285
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 1286
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 1287
    :cond_7
    nop

    .line 1288
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzmo;->zzak()V

    .line 1289
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 1290
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1291
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1292
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzao;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    .line 1293
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1294
    nop

    .line 1295
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzmo;->zzak()V

    .line 1296
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 1297
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1298
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzao;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .line 1299
    filled-new-array/range {p1 .. p1}, [Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v6, v5, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1300
    filled-new-array/range {p1 .. p1}, [Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v4, v5, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1301
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_12

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzew$zza;

    .line 1302
    nop

    .line 1303
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzmo;->zzak()V

    .line 1304
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 1305
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1306
    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1307
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzew$zza;->zzg()Z

    move-result v9

    if-nez v9, :cond_8

    .line 1308
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfr;->zzu()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v8

    const-string v9, "Audience with no ID. appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1309
    goto :goto_5

    .line 1310
    :cond_8
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzew$zza;->zza()I

    move-result v9

    .line 1311
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzew$zza;->zze()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzew$zzb;

    .line 1312
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzew$zzb;->zzl()Z

    move-result v11

    if-nez v11, :cond_9

    .line 1313
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v8

    .line 1314
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfr;->zzu()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v8

    const-string v10, "Event filter with no ID. Audience definition ignored. appId, audienceId"

    .line 1315
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 1316
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 1317
    invoke-virtual {v8, v10, v11, v9}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1318
    goto :goto_5

    .line 1319
    :cond_9
    goto :goto_6

    .line 1320
    :cond_a
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzew$zza;->zzf()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzew$zze;

    .line 1321
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzew$zze;->zzi()Z

    move-result v11

    if-nez v11, :cond_b

    .line 1322
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v8

    .line 1323
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfr;->zzu()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v8

    const-string v10, "Property filter with no ID. Audience definition ignored. appId, audienceId"

    .line 1324
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 1325
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 1326
    invoke-virtual {v8, v10, v11, v9}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1327
    goto/16 :goto_5

    .line 1328
    :cond_b
    goto :goto_7

    .line 1329
    :cond_c
    nop

    .line 1330
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzew$zza;->zze()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzew$zzb;

    .line 1331
    invoke-direct {v1, v0, v9, v11}, Lcom/google/android/gms/measurement/internal/zzao;->zza(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzew$zzb;)Z

    move-result v11

    if-nez v11, :cond_d

    .line 1332
    nop

    .line 1333
    const/4 v10, 0x0

    goto :goto_9

    .line 1334
    :cond_d
    goto :goto_8

    .line 1330
    :cond_e
    const/4 v10, 0x1

    .line 1335
    :goto_9
    if-eqz v10, :cond_10

    .line 1336
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzew$zza;->zzf()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_10

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzew$zze;

    .line 1337
    invoke-direct {v1, v0, v9, v11}, Lcom/google/android/gms/measurement/internal/zzao;->zza(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzew$zze;)Z

    move-result v11

    if-nez v11, :cond_f

    .line 1338
    nop

    .line 1339
    const/4 v10, 0x0

    goto :goto_b

    .line 1340
    :cond_f
    goto :goto_a

    .line 1341
    :cond_10
    :goto_b
    if-nez v10, :cond_11

    .line 1342
    nop

    .line 1343
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzmo;->zzak()V

    .line 1344
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 1345
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1346
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzao;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .line 1347
    const/4 v10, 0x2

    new-array v11, v10, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v0, v11, v12

    .line 1348
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    aput-object v12, v11, v13

    .line 1349
    invoke-virtual {v8, v6, v3, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1350
    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    .line 1351
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x1

    aput-object v9, v10, v12

    .line 1352
    invoke-virtual {v8, v4, v3, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_c

    .line 1341
    :cond_11
    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 1353
    :goto_c
    goto/16 :goto_5

    .line 1354
    :cond_12
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1355
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzew$zza;

    .line 1356
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzew$zza;->zzg()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzew$zza;->zza()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_e

    :cond_13
    const/4 v4, 0x0

    :goto_e
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1357
    goto :goto_d

    .line 1358
    :cond_14
    invoke-direct {v1, v0, v3}, Lcom/google/android/gms/measurement/internal/zzao;->zzb(Ljava/lang/String;Ljava/util/List;)Z

    .line 1359
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1360
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1361
    return-void

    .line 1362
    :catchall_0
    move-exception v0

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1363
    throw v0
.end method

.method final zza(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1176
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 1177
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzmo;->zzak()V

    .line 1178
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1179
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotZero(I)I

    .line 1180
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzao;->zzan()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1181
    return-void

    .line 1182
    :cond_0
    nop

    .line 1183
    const-string v0, ","

    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1184
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT COUNT(1) FROM queue WHERE rowid IN "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND retry_count =  2147483647 LIMIT 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzao;->zzb(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 1185
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    .line 1186
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzu()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    .line 1187
    const-string v1, "The number of upload retries exceeds the limit. Will remain unchanged."

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    .line 1188
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzao;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1189
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UPDATE queue SET retry_count = IFNULL(retry_count, 0) + 1 WHERE rowid IN "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " AND (retry_count IS NULL OR retry_count < 2147483647)"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1190
    return-void

    .line 1191
    :catch_0
    move-exception p1

    .line 1192
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    const-string v1, "Error incrementing retry count. error"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1193
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzfi$zzj;Z)Z
    .locals 6

    .line 1569
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 1570
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzmo;->zzak()V

    .line 1571
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1572
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfi$zzj;->zzx()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1573
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfi$zzj;->zzbe()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    .line 1574
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzao;->zzv()V

    .line 1575
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    .line 1576
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfi$zzj;->zzl()J

    move-result-wide v2

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzaf;->zzm()J

    move-result-wide v4

    sub-long v4, v0, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 1577
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfi$zzj;->zzl()J

    move-result-wide v2

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzaf;->zzm()J

    move-result-wide v4

    add-long/2addr v4, v0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 1578
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v2

    .line 1579
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzu()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v2

    .line 1580
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfi$zzj;->zzx()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1581
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1582
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfi$zzj;->zzl()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 1583
    const-string v4, "Storing bundle outside of the max uploading time span. appId, now, timestamp"

    invoke-virtual {v2, v4, v3, v0, v1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1584
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzbv()[B

    move-result-object v0

    .line 1585
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzml;->g_()Lcom/google/android/gms/measurement/internal/zzmz;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/zzmz;->zzb([B)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1586
    nop

    .line 1593
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzp()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v2

    array-length v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Saving bundle, size"

    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1594
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1595
    const-string v3, "app_id"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfi$zzj;->zzx()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1596
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfi$zzj;->zzl()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "bundle_end_timestamp"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1597
    const-string v3, "data"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1598
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "has_realtime"

    invoke-virtual {v2, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1599
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfi$zzj;->zzbl()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1600
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfi$zzj;->zzf()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "retry_count"

    invoke-virtual {v2, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1601
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzao;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    .line 1602
    const-string v0, "queue"

    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 1603
    const-wide/16 v4, -0x1

    cmp-long p2, v2, v4

    if-nez p2, :cond_3

    .line 1604
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p2

    .line 1605
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p2

    const-string v0, "Failed to insert bundle (got -1). appId"

    .line 1606
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfi$zzj;->zzx()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1607
    return v1

    .line 1608
    :cond_3
    nop

    .line 1614
    const/4 p1, 0x1

    return p1

    .line 1609
    :catch_0
    move-exception p2

    .line 1610
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    .line 1611
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    .line 1612
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfi$zzj;->zzx()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Error storing bundle. appId"

    invoke-virtual {v0, v2, p1, p2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1613
    return v1

    .line 1587
    :catch_1
    move-exception p2

    .line 1588
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    .line 1589
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    .line 1590
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfi$zzj;->zzx()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 1591
    const-string v2, "Data loss. Failed to serialize bundle. appId"

    invoke-virtual {v0, v2, p1, p2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1592
    return v1
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzad;)Z
    .locals 5

    .line 1782
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1783
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 1784
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzmo;->zzak()V

    .line 1785
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzad;->zza:Ljava/lang/String;

    .line 1786
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1787
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzad;->zzc:Lcom/google/android/gms/measurement/internal/zznc;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zznc;->zza:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzao;->zze(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzne;

    move-result-object v1

    .line 1788
    if-nez v1, :cond_0

    .line 1789
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    .line 1790
    const-string v2, "SELECT COUNT(1) FROM conditional_properties WHERE app_id=?"

    invoke-direct {p0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzao;->zzb(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v1

    .line 1791
    const-wide/16 v3, 0x3e8

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 1792
    const/4 p1, 0x0

    return p1

    .line 1793
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1794
    const-string v2, "app_id"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1795
    const-string v2, "origin"

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzad;->zzb:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1796
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzad;->zzc:Lcom/google/android/gms/measurement/internal/zznc;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zznc;->zza:Ljava/lang/String;

    const-string v3, "name"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1797
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzad;->zzc:Lcom/google/android/gms/measurement/internal/zznc;

    .line 1798
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zznc;->zza()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1799
    const-string v3, "value"

    invoke-static {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzao;->zza(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1800
    iget-boolean v2, p1, Lcom/google/android/gms/measurement/internal/zzad;->zze:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "active"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1801
    const-string v2, "trigger_event_name"

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzad;->zzf:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1802
    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzad;->zzh:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "trigger_timeout"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1803
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzq()Lcom/google/android/gms/measurement/internal/zznd;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzad;->zzg:Lcom/google/android/gms/measurement/internal/zzbg;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Landroid/os/Parcelable;)[B

    move-result-object v2

    const-string v3, "timed_out_event"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1804
    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzad;->zzd:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "creation_timestamp"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1805
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzq()Lcom/google/android/gms/measurement/internal/zznd;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzad;->zzi:Lcom/google/android/gms/measurement/internal/zzbg;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Landroid/os/Parcelable;)[B

    move-result-object v2

    const-string v3, "triggered_event"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1806
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzad;->zzc:Lcom/google/android/gms/measurement/internal/zznc;

    iget-wide v2, v2, Lcom/google/android/gms/measurement/internal/zznc;->zzb:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "triggered_timestamp"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1807
    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzad;->zzj:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "time_to_live"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1808
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzq()Lcom/google/android/gms/measurement/internal/zznd;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzad;->zzk:Lcom/google/android/gms/measurement/internal/zzbg;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Landroid/os/Parcelable;)[B

    move-result-object p1

    const-string v2, "expired_event"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1809
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzao;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    .line 1810
    const-string v2, "conditional_properties"

    .line 1811
    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-virtual {p1, v2, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v1

    .line 1812
    const-wide/16 v3, -0x1

    cmp-long p1, v1, v3

    if-nez p1, :cond_1

    .line 1813
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p1

    .line 1814
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p1

    const-string v1, "Failed to insert/update conditional user property (got -1)"

    .line 1815
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1816
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1817
    :cond_1
    goto :goto_0

    .line 1818
    :catch_0
    move-exception p1

    .line 1819
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v1

    .line 1820
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v1

    .line 1821
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Error storing conditional user property"

    invoke-virtual {v1, v2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1822
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzaz;JZ)Z
    .locals 4

    .line 1688
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 1689
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzmo;->zzak()V

    .line 1690
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1691
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaz;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1692
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzml;->g_()Lcom/google/android/gms/measurement/internal/zzmz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzmz;->zza(Lcom/google/android/gms/measurement/internal/zzaz;)Lcom/google/android/gms/internal/measurement/zzfi$zze;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzbv()[B

    move-result-object v0

    .line 1693
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1694
    const-string v2, "app_id"

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzaz;->zza:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1695
    const-string v2, "name"

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzaz;->zzb:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1696
    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzaz;->zzc:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "timestamp"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1697
    const-string v2, "metadata_fingerprint"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1698
    const-string p2, "data"

    invoke-virtual {v1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1699
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "realtime"

    invoke-virtual {v1, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1700
    const/4 p2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzao;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p3

    .line 1701
    const-string p4, "raw_events"

    const/4 v0, 0x0

    invoke-virtual {p3, p4, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p3

    .line 1702
    const-wide/16 v0, -0x1

    cmp-long p3, p3, v0

    if-nez p3, :cond_0

    .line 1703
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p3

    .line 1704
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p3

    const-string p4, "Failed to insert raw event (got -1). appId"

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaz;->zza:Ljava/lang/String;

    .line 1705
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, p4, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1706
    return p2

    .line 1707
    :cond_0
    nop

    .line 1713
    const/4 p1, 0x1

    return p1

    .line 1708
    :catch_0
    move-exception p3

    .line 1709
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p4

    .line 1710
    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p4

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzaz;->zza:Ljava/lang/String;

    .line 1711
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Error storing raw event. appId"

    invoke-virtual {p4, v0, p1, p3}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1712
    return p2
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzne;)Z
    .locals 8

    .line 1851
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1852
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 1853
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzmo;->zzak()V

    .line 1854
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzne;->zza:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzne;->zzc:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzao;->zze(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzne;

    move-result-object v0

    .line 1855
    if-nez v0, :cond_2

    .line 1856
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzne;->zzc:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zznd;->zzh(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1857
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzne;->zza:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 1858
    const-string v2, "select count(1) from user_attributes where app_id=? and name not like \'!_%\' escape \'!\'"

    invoke-direct {p0, v2, v0}, Lcom/google/android/gms/measurement/internal/zzao;->zzb(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v2

    .line 1859
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzne;->zza:Ljava/lang/String;

    .line 1860
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzbi;->zzag:Lcom/google/android/gms/measurement/internal/zzfi;

    const/16 v6, 0x19

    const/16 v7, 0x64

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfi;II)I

    move-result v0

    .line 1861
    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    .line 1862
    return v1

    .line 1863
    :cond_0
    goto :goto_0

    .line 1864
    :cond_1
    const-string v0, "_npa"

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzne;->zzc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1865
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzne;->zza:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzne;->zzb:Ljava/lang/String;

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 1866
    const-string v2, "select count(1) from user_attributes where app_id=? and origin=? AND name like \'!_%\' escape \'!\'"

    invoke-direct {p0, v2, v0}, Lcom/google/android/gms/measurement/internal/zzao;->zzb(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v2

    .line 1867
    const-wide/16 v4, 0x19

    cmp-long v0, v2, v4

    if-ltz v0, :cond_2

    .line 1868
    return v1

    .line 1869
    :cond_2
    :goto_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1870
    const-string v1, "app_id"

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzne;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1871
    const-string v1, "origin"

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzne;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1872
    const-string v1, "name"

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzne;->zzc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1873
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzne;->zzd:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "set_timestamp"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1874
    const-string v1, "value"

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzne;->zze:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzao;->zza(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1875
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzao;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1876
    const-string v2, "user_attributes"

    .line 1877
    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    .line 1878
    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 1879
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    .line 1880
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    const-string v1, "Failed to insert/update user property (got -1). appId"

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzne;->zza:Ljava/lang/String;

    .line 1881
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1882
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1883
    :cond_3
    goto :goto_1

    .line 1884
    :catch_0
    move-exception v0

    .line 1885
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v1

    .line 1886
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzne;->zza:Ljava/lang/String;

    .line 1887
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Error storing user property. appId"

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1888
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method final zza(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 11

    .line 1823
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 1824
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzmo;->zzak()V

    .line 1825
    new-instance v10, Lcom/google/android/gms/measurement/internal/zzaz;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzao;->zzu:Lcom/google/android/gms/measurement/internal/zzhf;

    const-string v2, ""

    const-string v4, "dep"

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v0, v10

    move-object v3, p1

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/measurement/internal/zzaz;-><init>(Lcom/google/android/gms/measurement/internal/zzhf;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    .line 1826
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzml;->g_()Lcom/google/android/gms/measurement/internal/zzmz;

    move-result-object p2

    invoke-virtual {p2, v10}, Lcom/google/android/gms/measurement/internal/zzmz;->zza(Lcom/google/android/gms/measurement/internal/zzaz;)Lcom/google/android/gms/internal/measurement/zzfi$zze;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzhd;->zzbv()[B

    move-result-object p2

    .line 1827
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    .line 1828
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzp()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    .line 1829
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzi()Lcom/google/android/gms/measurement/internal/zzfq;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    array-length v2, p2

    .line 1830
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1831
    const-string v3, "Saving default event parameters, appId, data size"

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1832
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1833
    const-string v1, "app_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1834
    const-string v1, "parameters"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1835
    const/4 p2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzao;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1836
    const-string v2, "default_event_params"

    .line 1837
    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    .line 1838
    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1839
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    .line 1840
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    const-string v1, "Failed to insert default event parameters (got -1). appId"

    .line 1841
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1842
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1843
    return p2

    .line 1844
    :cond_0
    nop

    .line 1850
    const/4 p1, 0x1

    return p1

    .line 1845
    :catch_0
    move-exception v0

    .line 1846
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v1

    .line 1847
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v1

    .line 1848
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Error storing default event parameters. appId"

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1849
    return p2
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzmh;)Z
    .locals 6

    .line 1714
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 1715
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzmo;->zzak()V

    .line 1716
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1717
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1718
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    .line 1719
    iget-wide v2, p2, Lcom/google/android/gms/measurement/internal/zzmh;->zzb:J

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzaf;->zzm()J

    move-result-wide v4

    sub-long v4, v0, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    iget-wide v2, p2, Lcom/google/android/gms/measurement/internal/zzmh;->zzb:J

    .line 1720
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzaf;->zzm()J

    move-result-wide v4

    add-long/2addr v4, v0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 1721
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v2

    .line 1722
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzu()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v2

    .line 1723
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1724
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v4, p2, Lcom/google/android/gms/measurement/internal/zzmh;->zzb:J

    .line 1725
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 1726
    const-string v4, "Storing trigger URI outside of the max retention time span. appId, now, timestamp"

    invoke-virtual {v2, v4, v3, v0, v1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1727
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzp()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    const-string v1, "Saving trigger URI"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    .line 1728
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1729
    const-string v1, "app_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1730
    const-string v1, "trigger_uri"

    iget-object v2, p2, Lcom/google/android/gms/measurement/internal/zzmh;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1731
    iget v1, p2, Lcom/google/android/gms/measurement/internal/zzmh;->zzc:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "source"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1732
    iget-wide v1, p2, Lcom/google/android/gms/measurement/internal/zzmh;->zzb:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v1, "timestamp_millis"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1733
    const/4 p2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzao;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1734
    const-string v2, "trigger_uris"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 1735
    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 1736
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    .line 1737
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    const-string v1, "Failed to insert trigger URI (got -1). appId"

    .line 1738
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1739
    return p2

    .line 1740
    :cond_2
    nop

    .line 1746
    const/4 p1, 0x1

    return p1

    .line 1741
    :catch_0
    move-exception v0

    .line 1742
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v1

    .line 1743
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v1

    .line 1744
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Error storing trigger URI. appId"

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1745
    return p2
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/Long;JLcom/google/android/gms/internal/measurement/zzfi$zze;)Z
    .locals 4

    .line 1751
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 1752
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzmo;->zzak()V

    .line 1753
    invoke-static {p5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1754
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1755
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1756
    invoke-virtual {p5}, Lcom/google/android/gms/internal/measurement/zzhd;->zzbv()[B

    move-result-object p5

    .line 1757
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    .line 1758
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzp()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    .line 1759
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzi()Lcom/google/android/gms/measurement/internal/zzfq;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    array-length v2, p5

    .line 1760
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1761
    const-string v3, "Saving complex main event, appId, data size"

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1762
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1763
    const-string v1, "app_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1764
    const-string v1, "event_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1765
    const-string p2, "children_to_process"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1766
    const-string p2, "main_event"

    invoke-virtual {v0, p2, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1767
    const/4 p2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzao;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p3

    .line 1768
    const-string p4, "main_event_params"

    .line 1769
    const/4 p5, 0x0

    const/4 v1, 0x5

    invoke-virtual {p3, p4, p5, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p3

    .line 1770
    const-wide/16 v0, -0x1

    cmp-long p3, p3, v0

    if-nez p3, :cond_0

    .line 1771
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p3

    .line 1772
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p3

    const-string p4, "Failed to insert complex main event (got -1). appId"

    .line 1773
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p3, p4, p5}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1774
    return p2

    .line 1775
    :cond_0
    nop

    .line 1781
    const/4 p1, 0x1

    return p1

    .line 1776
    :catch_0
    move-exception p3

    .line 1777
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p4

    .line 1778
    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p4

    .line 1779
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p5, "Error storing complex main event. appId"

    invoke-virtual {p4, p5, p1, p3}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1780
    return p2
.end method

.method public final zzb(Ljava/lang/String;)J
    .locals 3

    .line 120
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 121
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x0

    const-string v2, "select count(1) from events where app_id=? and name not like \'!_%\' escape \'!\'"

    invoke-direct {p0, v2, p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzao;->zza(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected final zzb(Ljava/lang/String;Ljava/lang/String;)J
    .locals 13

    .line 73
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 76
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzmo;->zzak()V

    .line 77
    nop

    .line 78
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzao;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 80
    const-wide/16 v1, 0x0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "select "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from app2 where app_id=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    .line 81
    const-wide/16 v5, -0x1

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzao;->zza(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide v3
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    cmp-long v7, v3, v5

    const-string v8, "app2"

    const-string v9, "app_id"

    if-nez v7, :cond_1

    .line 83
    nop

    .line 84
    :try_start_1
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 85
    invoke-virtual {v3, v9, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v4, "first_open_count"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 87
    const-string v4, "previous_install_count"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 88
    nop

    .line 89
    const/4 v4, 0x0

    const/4 v7, 0x5

    invoke-virtual {v0, v8, v4, v3, v7}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v3

    .line 90
    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v3

    .line 92
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v3

    const-string v4, "Failed to insert column (got -1). appId"

    .line 93
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v4, v7, p2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 95
    return-wide v5

    .line 90
    :cond_0
    move-wide v3, v1

    .line 96
    :cond_1
    :try_start_2
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 97
    invoke-virtual {v7, v9, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-wide/16 v9, 0x1

    add-long/2addr v9, v3

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, p2, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 99
    const-string v9, "app_id = ?"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v8, v7, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    int-to-long v7, v7

    .line 100
    cmp-long v1, v7, v1

    if-nez v1, :cond_2

    .line 101
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v1

    .line 102
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v1

    const-string v2, "Failed to update column (got 0). appId"

    .line 103
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v2, v7, p2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 104
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 105
    return-wide v5

    .line 106
    :cond_2
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 107
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 108
    goto :goto_1

    .line 109
    :catch_0
    move-exception v1

    move-wide v11, v3

    move-object v3, v1

    move-wide v1, v11

    goto :goto_0

    .line 115
    :catchall_0
    move-exception p1

    goto :goto_2

    .line 109
    :catch_1
    move-exception v3

    .line 110
    :goto_0
    :try_start_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v4

    .line 111
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v4

    const-string v5, "Error inserting column. appId"

    .line 112
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v4, v5, p1, p2, v3}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 113
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 114
    move-wide v3, v1

    .line 117
    :goto_1
    return-wide v3

    .line 115
    :goto_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 116
    throw p1
.end method

.method public final zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzne;",
            ">;"
        }
    .end annotation

    .line 895
    move-object/from16 v0, p3

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 896
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 897
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzmo;->zzak()V

    .line 898
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 899
    nop

    .line 900
    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 901
    move-object/from16 v12, p1

    :try_start_1
    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 902
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "app_id=?"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 903
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v6, :cond_0

    .line 904
    move-object/from16 v6, p2

    :try_start_2
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 905
    const-string v7, " and origin=?"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 903
    :cond_0
    move-object/from16 v6, p2

    .line 906
    :goto_0
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 907
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "*"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 908
    const-string v7, " and name glob ?"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 909
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {v3, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, [Ljava/lang/String;

    .line 910
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzao;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    .line 911
    const-string v14, "user_attributes"

    const/4 v3, 0x4

    new-array v15, v3, [Ljava/lang/String;

    const-string v3, "name"

    const/4 v11, 0x0

    aput-object v3, v15, v11

    const-string v3, "set_timestamp"

    const/4 v9, 0x1

    aput-object v3, v15, v9

    const-string v3, "value"

    const/4 v10, 0x2

    aput-object v3, v15, v10

    const-string v3, "origin"

    aput-object v3, v15, v4

    .line 912
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-string v20, "rowid"

    .line 913
    const-string v21, "1001"

    .line 914
    invoke-virtual/range {v13 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 915
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v3, :cond_3

    .line 916
    nop

    .line 917
    if-eqz v2, :cond_2

    .line 918
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 919
    :cond_2
    return-object v1

    .line 920
    :cond_3
    :goto_1
    :try_start_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/16 v5, 0x3e8

    if-lt v3, v5, :cond_4

    .line 921
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    .line 922
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    const-string v3, "Read more than the max allowed user properties, ignoring excess"

    .line 923
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 924
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 925
    move-object/from16 v3, p0

    goto :goto_3

    .line 926
    :cond_4
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 927
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 928
    move-object/from16 v3, p0

    :try_start_4
    invoke-direct {v3, v2, v10}, Lcom/google/android/gms/measurement/internal/zzao;->zza(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v15

    .line 929
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 930
    if-nez v15, :cond_5

    .line 931
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v5

    .line 932
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v5

    const-string v6, "(2)Read invalid user property value, ignoring it"

    .line 933
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 934
    invoke-virtual {v5, v6, v8, v7, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object/from16 v17, v7

    move/from16 v19, v9

    move/from16 v18, v10

    move v13, v11

    goto :goto_2

    .line 942
    :catch_0
    move-exception v0

    move-object v6, v7

    goto :goto_6

    .line 935
    :cond_5
    :try_start_6
    new-instance v6, Lcom/google/android/gms/measurement/internal/zzne;
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object v5, v6

    move-object v4, v6

    move-object/from16 v6, p1

    move-object/from16 v17, v7

    move/from16 v19, v9

    move/from16 v18, v10

    move-wide v9, v13

    move v13, v11

    move-object v11, v15

    :try_start_7
    invoke-direct/range {v5 .. v11}, Lcom/google/android/gms/measurement/internal/zzne;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 936
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 937
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-nez v4, :cond_7

    .line 938
    :goto_3
    nop

    .line 939
    if-eqz v2, :cond_6

    .line 940
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 941
    :cond_6
    return-object v1

    .line 937
    :cond_7
    move v11, v13

    move-object/from16 v6, v17

    move/from16 v10, v18

    move/from16 v9, v19

    const/4 v4, 0x3

    goto :goto_1

    .line 942
    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    move-object/from16 v17, v7

    :goto_4
    move-object/from16 v6, v17

    goto :goto_6

    :catch_3
    move-exception v0

    goto :goto_6

    :catch_4
    move-exception v0

    move-object/from16 v3, p0

    goto :goto_6

    :catch_5
    move-exception v0

    move-object/from16 v3, p0

    goto :goto_5

    .line 950
    :catchall_0
    move-exception v0

    move-object/from16 v3, p0

    goto :goto_7

    .line 942
    :catch_6
    move-exception v0

    move-object/from16 v3, p0

    move-object/from16 v12, p1

    :goto_5
    move-object/from16 v6, p2

    .line 943
    :goto_6
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v1

    .line 944
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v1

    const-string v4, "(2)Error querying user properties"

    .line 945
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v5, v6, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 946
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 947
    if-eqz v2, :cond_8

    .line 948
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 949
    :cond_8
    return-object v0

    .line 950
    :catchall_1
    move-exception v0

    :goto_7
    if-eqz v2, :cond_9

    .line 951
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 952
    :cond_9
    throw v0
.end method

.method public final zzc(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 7

    .line 160
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 161
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzmo;->zzak()V

    .line 162
    nop

    .line 163
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzao;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 164
    const-string v2, "select parameters from default_event_params where app_id=?"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v3

    .line 165
    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_1

    .line 167
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzp()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p1

    const-string v2, "Default event parameters not found"

    invoke-virtual {p1, v2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 168
    if-eqz v1, :cond_0

    .line 169
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 170
    :cond_0
    return-object v0

    .line 171
    :cond_1
    const/4 v2, 0x0

    :try_start_2
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 172
    :try_start_3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfi$zze;->zze()Lcom/google/android/gms/internal/measurement/zzfi$zze$zza;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/google/android/gms/measurement/internal/zzmz;->zza(Lcom/google/android/gms/internal/measurement/zzkm;[B)Lcom/google/android/gms/internal/measurement/zzkm;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfi$zze$zza;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzix$zzb;->zzab()Lcom/google/android/gms/internal/measurement/zzkj;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzix;

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfi$zze;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 173
    nop

    .line 182
    :try_start_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzml;->g_()Lcom/google/android/gms/measurement/internal/zzmz;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfi$zze;->zzh()Ljava/util/List;

    move-result-object p1

    .line 183
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 184
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfi$zzg;

    .line 185
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfi$zzg;->zzg()Ljava/lang/String;

    move-result-object v4

    .line 186
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfi$zzg;->zzj()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 187
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfi$zzg;->zza()D

    move-result-wide v5

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    .line 188
    :cond_2
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfi$zzg;->zzk()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 189
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfi$zzg;->zzb()F

    move-result v3

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_0

    .line 190
    :cond_3
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfi$zzg;->zzn()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 191
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfi$zzg;->zzh()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 192
    :cond_4
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfi$zzg;->zzl()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 193
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfi$zzg;->zzd()J

    move-result-wide v5

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 194
    :cond_5
    goto :goto_0

    .line 195
    :cond_6
    nop

    .line 196
    nop

    .line 197
    if-eqz v1, :cond_7

    .line 198
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 199
    :cond_7
    return-object v2

    .line 174
    :catch_0
    move-exception v2

    .line 175
    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v3

    .line 176
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v3

    const-string v4, "Failed to retrieve default event parameters. appId"

    .line 177
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 178
    invoke-virtual {v3, v4, p1, v2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 179
    if-eqz v1, :cond_8

    .line 180
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 181
    :cond_8
    return-object v0

    .line 200
    :catch_1
    move-exception p1

    goto :goto_1

    .line 204
    :catchall_0
    move-exception p1

    goto :goto_2

    .line 200
    :catch_2
    move-exception p1

    move-object v1, v0

    .line 201
    :goto_1
    :try_start_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v2

    const-string v3, "Error selecting default event parameters"

    invoke-virtual {v2, v3, p1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 202
    if-eqz v1, :cond_9

    .line 203
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 207
    :cond_9
    return-object v0

    .line 204
    :catchall_1
    move-exception p1

    move-object v0, v1

    :goto_2
    if-eqz v0, :cond_a

    .line 205
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 206
    :cond_a
    throw p1
.end method

.method public final zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzad;
    .locals 35

    .line 319
    move-object/from16 v7, p2

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 320
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 321
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 322
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzmo;->zzak()V

    .line 323
    nop

    .line 324
    const/4 v8, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzao;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    .line 325
    const-string v10, "conditional_properties"

    const/16 v0, 0xb

    new-array v11, v0, [Ljava/lang/String;

    const-string v0, "origin"

    const/4 v1, 0x0

    aput-object v0, v11, v1

    const-string v0, "value"

    const/4 v2, 0x1

    aput-object v0, v11, v2

    const-string v0, "active"

    const/4 v3, 0x2

    aput-object v0, v11, v3

    const-string v0, "trigger_event_name"

    const/4 v4, 0x3

    aput-object v0, v11, v4

    const-string v0, "trigger_timeout"

    const/4 v5, 0x4

    aput-object v0, v11, v5

    const-string v0, "timed_out_event"

    const/4 v6, 0x5

    aput-object v0, v11, v6

    const-string v0, "creation_timestamp"

    const/4 v15, 0x6

    aput-object v0, v11, v15

    const-string v0, "triggered_event"

    const/4 v14, 0x7

    aput-object v0, v11, v14

    const-string v0, "triggered_timestamp"

    const/16 v13, 0x8

    aput-object v0, v11, v13

    const-string v0, "time_to_live"

    const/16 v12, 0x9

    aput-object v0, v11, v12

    const-string v0, "expired_event"

    const/16 v6, 0xa

    aput-object v0, v11, v6

    const-string v0, "app_id=? and name=?"

    filled-new-array/range {p1 .. p2}, [Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 326
    move v6, v12

    move-object v12, v0

    move v0, v13

    move-object/from16 v13, v16

    move v6, v14

    move-object/from16 v14, v17

    move v0, v15

    move-object/from16 v15, v18

    move-object/from16 v16, v19

    invoke-virtual/range {v9 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 327
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v10, :cond_1

    .line 328
    nop

    .line 329
    if-eqz v9, :cond_0

    .line 330
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 331
    :cond_0
    return-object v8

    .line 332
    :cond_1
    :try_start_2
    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 333
    if-nez v10, :cond_2

    .line 334
    const-string v10, ""
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v22, v10

    goto :goto_0

    .line 333
    :cond_2
    move-object/from16 v22, v10

    .line 335
    :goto_0
    move-object/from16 v10, p0

    :try_start_3
    invoke-direct {v10, v9, v2}, Lcom/google/android/gms/measurement/internal/zzao;->zza(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v11

    .line 336
    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_3

    move/from16 v26, v2

    goto :goto_1

    :cond_3
    move/from16 v26, v1

    .line 337
    :goto_1
    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 338
    invoke-interface {v9, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    .line 339
    nop

    .line 340
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzml;->g_()Lcom/google/android/gms/measurement/internal/zzmz;

    move-result-object v1

    const/4 v2, 0x5

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzbg;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzmz;->zza([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    move-object/from16 v28, v1

    check-cast v28, Lcom/google/android/gms/measurement/internal/zzbg;

    .line 341
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 342
    nop

    .line 343
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzml;->g_()Lcom/google/android/gms/measurement/internal/zzmz;

    move-result-object v0

    invoke-interface {v9, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzbg;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzmz;->zza([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    move-object/from16 v31, v0

    check-cast v31, Lcom/google/android/gms/measurement/internal/zzbg;

    .line 344
    const/16 v0, 0x8

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 345
    const/16 v0, 0x9

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    .line 346
    nop

    .line 347
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzml;->g_()Lcom/google/android/gms/measurement/internal/zzmz;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzbg;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzmz;->zza([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    move-object/from16 v34, v0

    check-cast v34, Lcom/google/android/gms/measurement/internal/zzbg;

    .line 348
    new-instance v23, Lcom/google/android/gms/measurement/internal/zznc;

    move-object/from16 v1, v23

    move-object/from16 v2, p2

    move-object v5, v11

    move-object/from16 v6, v22

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zznc;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 349
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzad;

    move-object/from16 v20, v0

    move-object/from16 v21, p1

    invoke-direct/range {v20 .. v34}, Lcom/google/android/gms/measurement/internal/zzad;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zznc;JZLjava/lang/String;Lcom/google/android/gms/measurement/internal/zzbg;JLcom/google/android/gms/measurement/internal/zzbg;JLcom/google/android/gms/measurement/internal/zzbg;)V

    .line 350
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 351
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v1

    .line 352
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v1

    const-string v2, "Got multiple records for conditional property, expected one"

    .line 353
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 354
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzi()Lcom/google/android/gms/measurement/internal/zzfq;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/google/android/gms/measurement/internal/zzfq;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 355
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 356
    :cond_4
    nop

    .line 357
    if-eqz v9, :cond_5

    .line 358
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 359
    :cond_5
    return-object v0

    .line 360
    :catch_0
    move-exception v0

    goto :goto_2

    .line 369
    :catchall_0
    move-exception v0

    move-object/from16 v10, p0

    goto :goto_3

    .line 360
    :catch_1
    move-exception v0

    move-object/from16 v10, p0

    goto :goto_2

    .line 369
    :catchall_1
    move-exception v0

    move-object/from16 v10, p0

    goto :goto_4

    .line 360
    :catch_2
    move-exception v0

    move-object/from16 v10, p0

    move-object v9, v8

    .line 361
    :goto_2
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v1

    .line 362
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v1

    const-string v2, "Error querying conditional property"

    .line 363
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 364
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzi()Lcom/google/android/gms/measurement/internal/zzfq;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/google/android/gms/measurement/internal/zzfq;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 365
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 366
    if-eqz v9, :cond_6

    .line 367
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 368
    :cond_6
    return-object v8

    .line 369
    :catchall_2
    move-exception v0

    :goto_3
    move-object v8, v9

    :goto_4
    if-eqz v8, :cond_7

    .line 370
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 371
    :cond_7
    throw v0
.end method

.method protected final zzc()Z
    .locals 1

    .line 1750
    const/4 v0, 0x0

    return v0
.end method

.method public final zzd(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzbc;
    .locals 28

    .line 477
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 478
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 479
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 480
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzmo;->zzak()V

    .line 481
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "lifetime_count"

    const-string v2, "current_bundle_count"

    const-string v3, "last_fire_timestamp"

    const-string v4, "last_bundled_timestamp"

    const-string v5, "last_bundled_day"

    const-string v6, "last_sampled_complex_event_id"

    const-string v7, "last_sampling_rate"

    const-string v8, "last_exempt_from_sampling"

    const-string v9, "current_session_count"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v1

    .line 482
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 483
    nop

    .line 484
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzao;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 485
    const-string v3, "events"

    const/4 v10, 0x0

    new-array v4, v10, [Ljava/lang/String;

    .line 486
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, [Ljava/lang/String;

    const-string v5, "app_id=? and name=?"

    filled-new-array/range {p1 .. p2}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 487
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 488
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v0, :cond_1

    .line 489
    nop

    .line 490
    if-eqz v2, :cond_0

    .line 491
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 492
    :cond_0
    return-object v1

    .line 493
    :cond_1
    :try_start_2
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 494
    const/4 v0, 0x1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 495
    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 496
    const/4 v3, 0x3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_2

    move-wide/from16 v22, v5

    goto :goto_0

    :cond_2
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    move-wide/from16 v22, v3

    .line 497
    :goto_0
    const/4 v3, 0x4

    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v24, v1

    goto :goto_1

    :cond_3
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v24, v3

    .line 498
    :goto_1
    const/4 v3, 0x5

    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object/from16 v25, v1

    goto :goto_2

    :cond_4
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v25, v3

    .line 499
    :goto_2
    const/4 v3, 0x6

    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v26, v1

    goto :goto_3

    :cond_5
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v26, v3

    .line 500
    :goto_3
    nop

    .line 501
    const/4 v3, 0x7

    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_7

    .line 502
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const-wide/16 v7, 0x1

    cmp-long v3, v3, v7

    if-nez v3, :cond_6

    move v10, v0

    :cond_6
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    move-object/from16 v27, v0

    goto :goto_4

    .line 501
    :cond_7
    move-object/from16 v27, v1

    .line 503
    :goto_4
    const/16 v0, 0x8

    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_8

    move-wide/from16 v18, v5

    goto :goto_5

    :cond_8
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    move-wide/from16 v18, v3

    .line 504
    :goto_5
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzbc;

    move-object v11, v0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    invoke-direct/range {v11 .. v27}, Lcom/google/android/gms/measurement/internal/zzbc;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    .line 505
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 506
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v3

    .line 507
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v3

    const-string v4, "Got multiple records for event aggregates, expected one. appId"

    .line 508
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 509
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 510
    :cond_9
    nop

    .line 511
    if-eqz v2, :cond_a

    .line 512
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 513
    :cond_a
    return-object v0

    .line 514
    :catch_0
    move-exception v0

    goto :goto_6

    .line 523
    :catchall_0
    move-exception v0

    goto :goto_7

    .line 514
    :catch_1
    move-exception v0

    move-object v2, v1

    .line 515
    :goto_6
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v3

    .line 516
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v3

    const-string v4, "Error querying events. appId"

    .line 517
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 518
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzi()Lcom/google/android/gms/measurement/internal/zzfq;

    move-result-object v6

    move-object/from16 v7, p2

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 519
    invoke-virtual {v3, v4, v5, v6, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 520
    if-eqz v2, :cond_b

    .line 521
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 522
    :cond_b
    return-object v1

    .line 523
    :catchall_1
    move-exception v0

    move-object v1, v2

    :goto_7
    if-eqz v1, :cond_c

    .line 524
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 525
    :cond_c
    throw v0
.end method

.method public final zzd(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzh;
    .locals 25

    .line 244
    move-object/from16 v1, p1

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 245
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 246
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzmo;->zzak()V

    .line 247
    nop

    .line 248
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzao;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 249
    const-string v4, "apps"

    const/16 v0, 0x24

    new-array v5, v0, [Ljava/lang/String;

    const-string v0, "app_instance_id"

    const/4 v11, 0x0

    aput-object v0, v5, v11

    const-string v0, "gmp_app_id"

    const/4 v12, 0x1

    aput-object v0, v5, v12

    const-string v0, "resettable_device_id_hash"

    const/4 v13, 0x2

    aput-object v0, v5, v13

    const-string v0, "last_bundle_index"

    const/4 v14, 0x3

    aput-object v0, v5, v14

    const-string v0, "last_bundle_start_timestamp"

    const/4 v15, 0x4

    aput-object v0, v5, v15

    const-string v0, "last_bundle_end_timestamp"

    const/4 v10, 0x5

    aput-object v0, v5, v10

    const-string v0, "app_version"

    const/4 v9, 0x6

    aput-object v0, v5, v9

    const-string v0, "app_store"

    const/4 v8, 0x7

    aput-object v0, v5, v8

    const-string v0, "gmp_version"

    const/16 v7, 0x8

    aput-object v0, v5, v7

    const-string v0, "dev_cert_hash"

    const/16 v6, 0x9

    aput-object v0, v5, v6

    const-string v0, "measurement_enabled"

    const/16 v15, 0xa

    aput-object v0, v5, v15

    const-string v0, "day"

    const/16 v15, 0xb

    aput-object v0, v5, v15

    const-string v0, "daily_public_events_count"

    const/16 v15, 0xc

    aput-object v0, v5, v15

    const-string v0, "daily_events_count"

    const/16 v15, 0xd

    aput-object v0, v5, v15

    const-string v0, "daily_conversions_count"

    const/16 v16, 0xe

    aput-object v0, v5, v16

    const-string v0, "config_fetched_time"

    const/16 v16, 0xf

    aput-object v0, v5, v16

    const-string v0, "failed_config_fetch_time"

    const/16 v16, 0x10

    aput-object v0, v5, v16

    const-string v0, "app_version_int"

    const/16 v15, 0x11

    aput-object v0, v5, v15

    const-string v0, "firebase_instance_id"

    const/16 v17, 0x12

    aput-object v0, v5, v17

    const-string v0, "daily_error_events_count"

    const/16 v17, 0x13

    aput-object v0, v5, v17

    const-string v0, "daily_realtime_events_count"

    const/16 v17, 0x14

    aput-object v0, v5, v17

    const-string v0, "health_monitor_sample"

    const/16 v17, 0x15

    aput-object v0, v5, v17

    const-string v0, "android_id"

    const/16 v17, 0x16

    aput-object v0, v5, v17

    const-string v0, "adid_reporting_enabled"

    const/16 v15, 0x17

    aput-object v0, v5, v15

    const-string v0, "admob_app_id"

    const/16 v18, 0x18

    aput-object v0, v5, v18

    const-string v0, "dynamite_version"

    const/16 v15, 0x19

    aput-object v0, v5, v15

    const-string v0, "safelisted_events"

    const/16 v15, 0x1a

    aput-object v0, v5, v15

    const-string v0, "ga_app_id"

    const/16 v19, 0x1b

    aput-object v0, v5, v19

    const-string v0, "session_stitching_token"

    const/16 v19, 0x1c

    aput-object v0, v5, v19

    const-string v0, "sgtm_upload_enabled"

    const/16 v15, 0x1d

    aput-object v0, v5, v15

    const-string v0, "target_os_version"

    const/16 v20, 0x1e

    aput-object v0, v5, v20

    const-string v0, "session_stitching_token_hash"

    const/16 v20, 0x1f

    aput-object v0, v5, v20

    const-string v0, "ad_services_version"

    const/16 v20, 0x20

    aput-object v0, v5, v20

    const-string v0, "unmatched_first_open_without_ad_id"

    const/16 v15, 0x21

    aput-object v0, v5, v15

    const-string v0, "npa_metadata_value"

    const/16 v15, 0x22

    aput-object v0, v5, v15

    const-string v0, "attribution_eligibility_status"

    const/16 v21, 0x23

    aput-object v0, v5, v21

    const-string v0, "app_id=?"

    filled-new-array/range {p1 .. p1}, [Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    .line 250
    move v15, v6

    move-object v6, v0

    move v0, v7

    move-object/from16 v7, v21

    move v15, v8

    move-object/from16 v8, v22

    move v0, v9

    move-object/from16 v9, v23

    move v15, v10

    move-object/from16 v10, v24

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 251
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_1

    .line 252
    nop

    .line 253
    if-eqz v3, :cond_0

    .line 254
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 255
    :cond_0
    return-object v2

    .line 256
    :cond_1
    :try_start_2
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzh;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v5, p0

    :try_start_3
    iget-object v6, v5, Lcom/google/android/gms/measurement/internal/zzao;->zzf:Lcom/google/android/gms/measurement/internal/zzmp;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzmp;->zzk()Lcom/google/android/gms/measurement/internal/zzhf;

    move-result-object v6

    invoke-direct {v4, v6, v1}, Lcom/google/android/gms/measurement/internal/zzh;-><init>(Lcom/google/android/gms/measurement/internal/zzhf;Ljava/lang/String;)V

    .line 257
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/android/gms/measurement/internal/zzh;->zzb(Ljava/lang/String;)V

    .line 258
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/android/gms/measurement/internal/zzh;->zzf(Ljava/lang/String;)V

    .line 259
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/android/gms/measurement/internal/zzh;->zzh(Ljava/lang/String;)V

    .line 260
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzh;->zzo(J)V

    .line 261
    const/4 v6, 0x4

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzh;->zzp(J)V

    .line 262
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzh;->zzn(J)V

    .line 263
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/android/gms/measurement/internal/zzh;->zzd(Ljava/lang/String;)V

    .line 264
    const/4 v0, 0x7

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/android/gms/measurement/internal/zzh;->zzc(Ljava/lang/String;)V

    .line 265
    const/16 v0, 0x8

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzh;->zzm(J)V

    .line 266
    const/16 v0, 0x9

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzh;->zzj(J)V

    .line 267
    const/16 v0, 0xa

    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v11

    goto :goto_1

    :cond_3
    :goto_0
    move v0, v12

    :goto_1
    invoke-virtual {v4, v0}, Lcom/google/android/gms/measurement/internal/zzh;->zzb(Z)V

    .line 268
    const/16 v0, 0xb

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzh;->zzi(J)V

    .line 269
    const/16 v0, 0xc

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzh;->zzg(J)V

    .line 270
    const/16 v0, 0xd

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzh;->zzf(J)V

    .line 271
    const/16 v0, 0xe

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzh;->zzd(J)V

    .line 272
    const/16 v0, 0xf

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzh;->zzc(J)V

    .line 273
    const/16 v0, 0x10

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzh;->zzl(J)V

    .line 274
    const/16 v0, 0x11

    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_4

    const-wide/32 v6, -0x80000000

    goto :goto_2

    :cond_4
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v6, v0

    :goto_2
    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzh;->zza(J)V

    .line 275
    const/16 v0, 0x12

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/android/gms/measurement/internal/zzh;->zze(Ljava/lang/String;)V

    .line 276
    const/16 v0, 0x13

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzh;->zze(J)V

    .line 277
    const/16 v0, 0x14

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzh;->zzh(J)V

    .line 278
    const/16 v0, 0x15

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/android/gms/measurement/internal/zzh;->zzg(Ljava/lang/String;)V

    .line 279
    const/16 v0, 0x17

    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    move v0, v11

    goto :goto_4

    :cond_6
    :goto_3
    move v0, v12

    :goto_4
    invoke-virtual {v4, v0}, Lcom/google/android/gms/measurement/internal/zzh;->zza(Z)V

    .line 280
    const/16 v0, 0x18

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/android/gms/measurement/internal/zzh;->zza(Ljava/lang/String;)V

    .line 281
    const/16 v0, 0x19

    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_7

    const-wide/16 v6, 0x0

    goto :goto_5

    :cond_7
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    :goto_5
    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzh;->zzk(J)V

    .line 282
    const/16 v0, 0x1a

    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-nez v6, :cond_8

    .line 283
    nop

    .line 284
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v6, ","

    const/4 v7, -0x1

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 285
    invoke-virtual {v4, v0}, Lcom/google/android/gms/measurement/internal/zzh;->zza(Ljava/util/List;)V

    .line 286
    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzps;->zza()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 287
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzbi;->zzbt:Lcom/google/android/gms/measurement/internal/zzfi;

    invoke-virtual {v0, v1, v6}, Lcom/google/android/gms/measurement/internal/zzaf;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfi;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 288
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzbi;->zzbr:Lcom/google/android/gms/measurement/internal/zzfi;

    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Lcom/google/android/gms/measurement/internal/zzfi;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 289
    :cond_9
    const/16 v0, 0x1c

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/android/gms/measurement/internal/zzh;->zzi(Ljava/lang/String;)V

    .line 290
    :cond_a
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzqd;->zza()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzbi;->zzbu:Lcom/google/android/gms/measurement/internal/zzfi;

    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Lcom/google/android/gms/measurement/internal/zzfi;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 291
    const/16 v0, 0x1d

    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-nez v6, :cond_b

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_b

    move v0, v12

    goto :goto_6

    :cond_b
    move v0, v11

    :goto_6
    invoke-virtual {v4, v0}, Lcom/google/android/gms/measurement/internal/zzh;->zzc(Z)V

    .line 292
    :cond_c
    const/16 v0, 0x1e

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzh;->zzr(J)V

    .line 293
    const/16 v0, 0x1f

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzh;->zzq(J)V

    .line 294
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpg;->zza()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzbi;->zzcf:Lcom/google/android/gms/measurement/internal/zzfi;

    invoke-virtual {v0, v1, v6}, Lcom/google/android/gms/measurement/internal/zzaf;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfi;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 295
    const/16 v0, 0x20

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/google/android/gms/measurement/internal/zzh;->zza(I)V

    .line 296
    const/16 v0, 0x23

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzh;->zzb(J)V

    .line 297
    :cond_d
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznk;->zza()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 298
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzbi;->zzcr:Lcom/google/android/gms/measurement/internal/zzfi;

    invoke-virtual {v0, v1, v6}, Lcom/google/android/gms/measurement/internal/zzaf;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfi;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 299
    const/16 v0, 0x21

    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-nez v6, :cond_e

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_e

    move v0, v12

    goto :goto_7

    :cond_e
    move v0, v11

    :goto_7
    invoke-virtual {v4, v0}, Lcom/google/android/gms/measurement/internal/zzh;->zzd(Z)V

    .line 300
    :cond_f
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznp;->zza()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzbi;->zzcm:Lcom/google/android/gms/measurement/internal/zzfi;

    invoke-virtual {v0, v1, v6}, Lcom/google/android/gms/measurement/internal/zzaf;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfi;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 301
    const/16 v0, 0x22

    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_10

    move-object v0, v2

    goto :goto_8

    :cond_10
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_11

    move v11, v12

    :cond_11
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_8
    invoke-virtual {v4, v0}, Lcom/google/android/gms/measurement/internal/zzh;->zza(Ljava/lang/Boolean;)V

    .line 302
    :cond_12
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzh;->zzah()V

    .line 303
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 304
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    .line 305
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    const-string v6, "Got multiple records for app, expected one. appId"

    .line 306
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 307
    :cond_13
    nop

    .line 308
    if-eqz v3, :cond_14

    .line 309
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 310
    :cond_14
    return-object v4

    .line 311
    :catch_0
    move-exception v0

    goto :goto_9

    .line 316
    :catchall_0
    move-exception v0

    move-object/from16 v5, p0

    goto :goto_a

    .line 311
    :catch_1
    move-exception v0

    move-object/from16 v5, p0

    goto :goto_9

    .line 316
    :catchall_1
    move-exception v0

    move-object/from16 v5, p0

    goto :goto_b

    .line 311
    :catch_2
    move-exception v0

    move-object/from16 v5, p0

    move-object v3, v2

    .line 312
    :goto_9
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v4

    const-string v6, "Error querying app. appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v6, v1, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 313
    if-eqz v3, :cond_15

    .line 314
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 315
    :cond_15
    return-object v2

    .line 316
    :catchall_2
    move-exception v0

    :goto_a
    move-object v2, v3

    :goto_b
    if-eqz v2, :cond_16

    .line 317
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 318
    :cond_16
    throw v0
.end method

.method public final zze(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaq;
    .locals 12

    .line 372
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 373
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 374
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzmo;->zzak()V

    .line 375
    nop

    .line 376
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzao;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 377
    const-string v2, "apps"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "remote_config"

    const/4 v9, 0x0

    aput-object v4, v3, v9

    const-string v4, "config_last_modified_time"

    const/4 v10, 0x1

    aput-object v4, v3, v10

    const-string v4, "e_tag"

    const/4 v11, 0x2

    aput-object v4, v3, v11

    const-string v4, "app_id=?"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 378
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v2, :cond_1

    .line 380
    nop

    .line 381
    if-eqz v1, :cond_0

    .line 382
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 383
    :cond_0
    return-object v0

    .line 384
    :cond_1
    :try_start_2
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    .line 385
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 386
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 387
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 388
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v5

    .line 389
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v5

    const-string v6, "Got multiple records for app config, expected one. appId"

    .line 390
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 391
    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 392
    :cond_2
    if-nez v2, :cond_4

    .line 393
    nop

    .line 394
    if-eqz v1, :cond_3

    .line 395
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 396
    :cond_3
    return-object v0

    .line 397
    :cond_4
    :try_start_3
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzaq;

    invoke-direct {v5, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzaq;-><init>([BLjava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 398
    if-eqz v1, :cond_5

    .line 399
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 400
    :cond_5
    return-object v5

    .line 401
    :catch_0
    move-exception v2

    goto :goto_0

    .line 408
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 401
    :catch_1
    move-exception v2

    move-object v1, v0

    .line 402
    :goto_0
    :try_start_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v3

    .line 403
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v3

    const-string v4, "Error querying remote config. appId"

    .line 404
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v3, v4, p1, v2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 405
    if-eqz v1, :cond_6

    .line 406
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 407
    :cond_6
    return-object v0

    .line 408
    :catchall_1
    move-exception p1

    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_7

    .line 409
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 410
    :cond_7
    throw p1
.end method

.method public final zze(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzne;
    .locals 13

    .line 539
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 540
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 541
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 542
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzmo;->zzak()V

    .line 543
    nop

    .line 544
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzao;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 545
    const-string v3, "user_attributes"

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "set_timestamp"

    const/4 v10, 0x0

    aput-object v0, v4, v10

    const-string v0, "value"

    const/4 v11, 0x1

    aput-object v0, v4, v11

    const-string v0, "origin"

    const/4 v12, 0x2

    aput-object v0, v4, v12

    const-string v5, "app_id=? and name=?"

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 546
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 547
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v0, :cond_1

    .line 548
    nop

    .line 549
    if-eqz v2, :cond_0

    .line 550
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 551
    :cond_0
    return-object v1

    .line 552
    :cond_1
    :try_start_2
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 553
    invoke-direct {p0, v2, v11}, Lcom/google/android/gms/measurement/internal/zzao;->zza(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v9
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 554
    if-nez v9, :cond_3

    .line 555
    nop

    .line 556
    if-eqz v2, :cond_2

    .line 557
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 558
    :cond_2
    return-object v1

    .line 559
    :cond_3
    :try_start_3
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 560
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzne;

    move-object v3, v0

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/measurement/internal/zzne;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 561
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 562
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v3

    .line 563
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v3

    const-string v4, "Got multiple records for user property, expected one. appId"

    .line 564
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 565
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 566
    :cond_4
    nop

    .line 567
    if-eqz v2, :cond_5

    .line 568
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 569
    :cond_5
    return-object v0

    .line 570
    :catch_0
    move-exception v0

    goto :goto_0

    .line 579
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 570
    :catch_1
    move-exception v0

    move-object v2, v1

    .line 571
    :goto_0
    :try_start_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v3

    .line 572
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v3

    const-string v4, "Error querying user property. appId"

    .line 573
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 574
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzi()Lcom/google/android/gms/measurement/internal/zzfq;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcom/google/android/gms/measurement/internal/zzfq;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 575
    invoke-virtual {v3, v4, v5, v6, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 576
    if-eqz v2, :cond_6

    .line 577
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 578
    :cond_6
    return-object v1

    .line 579
    :catchall_1
    move-exception v0

    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_7

    .line 580
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 581
    :cond_7
    throw v0
.end method

.method public final zzf(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzay;
    .locals 2

    .line 469
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznp;->zza()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzbi;->zzcm:Lcom/google/android/gms/measurement/internal/zzfi;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Lcom/google/android/gms/measurement/internal/zzfi;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 471
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 473
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzmo;->zzak()V

    .line 474
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 475
    const-string v0, "select dma_consent_settings from consent_settings where app_id=? limit 1;"

    const-string v1, ""

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/gms/measurement/internal/zzao;->zza(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 476
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzay;->zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzay;

    move-result-object p1

    return-object p1

    .line 470
    :cond_1
    :goto_0
    sget-object p1, Lcom/google/android/gms/measurement/internal/zzay;->zza:Lcom/google/android/gms/measurement/internal/zzay;

    return-object p1
.end method

.method final zzf(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzew$zzb;",
            ">;>;"
        }
    .end annotation

    .line 1035
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzmo;->zzak()V

    .line 1036
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 1037
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1038
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1039
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    .line 1040
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzao;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1041
    nop

    .line 1042
    const/4 v9, 0x0

    :try_start_0
    const-string v2, "event_filters"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "audience_id"

    const/4 v10, 0x0

    aput-object v4, v3, v10

    const-string v4, "data"

    const/4 v11, 0x1

    aput-object v4, v3, v11

    const-string v4, "app_id=? AND event_name=?"

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1043
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1044
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-nez p2, :cond_1

    .line 1045
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1046
    if-eqz v9, :cond_0

    .line 1047
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1048
    :cond_0
    return-object p1

    .line 1049
    :cond_1
    :try_start_1
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p2
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1050
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzew$zzb;->zzc()Lcom/google/android/gms/internal/measurement/zzew$zzb$zza;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/google/android/gms/measurement/internal/zzmz;->zza(Lcom/google/android/gms/internal/measurement/zzkm;[B)Lcom/google/android/gms/internal/measurement/zzkm;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzew$zzb$zza;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzix$zzb;->zzab()Lcom/google/android/gms/internal/measurement/zzkj;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzix;

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzew$zzb;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1051
    nop

    .line 1057
    :try_start_3
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1058
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1059
    if-nez v2, :cond_2

    .line 1060
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1061
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1062
    :cond_2
    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1052
    :catch_0
    move-exception p2

    .line 1053
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v1

    .line 1054
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v1

    const-string v2, "Failed to merge filter. appId"

    .line 1055
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1056
    nop

    .line 1063
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez p2, :cond_1

    .line 1064
    if-eqz v9, :cond_3

    .line 1065
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1077
    :cond_3
    return-object v0

    .line 1074
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 1066
    :catch_1
    move-exception p2

    .line 1067
    :try_start_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    .line 1068
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    const-string v1, "Database error querying filters. appId"

    .line 1069
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1070
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1071
    if-eqz v9, :cond_4

    .line 1072
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1073
    :cond_4
    return-object p1

    .line 1074
    :goto_1
    if-eqz v9, :cond_5

    .line 1075
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1076
    :cond_5
    throw p1
.end method

.method public final zzg(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzih;
    .locals 2

    .line 529
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 531
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzmo;->zzak()V

    .line 532
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznp;->zza()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzbi;->zzcm:Lcom/google/android/gms/measurement/internal/zzfi;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Lcom/google/android/gms/measurement/internal/zzfi;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 533
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzan;->zza:Lcom/google/android/gms/measurement/internal/zzan;

    .line 534
    const-string v1, "select consent_state, consent_source from consent_settings where app_id=? limit 1;"

    invoke-direct {p0, v1, p1, v0}, Lcom/google/android/gms/measurement/internal/zzao;->zza(Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzar;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/zzih;

    .line 535
    if-nez p1, :cond_0

    sget-object p1, Lcom/google/android/gms/measurement/internal/zzih;->zza:Lcom/google/android/gms/measurement/internal/zzih;

    :cond_0
    return-object p1

    .line 536
    :cond_1
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 537
    const-string v0, "select consent_state from consent_settings where app_id=? limit 1;"

    const-string v1, "G1"

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/gms/measurement/internal/zzao;->zza(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 538
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzih;->zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzih;

    move-result-object p1

    return-object p1
.end method

.method final zzg(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzew$zze;",
            ">;>;"
        }
    .end annotation

    .line 1078
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzmo;->zzak()V

    .line 1079
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 1080
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1081
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1082
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    .line 1083
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzao;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1084
    nop

    .line 1085
    const/4 v9, 0x0

    :try_start_0
    const-string v2, "property_filters"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "audience_id"

    const/4 v10, 0x0

    aput-object v4, v3, v10

    const-string v4, "data"

    const/4 v11, 0x1

    aput-object v4, v3, v11

    const-string v4, "app_id=? AND property_name=?"

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1086
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1087
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-nez p2, :cond_1

    .line 1088
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1089
    if-eqz v9, :cond_0

    .line 1090
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1091
    :cond_0
    return-object p1

    .line 1092
    :cond_1
    :try_start_1
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p2
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1093
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzew$zze;->zzc()Lcom/google/android/gms/internal/measurement/zzew$zze$zza;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/google/android/gms/measurement/internal/zzmz;->zza(Lcom/google/android/gms/internal/measurement/zzkm;[B)Lcom/google/android/gms/internal/measurement/zzkm;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzew$zze$zza;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzix$zzb;->zzab()Lcom/google/android/gms/internal/measurement/zzkj;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzix;

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzew$zze;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1094
    nop

    .line 1098
    :try_start_3
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1099
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1100
    if-nez v2, :cond_2

    .line 1101
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1102
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1103
    :cond_2
    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1095
    :catch_0
    move-exception p2

    .line 1096
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v1

    const-string v2, "Failed to merge filter"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1097
    nop

    .line 1104
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez p2, :cond_1

    .line 1105
    if-eqz v9, :cond_3

    .line 1106
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1118
    :cond_3
    return-object v0

    .line 1115
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 1107
    :catch_1
    move-exception p2

    .line 1108
    :try_start_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    .line 1109
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    const-string v1, "Database error querying filters. appId"

    .line 1110
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1111
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1112
    if-eqz v9, :cond_4

    .line 1113
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1114
    :cond_4
    return-object p1

    .line 1115
    :goto_1
    if-eqz v9, :cond_5

    .line 1116
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1117
    :cond_5
    throw p1
.end method

.method public final zzh(Ljava/lang/String;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzmh;",
            ">;"
        }
    .end annotation

    .line 816
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 817
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 818
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzmo;->zzak()V

    .line 819
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 820
    nop

    .line 821
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzao;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 822
    const-string v3, "trigger_uris"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "trigger_uri"

    const/4 v11, 0x0

    aput-object v5, v4, v11

    const-string v5, "timestamp_millis"

    const/4 v12, 0x1

    aput-object v5, v4, v12

    const-string v5, "source"

    const/4 v13, 0x2

    aput-object v5, v4, v13

    const-string v5, "app_id=?"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "rowid"

    const/4 v10, 0x0

    .line 823
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 824
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 825
    nop

    .line 826
    if-eqz v1, :cond_0

    .line 827
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 828
    :cond_0
    return-object v0

    .line 829
    :cond_1
    :try_start_1
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 830
    if-nez v2, :cond_2

    .line 831
    const-string v2, ""

    .line 832
    :cond_2
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 833
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 834
    new-instance v6, Lcom/google/android/gms/measurement/internal/zzmh;

    invoke-direct {v6, v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzmh;-><init>(Ljava/lang/String;JI)V

    .line 835
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 836
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    .line 837
    nop

    .line 838
    if-eqz v1, :cond_3

    .line 839
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 840
    :cond_3
    return-object v0

    .line 849
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 841
    :catch_0
    move-exception v0

    .line 842
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v2

    .line 843
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v2

    const-string v3, "Error querying trigger uris. appId"

    .line 844
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, v3, p1, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 845
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 846
    if-eqz v1, :cond_4

    .line 847
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 848
    :cond_4
    return-object p1

    .line 849
    :goto_0
    if-eqz v1, :cond_5

    .line 850
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 851
    :cond_5
    throw p1
.end method

.method public final zzh(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1219
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1220
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1221
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 1222
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzmo;->zzak()V

    .line 1223
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzao;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1224
    const-string v1, "user_attributes"

    const-string v2, "app_id=? and name=?"

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1225
    return-void

    .line 1226
    :catch_0
    move-exception v0

    .line 1227
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v1

    .line 1228
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v1

    .line 1229
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 1230
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzi()Lcom/google/android/gms/measurement/internal/zzfq;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/android/gms/measurement/internal/zzfq;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1231
    const-string v2, "Error deleting user property. appId"

    invoke-virtual {v1, v2, p1, p2, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1232
    return-void
.end method

.method public final zzi(Ljava/lang/String;)Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzne;",
            ">;"
        }
    .end annotation

    .line 852
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 853
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 854
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzmo;->zzak()V

    .line 855
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 856
    nop

    .line 857
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzao;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 858
    const-string v3, "user_attributes"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "name"

    const/4 v11, 0x0

    aput-object v5, v4, v11

    const-string v5, "origin"

    const/4 v12, 0x1

    aput-object v5, v4, v12

    const-string v5, "set_timestamp"

    const/4 v13, 0x2

    aput-object v5, v4, v13

    const-string v5, "value"

    const/4 v14, 0x3

    aput-object v5, v4, v14

    const-string v5, "app_id=?"

    filled-new-array/range {p1 .. p1}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "rowid"

    .line 859
    const-string v10, "1000"

    .line 860
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 861
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 862
    nop

    .line 863
    if-eqz v1, :cond_0

    .line 864
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 865
    :cond_0
    return-object v0

    .line 866
    :cond_1
    :try_start_1
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 867
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 868
    if-nez v2, :cond_2

    .line 869
    const-string v2, ""

    move-object v5, v2

    goto :goto_0

    .line 868
    :cond_2
    move-object v5, v2

    .line 870
    :goto_0
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 871
    move-object v2, p0

    :try_start_2
    invoke-direct {p0, v1, v14}, Lcom/google/android/gms/measurement/internal/zzao;->zza(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v9

    .line 872
    if-nez v9, :cond_3

    .line 873
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v3

    .line 874
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v3

    const-string v4, "Read invalid user property value, ignoring it. appId"

    .line 875
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 876
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 877
    :cond_3
    new-instance v10, Lcom/google/android/gms/measurement/internal/zzne;

    move-object v3, v10

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/measurement/internal/zzne;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 878
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 879
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v3, :cond_1

    .line 880
    nop

    .line 881
    if-eqz v1, :cond_4

    .line 882
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 883
    :cond_4
    return-object v0

    .line 884
    :catch_0
    move-exception v0

    goto :goto_2

    .line 892
    :catchall_0
    move-exception v0

    move-object v2, p0

    goto :goto_3

    .line 884
    :catch_1
    move-exception v0

    move-object v2, p0

    .line 885
    :goto_2
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v3

    .line 886
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v3

    const-string v4, "Error querying user properties. appId"

    .line 887
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 888
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 889
    if-eqz v1, :cond_5

    .line 890
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 891
    :cond_5
    return-object v0

    .line 892
    :catchall_1
    move-exception v0

    :goto_3
    if-eqz v1, :cond_6

    .line 893
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 894
    :cond_6
    throw v0
.end method

.method final zzj(Ljava/lang/String;)Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gms/internal/measurement/zzfi$zzl;",
            ">;"
        }
    .end annotation

    .line 953
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzmo;->zzak()V

    .line 954
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 955
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 956
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzao;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 957
    nop

    .line 958
    const/4 v8, 0x0

    :try_start_0
    const-string v1, "audience_filter_values"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "audience_id"

    const/4 v9, 0x0

    aput-object v3, v2, v9

    const-string v3, "current_results"

    const/4 v10, 0x1

    aput-object v3, v2, v10

    const-string v3, "app_id=?"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 959
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 960
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 961
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 962
    if-eqz v8, :cond_0

    .line 963
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 964
    :cond_0
    return-object p1

    .line 965
    :cond_1
    :try_start_1
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    .line 966
    :cond_2
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 967
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 968
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfi$zzl;->zze()Lcom/google/android/gms/internal/measurement/zzfi$zzl$zza;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/google/android/gms/measurement/internal/zzmz;->zza(Lcom/google/android/gms/internal/measurement/zzkm;[B)Lcom/google/android/gms/internal/measurement/zzkm;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfi$zzl$zza;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzix$zzb;->zzab()Lcom/google/android/gms/internal/measurement/zzkj;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzix;

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfi$zzl;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 969
    nop

    .line 977
    :try_start_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 970
    :catch_0
    move-exception v2

    .line 971
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v3

    .line 972
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v3

    const-string v4, "Failed to merge filter results. appId, audienceId, error"

    .line 973
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 974
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 975
    invoke-virtual {v3, v4, v5, v1, v2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 976
    nop

    .line 978
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v1, :cond_2

    .line 979
    nop

    .line 980
    if-eqz v8, :cond_3

    .line 981
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 982
    :cond_3
    return-object v0

    .line 991
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 983
    :catch_1
    move-exception v0

    .line 984
    :try_start_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v1

    .line 985
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v1

    const-string v2, "Database error querying filter results. appId"

    .line 986
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 987
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 988
    if-eqz v8, :cond_4

    .line 989
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 990
    :cond_4
    return-object p1

    .line 991
    :goto_1
    if-eqz v8, :cond_5

    .line 992
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 993
    :cond_5
    throw p1
.end method

.method final zzk(Ljava/lang/String;)Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzew$zzb;",
            ">;>;"
        }
    .end annotation

    .line 994
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 995
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    .line 996
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzao;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 997
    nop

    .line 998
    const/4 v9, 0x0

    :try_start_0
    const-string v2, "event_filters"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "audience_id"

    const/4 v10, 0x0

    aput-object v4, v3, v10

    const-string v4, "data"

    const/4 v11, 0x1

    aput-object v4, v3, v11

    const-string v4, "app_id=?"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 999
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1000
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1001
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1002
    if-eqz v9, :cond_0

    .line 1003
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1004
    :cond_0
    return-object p1

    .line 1005
    :cond_1
    :try_start_1
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1006
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzew$zzb;->zzc()Lcom/google/android/gms/internal/measurement/zzew$zzb$zza;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/google/android/gms/measurement/internal/zzmz;->zza(Lcom/google/android/gms/internal/measurement/zzkm;[B)Lcom/google/android/gms/internal/measurement/zzkm;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzew$zzb$zza;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzix$zzb;->zzab()Lcom/google/android/gms/internal/measurement/zzkj;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzix;

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzew$zzb;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1007
    nop

    .line 1013
    :try_start_3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzew$zzb;->zzk()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1014
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1015
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1016
    if-nez v3, :cond_2

    .line 1017
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1018
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1019
    :cond_2
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1008
    :catch_0
    move-exception v1

    .line 1009
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v2

    .line 1010
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v2

    const-string v3, "Failed to merge filter. appId"

    .line 1011
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1012
    nop

    .line 1020
    :cond_3
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v1, :cond_1

    .line 1021
    if-eqz v9, :cond_4

    .line 1022
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1034
    :cond_4
    return-object v0

    .line 1031
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 1023
    :catch_1
    move-exception v0

    .line 1024
    :try_start_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v1

    .line 1025
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v1

    const-string v2, "Database error querying filters. appId"

    .line 1026
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1027
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1028
    if-eqz v9, :cond_5

    .line 1029
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1030
    :cond_5
    return-object p1

    .line 1031
    :goto_1
    if-eqz v9, :cond_6

    .line 1032
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1033
    :cond_6
    throw p1
.end method

.method final zzl(Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 1119
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzmo;->zzak()V

    .line 1120
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 1121
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1122
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    .line 1123
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzao;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1124
    nop

    .line 1125
    const/4 v2, 0x0

    :try_start_0
    const-string v3, "select audience_id, filter_id from event_filters where app_id = ? and session_scoped = 1 UNION select audience_id, filter_id from property_filters where app_id = ? and session_scoped = 1;"

    filled-new-array {p1, p1}, [Ljava/lang/String;

    move-result-object v4

    .line 1126
    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1127
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1128
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1129
    if-eqz v2, :cond_0

    .line 1130
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1131
    :cond_0
    return-object p1

    .line 1132
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1133
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1134
    if-nez v3, :cond_2

    .line 1135
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1136
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1137
    :cond_2
    const/4 v1, 0x1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1138
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1139
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    .line 1140
    if-eqz v2, :cond_3

    .line 1141
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1153
    :cond_3
    return-object v0

    .line 1150
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 1142
    :catch_0
    move-exception v0

    .line 1143
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v1

    .line 1144
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v1

    const-string v3, "Database error querying scoped filters. appId"

    .line 1145
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v3, p1, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1146
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1147
    if-eqz v2, :cond_4

    .line 1148
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1149
    :cond_4
    return-object p1

    .line 1150
    :goto_0
    if-eqz v2, :cond_5

    .line 1151
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1152
    :cond_5
    throw p1
.end method

.method public final zzp()V
    .locals 1

    .line 1170
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzmo;->zzak()V

    .line 1171
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzao;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1172
    return-void
.end method

.method public final zzu()V
    .locals 1

    .line 1173
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzmo;->zzak()V

    .line 1174
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzao;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1175
    return-void
.end method

.method final zzv()V
    .locals 6

    .line 1194
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 1195
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzmo;->zzak()V

    .line 1196
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzao;->zzan()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1197
    return-void

    .line 1198
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzml;->zzn()Lcom/google/android/gms/measurement/internal/zzls;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzls;->zza:Lcom/google/android/gms/measurement/internal/zzgi;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->zza()J

    move-result-wide v0

    .line 1199
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v2

    .line 1200
    sub-long v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 1201
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzbi;->zzy:Lcom/google/android/gms/measurement/internal/zzfi;

    .line 1202
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzfi;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1203
    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1204
    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    .line 1205
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzml;->zzn()Lcom/google/android/gms/measurement/internal/zzls;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzls;->zza:Lcom/google/android/gms/measurement/internal/zzgi;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzgi;->zza(J)V

    .line 1206
    nop

    .line 1207
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 1208
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzmo;->zzak()V

    .line 1209
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzao;->zzan()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1210
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzao;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1211
    nop

    .line 1212
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 1213
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzaf;->zzm()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 1214
    nop

    .line 1215
    const-string v2, "queue"

    const-string v3, "abs(bundle_end_timestamp - ?) > cast(? as integer)"

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1216
    if-lez v0, :cond_1

    .line 1217
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzp()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v1

    const-string v2, "Deleted stale rows. rowsDeleted"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1218
    :cond_1
    return-void
.end method

.method public final zzw()V
    .locals 1

    .line 1364
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzmo;->zzak()V

    .line 1365
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzao;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1366
    return-void
.end method

.method public final zzx()Z
    .locals 4

    .line 1561
    const-string v0, "select count(1) > 0 from raw_events"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzao;->zzb(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    .line 1562
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzy()Z
    .locals 4

    .line 1563
    nop

    .line 1564
    const-string v0, "select count(1) > 0 from queue where has_realtime = 1"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzao;->zzb(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    .line 1565
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzz()Z
    .locals 4

    .line 1566
    nop

    .line 1567
    const-string v0, "select count(1) > 0 from raw_events where realtime = 1"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzao;->zzb(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    .line 1568
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
