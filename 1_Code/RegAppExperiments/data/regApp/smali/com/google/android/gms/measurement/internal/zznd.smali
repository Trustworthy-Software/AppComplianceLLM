.class public final Lcom/google/android/gms/measurement/internal/zznd;
.super Lcom/google/android/gms/measurement/internal/zzic;
.source "com.google.android.gms:play-services-measurement-impl@@21.5.0"


# static fields
.field private static final zza:[Ljava/lang/String;

.field private static final zzb:[Ljava/lang/String;


# instance fields
.field private zzc:Ljava/security/SecureRandom;

.field private final zzd:Ljava/util/concurrent/atomic/AtomicLong;

.field private zze:I

.field private zzf:Landroidx/privacysandbox/ads/adservices/java/measurement/MeasurementManagerFutures;

.field private zzg:Ljava/lang/Boolean;

.field private zzh:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 548
    const-string v0, "google_"

    const-string v1, "ga_"

    const-string v2, "firebase_"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/zznd;->zza:[Ljava/lang/String;

    .line 549
    const-string v0, "_err"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/zznd;->zzb:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzhf;)V
    .locals 2

    .line 550
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzic;-><init>(Lcom/google/android/gms/measurement/internal/zzhf;)V

    .line 551
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zznd;->zzh:Ljava/lang/Integer;

    .line 552
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zznd;->zzd:Ljava/util/concurrent/atomic/AtomicLong;

    .line 553
    return-void
.end method

.method private final zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Landroid/os/Bundle;Ljava/util/List;ZZ)I
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ)I"
        }
    .end annotation

    .line 1
    move-object v7, p0

    move-object/from16 v8, p3

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 2
    nop

    .line 3
    invoke-static/range {p4 .. p4}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "param"

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v2, :cond_8

    .line 4
    if-eqz p8, :cond_7

    .line 5
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzik;->zzc:[Ljava/lang/String;

    invoke-static {v8, v2}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6
    const/16 v0, 0x14

    return v0

    .line 7
    :cond_0
    iget-object v2, v7, Lcom/google/android/gms/measurement/internal/zznd;->zzu:Lcom/google/android/gms/measurement/internal/zzhf;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhf;->zzr()Lcom/google/android/gms/measurement/internal/zzkp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzkp;->zzai()Z

    move-result v2

    if-nez v2, :cond_1

    .line 8
    const/16 v0, 0x19

    return v0

    .line 9
    :cond_1
    nop

    .line 10
    nop

    .line 11
    nop

    .line 12
    instance-of v2, v0, [Landroid/os/Parcelable;

    const/16 v4, 0xc8

    if-eqz v2, :cond_2

    .line 13
    move-object v5, v0

    check-cast v5, [Landroid/os/Parcelable;

    array-length v5, v5

    goto :goto_0

    .line 14
    :cond_2
    instance-of v5, v0, Ljava/util/ArrayList;

    if-eqz v5, :cond_4

    .line 15
    move-object v5, v0

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 17
    :goto_0
    if-le v5, v4, :cond_3

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v6

    .line 19
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfr;->zzv()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v6

    .line 20
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 21
    const-string v11, "Parameter array is too long; discarded. Value kind, name, array length"

    invoke-virtual {v6, v11, v3, v8, v5}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 22
    move v5, v10

    goto :goto_1

    .line 23
    :cond_3
    move v5, v9

    goto :goto_1

    .line 16
    :cond_4
    move v5, v9

    .line 24
    :goto_1
    if-nez v5, :cond_8

    .line 25
    nop

    .line 26
    nop

    .line 27
    nop

    .line 28
    nop

    .line 29
    if-eqz v2, :cond_5

    .line 30
    move-object v2, v0

    check-cast v2, [Landroid/os/Parcelable;

    array-length v5, v2

    if-le v5, v4, :cond_6

    .line 31
    nop

    .line 32
    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/os/Parcelable;

    .line 33
    invoke-virtual {v1, v8, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_2

    .line 34
    :cond_5
    instance-of v2, v0, Ljava/util/ArrayList;

    if-eqz v2, :cond_6

    .line 35
    move-object v2, v0

    check-cast v2, Ljava/util/ArrayList;

    .line 36
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v4, :cond_6

    .line 37
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v2, v10, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v8, v5}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 38
    :cond_6
    nop

    .line 40
    :goto_2
    const/16 v1, 0x11

    move v11, v1

    goto :goto_3

    .line 39
    :cond_7
    const/16 v0, 0x15

    return v0

    .line 40
    :cond_8
    move v11, v10

    :goto_3
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/zznd;->zzg(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/measurement/internal/zznd;->zzg(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_4

    .line 43
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v1

    iget-object v2, v7, Lcom/google/android/gms/measurement/internal/zznd;->zzu:Lcom/google/android/gms/measurement/internal/zzhf;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhf;->zzh()Lcom/google/android/gms/measurement/internal/zzfl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzad()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzaf;->zzb(Ljava/lang/String;)I

    move-result v1

    goto :goto_5

    .line 41
    :cond_a
    :goto_4
    nop

    .line 42
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v1

    iget-object v2, v7, Lcom/google/android/gms/measurement/internal/zznd;->zzu:Lcom/google/android/gms/measurement/internal/zzhf;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhf;->zzh()Lcom/google/android/gms/measurement/internal/zzfl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzad()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzaf;->zzc(Ljava/lang/String;)I

    move-result v1

    .line 44
    :goto_5
    invoke-virtual {p0, v3, v8, v1, v0}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 45
    return v11

    .line 46
    :cond_b
    if-eqz p8, :cond_14

    .line 47
    nop

    .line 48
    instance-of v1, v0, Landroid/os/Bundle;

    if-eqz v1, :cond_c

    .line 49
    move-object v4, v0

    check-cast v4, Landroid/os/Bundle;

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p6

    move/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)V

    .line 50
    goto/16 :goto_a

    .line 51
    :cond_c
    instance-of v1, v0, [Landroid/os/Parcelable;

    if-eqz v1, :cond_f

    .line 52
    move-object v12, v0

    check-cast v12, [Landroid/os/Parcelable;

    .line 53
    array-length v13, v12

    move v14, v10

    :goto_6
    if-ge v14, v13, :cond_e

    aget-object v0, v12, v14

    .line 54
    instance-of v1, v0, Landroid/os/Bundle;

    if-nez v1, :cond_d

    .line 55
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v1

    .line 56
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzv()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v1

    .line 57
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 58
    const-string v2, "All Parcelable[] elements must be of type Bundle. Value type, name"

    invoke-virtual {v1, v2, v0, v8}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 59
    goto :goto_9

    .line 60
    :cond_d
    move-object v4, v0

    check-cast v4, Landroid/os/Bundle;

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p6

    move/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)V

    .line 61
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 62
    :cond_e
    goto :goto_a

    .line 63
    :cond_f
    instance-of v1, v0, Ljava/util/ArrayList;

    if-eqz v1, :cond_13

    .line 64
    move-object v12, v0

    check-cast v12, Ljava/util/ArrayList;

    .line 65
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    move v0, v10

    :goto_7
    if-ge v0, v13, :cond_12

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v14, v0, 0x1

    .line 66
    instance-of v0, v1, Landroid/os/Bundle;

    if-nez v0, :cond_11

    .line 67
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzv()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    .line 69
    if-eqz v1, :cond_10

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_8

    :cond_10
    const-string v1, "null"

    .line 70
    :goto_8
    const-string v2, "All ArrayList elements must be of type Bundle. Value type, name"

    invoke-virtual {v0, v2, v1, v8}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 71
    goto :goto_9

    .line 72
    :cond_11
    move-object v4, v1

    check-cast v4, Landroid/os/Bundle;

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p6

    move/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)V

    .line 73
    move v0, v14

    goto :goto_7

    .line 74
    :cond_12
    goto :goto_a

    .line 75
    :cond_13
    :goto_9
    move v9, v10

    .line 76
    :goto_a
    if-eqz v9, :cond_14

    .line 77
    return v11

    .line 78
    :cond_14
    const/4 v0, 0x4

    return v0
.end method

.method public static zza(JJ)J
    .locals 2

    .line 217
    const-wide/32 v0, 0xea60

    mul-long/2addr p2, v0

    add-long/2addr p0, p2

    const-wide/32 p2, 0x5265c00

    div-long/2addr p0, p2

    return-wide p0
.end method

.method public static zza(Lcom/google/android/gms/measurement/internal/zzbb;)J
    .locals 5

    .line 198
    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    .line 199
    return-wide v0

    .line 200
    :cond_0
    nop

    .line 201
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbb;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 202
    invoke-virtual {p0, v3}, Lcom/google/android/gms/measurement/internal/zzbb;->zzc(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 203
    instance-of v4, v3, [Landroid/os/Parcelable;

    if-eqz v4, :cond_1

    .line 204
    check-cast v3, [Landroid/os/Parcelable;

    array-length v3, v3

    int-to-long v3, v3

    add-long/2addr v0, v3

    .line 205
    :cond_1
    goto :goto_0

    .line 206
    :cond_2
    return-wide v0
.end method

.method static zza([B)J
    .locals 9

    .line 188
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    .line 190
    nop

    .line 191
    nop

    .line 192
    array-length v0, p0

    sub-int/2addr v0, v1

    const-wide/16 v3, 0x0

    .line 193
    :goto_1
    if-ltz v0, :cond_1

    array-length v1, p0

    add-int/lit8 v1, v1, -0x8

    if-lt v0, v1, :cond_1

    .line 194
    aget-byte v1, p0, v0

    int-to-long v5, v1

    const-wide/16 v7, 0xff

    and-long/2addr v5, v7

    shl-long/2addr v5, v2

    add-long/2addr v3, v5

    .line 195
    add-int/lit8 v2, v2, 0x8

    .line 196
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 197
    :cond_1
    return-wide v3
.end method

.method public static zza(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5

    .line 312
    if-nez p0, :cond_0

    .line 313
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    return-object p0

    .line 314
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 315
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p0

    .line 316
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 317
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 318
    instance-of v3, v2, Landroid/os/Bundle;

    if-eqz v3, :cond_1

    .line 319
    new-instance v3, Landroid/os/Bundle;

    check-cast v2, Landroid/os/Bundle;

    invoke-direct {v3, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 320
    :cond_1
    instance-of v1, v2, [Landroid/os/Parcelable;

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 321
    check-cast v2, [Landroid/os/Parcelable;

    .line 322
    nop

    :goto_1
    array-length v1, v2

    if-ge v3, v1, :cond_3

    .line 323
    aget-object v1, v2, v3

    instance-of v1, v1, Landroid/os/Bundle;

    if-eqz v1, :cond_2

    .line 324
    new-instance v1, Landroid/os/Bundle;

    aget-object v4, v2, v3

    check-cast v4, Landroid/os/Bundle;

    invoke-direct {v1, v4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    aput-object v1, v2, v3

    .line 325
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 326
    :cond_3
    goto :goto_0

    :cond_4
    instance-of v1, v2, Ljava/util/List;

    if-eqz v1, :cond_6

    .line 327
    check-cast v2, Ljava/util/List;

    .line 328
    nop

    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_6

    .line 329
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 330
    instance-of v4, v1, Landroid/os/Bundle;

    if-eqz v4, :cond_5

    .line 331
    new-instance v4, Landroid/os/Bundle;

    check-cast v1, Landroid/os/Bundle;

    invoke-direct {v4, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v2, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 332
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 333
    :cond_6
    goto :goto_0

    .line 334
    :cond_7
    return-object v0
.end method

.method public static zza(Ljava/util/List;)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zznc;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 219
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 220
    if-nez p0, :cond_0

    .line 221
    return-object v0

    .line 222
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/measurement/internal/zznc;

    .line 223
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zznc;->zzd:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 224
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zznc;->zza:Ljava/lang/String;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zznc;->zzd:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 225
    :cond_1
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zznc;->zzc:Ljava/lang/Long;

    if-eqz v2, :cond_2

    .line 226
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zznc;->zza:Ljava/lang/String;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zznc;->zzc:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 227
    :cond_2
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zznc;->zzf:Ljava/lang/Double;

    if-eqz v2, :cond_3

    .line 228
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zznc;->zza:Ljava/lang/String;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zznc;->zzf:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 229
    :cond_3
    goto :goto_0

    .line 230
    :cond_4
    return-object v0
.end method

.method private final zza(ILjava/lang/Object;ZZ)Ljava/lang/Object;
    .locals 2

    .line 439
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 440
    return-object v0

    .line 441
    :cond_0
    instance-of v1, p2, Ljava/lang/Long;

    if-nez v1, :cond_e

    instance-of v1, p2, Ljava/lang/Double;

    if-eqz v1, :cond_1

    goto/16 :goto_3

    .line 443
    :cond_1
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 444
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long p1, p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 445
    :cond_2
    instance-of v1, p2, Ljava/lang/Byte;

    if-eqz v1, :cond_3

    .line 446
    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    int-to-long p1, p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 447
    :cond_3
    instance-of v1, p2, Ljava/lang/Short;

    if-eqz v1, :cond_4

    .line 448
    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result p1

    int-to-long p1, p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 449
    :cond_4
    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    .line 450
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    const-wide/16 p1, 0x1

    goto :goto_0

    :cond_5
    const-wide/16 p1, 0x0

    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 451
    :cond_6
    instance-of v1, p2, Ljava/lang/Float;

    if-eqz v1, :cond_7

    .line 452
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 453
    :cond_7
    instance-of v1, p2, Ljava/lang/String;

    if-nez v1, :cond_d

    instance-of v1, p2, Ljava/lang/Character;

    if-nez v1, :cond_d

    instance-of v1, p2, Ljava/lang/CharSequence;

    if-eqz v1, :cond_8

    goto :goto_2

    .line 456
    :cond_8
    if-eqz p4, :cond_c

    instance-of p1, p2, [Landroid/os/Bundle;

    if-nez p1, :cond_9

    instance-of p1, p2, [Landroid/os/Parcelable;

    if-eqz p1, :cond_c

    .line 457
    :cond_9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 458
    check-cast p2, [Landroid/os/Parcelable;

    array-length p3, p2

    const/4 p4, 0x0

    :goto_1
    if-ge p4, p3, :cond_b

    aget-object v0, p2, p4

    .line 459
    instance-of v1, v0, Landroid/os/Bundle;

    if-eqz v1, :cond_a

    .line 460
    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/zznd;->zzb(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 461
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 462
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 463
    :cond_a
    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    .line 464
    :cond_b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Landroid/os/Bundle;

    invoke-interface {p1, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 465
    :cond_c
    return-object v0

    .line 454
    :cond_d
    :goto_2
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 455
    invoke-static {p2, p1, p3}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 442
    :cond_e
    :goto_3
    return-object p2
.end method

.method public static zza(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 3

    .line 469
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 470
    return-object v0

    .line 471
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->codePointCount(II)I

    move-result v1

    if-le v1, p1, :cond_2

    .line 472
    if-eqz p2, :cond_1

    .line 473
    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result p1

    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "..."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 474
    :cond_1
    return-object v0

    .line 475
    :cond_2
    return-object p0
.end method

.method private static zza(Landroid/os/Bundle;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 559
    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/zznd;->zzb(Landroid/os/Bundle;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 560
    nop

    .line 561
    const/16 p1, 0x28

    const/4 p3, 0x1

    invoke-static {p2, p1, p3}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p1

    .line 562
    const-string p2, "_ev"

    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    if-eqz p4, :cond_1

    .line 564
    nop

    .line 565
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    if-eqz p4, :cond_1

    instance-of p1, p4, Ljava/lang/String;

    if-nez p1, :cond_0

    instance-of p1, p4, Ljava/lang/CharSequence;

    if-eqz p1, :cond_1

    .line 567
    :cond_0
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 568
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    int-to-long p1, p1

    const-string p3, "_el"

    invoke-virtual {p0, p3, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 569
    :cond_1
    return-void
.end method

.method public static zza(Lcom/google/android/gms/measurement/internal/zzki;Landroid/os/Bundle;Z)V
    .locals 4

    .line 570
    const-string v0, "_si"

    const-string v1, "_sn"

    const-string v2, "_sc"

    if-eqz p1, :cond_3

    if-eqz p0, :cond_3

    .line 571
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p2, :cond_3

    .line 572
    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzki;->zza:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 573
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzki;->zza:Ljava/lang/String;

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 574
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 575
    :goto_0
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzb:Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 576
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzb:Ljava/lang/String;

    invoke-virtual {p1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 577
    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 578
    :goto_1
    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzc:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void

    .line 579
    :cond_3
    if-eqz p1, :cond_4

    if-nez p0, :cond_4

    if-eqz p2, :cond_4

    .line 580
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 581
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 582
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 583
    :cond_4
    return-void
.end method

.method public static zza(Lcom/google/android/gms/measurement/internal/zznf;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 6

    .line 636
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Lcom/google/android/gms/measurement/internal/zznf;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 637
    return-void
.end method

.method static zza(Lcom/google/android/gms/measurement/internal/zznf;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 638
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 639
    invoke-static {v0, p2}, Lcom/google/android/gms/measurement/internal/zznd;->zzb(Landroid/os/Bundle;I)Z

    .line 640
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 641
    invoke-virtual {v0, p3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    :cond_0
    const/4 p3, 0x6

    if-eq p2, p3, :cond_1

    const/4 p3, 0x7

    if-eq p2, p3, :cond_1

    const/4 p3, 0x2

    if-ne p2, p3, :cond_2

    .line 643
    :cond_1
    const-string p2, "_el"

    int-to-long p3, p5

    invoke-virtual {v0, p2, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 644
    :cond_2
    const-string p2, "_err"

    invoke-interface {p0, p1, p2, v0}, Lcom/google/android/gms/measurement/internal/zznf;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 645
    return-void
.end method

.method private final zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 724
    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    if-nez v11, :cond_0

    .line 725
    return-void

    .line 726
    :cond_0
    nop

    .line 727
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaf;->zzc()I

    move-result v13

    .line 728
    new-instance v0, Ljava/util/TreeSet;

    invoke-virtual/range {p4 .. p4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 729
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    const/16 v16, 0x0

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    .line 730
    nop

    .line 731
    if-eqz v12, :cond_2

    invoke-interface {v12, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_3

    .line 732
    :cond_2
    :goto_1
    if-nez p6, :cond_3

    .line 733
    invoke-direct {v9, v8}, Lcom/google/android/gms/measurement/internal/zznd;->zzl(Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    .line 732
    :cond_3
    const/4 v0, 0x0

    .line 734
    :goto_2
    if-nez v0, :cond_4

    .line 735
    invoke-direct {v9, v8}, Lcom/google/android/gms/measurement/internal/zznd;->zzk(Ljava/lang/String;)I

    move-result v0

    .line 736
    :cond_4
    :goto_3
    if-eqz v0, :cond_6

    .line 737
    nop

    .line 738
    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    move-object v1, v8

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    .line 739
    :goto_4
    invoke-static {v11, v0, v8, v8, v1}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Landroid/os/Bundle;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 740
    invoke-virtual {v11, v8}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 741
    goto :goto_0

    .line 742
    :cond_6
    invoke-virtual {v11, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 743
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    .line 744
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzv()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    .line 745
    const-string v1, "Nested Bundle parameters are not allowed; discarded. event name, param name, child param name"

    move-object/from16 v7, p3

    invoke-virtual {v0, v1, v10, v7, v8}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 746
    const/16 v0, 0x16

    move-object v15, v8

    goto :goto_5

    .line 747
    :cond_7
    move-object/from16 v7, p3

    .line 748
    invoke-virtual {v11, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const/16 v17, 0x0

    .line 749
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v8

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object v15, v8

    move/from16 v8, v17

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Landroid/os/Bundle;Ljava/util/List;ZZ)I

    move-result v0

    .line 750
    :goto_5
    if-eqz v0, :cond_8

    .line 751
    const-string v1, "_ev"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 752
    invoke-virtual {v11, v15}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v11, v0, v15, v15, v1}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Landroid/os/Bundle;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 753
    invoke-virtual {v11, v15}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 754
    goto/16 :goto_0

    .line 755
    :cond_8
    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/zznd;->zzh(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzik;->zzd:[Ljava/lang/String;

    invoke-static {v15, v0}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 756
    add-int/lit8 v0, v16, 0x1

    .line 757
    const v1, 0xdc64e60

    const/4 v2, 0x1

    invoke-virtual {v9, v1, v2}, Lcom/google/android/gms/measurement/internal/zznd;->zza(IZ)Z

    move-result v1

    const/16 v2, 0x17

    if-nez v1, :cond_9

    .line 758
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v1

    .line 759
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzh()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v1

    .line 760
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzi()Lcom/google/android/gms/measurement/internal/zzfq;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 761
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzi()Lcom/google/android/gms/measurement/internal/zzfq;

    move-result-object v4

    invoke-virtual {v4, v11}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v4

    .line 762
    const-string v5, "Item array not supported on client\'s version of Google Play Services (Android Only)"

    invoke-virtual {v1, v5, v3, v4}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 763
    invoke-static {v11, v2}, Lcom/google/android/gms/measurement/internal/zznd;->zzb(Landroid/os/Bundle;I)Z

    .line 764
    invoke-virtual {v11, v15}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 765
    goto :goto_6

    .line 766
    :cond_9
    if-le v0, v13, :cond_b

    .line 767
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzot;->zza()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 768
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v1

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzbi;->zzcc:Lcom/google/android/gms/measurement/internal/zzfi;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Lcom/google/android/gms/measurement/internal/zzfi;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 769
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v1

    .line 770
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzh()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Item can\'t contain more than "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " item-scoped custom params"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 771
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzi()Lcom/google/android/gms/measurement/internal/zzfq;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 772
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzi()Lcom/google/android/gms/measurement/internal/zzfq;

    move-result-object v4

    invoke-virtual {v4, v11}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v4

    .line 773
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 774
    const/16 v1, 0x1c

    invoke-static {v11, v1}, Lcom/google/android/gms/measurement/internal/zznd;->zzb(Landroid/os/Bundle;I)Z

    .line 775
    invoke-virtual {v11, v15}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 776
    goto :goto_6

    .line 777
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v1

    .line 778
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzh()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v1

    .line 779
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzi()Lcom/google/android/gms/measurement/internal/zzfq;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 780
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzi()Lcom/google/android/gms/measurement/internal/zzfq;

    move-result-object v4

    invoke-virtual {v4, v11}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v4

    .line 781
    const-string v5, "Item cannot contain custom parameters"

    invoke-virtual {v1, v5, v3, v4}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 782
    invoke-static {v11, v2}, Lcom/google/android/gms/measurement/internal/zznd;->zzb(Landroid/os/Bundle;I)Z

    .line 783
    invoke-virtual {v11, v15}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 784
    nop

    .line 729
    :goto_6
    move/from16 v16, v0

    goto/16 :goto_0

    .line 766
    :cond_b
    move/from16 v16, v0

    .line 785
    :cond_c
    goto/16 :goto_0

    .line 786
    :cond_d
    return-void
.end method

.method static zza(Landroid/content/Context;)Z
    .locals 4

    .line 981
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 982
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 983
    if-nez v1, :cond_0

    .line 984
    return v0

    .line 985
    :cond_0
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.google.android.gms.measurement.AppMeasurementReceiver"

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 986
    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    .line 987
    if-eqz p0, :cond_1

    iget-boolean p0, p0, Landroid/content/pm/ActivityInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    .line 988
    const/4 p0, 0x1

    return p0

    .line 989
    :cond_1
    goto :goto_0

    .line 990
    :catch_0
    move-exception p0

    .line 991
    :goto_0
    return v0
.end method

.method static zza(Landroid/content/Context;Z)Z
    .locals 0

    .line 1001
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1002
    nop

    .line 1003
    const-string p1, "com.google.android.gms.measurement.AppMeasurementJobService"

    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/zznd;->zzc(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static zza(Landroid/content/Intent;)Z
    .locals 1

    .line 1025
    const-string v0, "android.intent.extra.REFERRER_NAME"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1026
    nop

    .line 1027
    const-string v0, "android-app://com.google.android.googlequicksearchbox/https/www.google.com"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1028
    const-string v0, "https://www.google.com"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1029
    const-string v0, "android-app://com.google.appcrawler"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 1030
    :cond_0
    const/4 p0, 0x0

    return p0

    .line 1029
    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method static zza(Landroid/os/Bundle;I)Z
    .locals 4

    .line 912
    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gt v0, p1, :cond_0

    .line 913
    return v1

    .line 914
    :cond_0
    new-instance v0, Ljava/util/TreeSet;

    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 915
    nop

    .line 916
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 917
    add-int/2addr v1, v3

    .line 918
    if-le v1, p1, :cond_1

    .line 919
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 920
    :cond_1
    goto :goto_0

    .line 921
    :cond_2
    return v3
.end method

.method static zza(Ljava/lang/Object;)Z
    .locals 1

    .line 948
    instance-of v0, p0, [Landroid/os/Parcelable;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/util/ArrayList;

    if-nez v0, :cond_1

    instance-of p0, p0, Landroid/os/Bundle;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method static zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 1036
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 1037
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 1038
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 1039
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1040
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    return v2

    :cond_0
    return v3

    .line 1041
    :cond_1
    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    .line 1042
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 1043
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v3

    .line 1044
    :cond_3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v3

    .line 1045
    :cond_5
    if-nez v0, :cond_9

    if-eqz v1, :cond_9

    .line 1046
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 1047
    return v3

    .line 1048
    :cond_6
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_8

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    return v3

    :cond_8
    :goto_0
    return v2

    .line 1049
    :cond_9
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_b

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_1

    :cond_a
    return v3

    :cond_b
    :goto_1
    return v2
.end method

.method private static zza(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4

    .line 798
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 799
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 800
    invoke-static {p0, v3}, Lcom/google/android/gms/measurement/internal/zzng;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 801
    const/4 p0, 0x1

    return p0

    .line 802
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 803
    :cond_1
    return v1
.end method

.method static zza(Landroid/os/Parcelable;)[B
    .locals 2

    .line 1053
    if-nez p0, :cond_0

    .line 1054
    const/4 p0, 0x0

    return-object p0

    .line 1055
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1056
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p0, v0, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1057
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1058
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1059
    return-object p0

    .line 1060
    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1061
    throw p0
.end method

.method public static zzb(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzad;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 506
    if-nez p0, :cond_0

    .line 507
    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    return-object p0

    .line 508
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 509
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/measurement/internal/zzad;

    .line 510
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 511
    const-string v3, "app_id"

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzad;->zza:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    const-string v3, "origin"

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzad;->zzb:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    const-string v3, "creation_timestamp"

    iget-wide v4, v1, Lcom/google/android/gms/measurement/internal/zzad;->zzd:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 514
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzad;->zzc:Lcom/google/android/gms/measurement/internal/zznc;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zznc;->zza:Ljava/lang/String;

    const-string v4, "name"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzad;->zzc:Lcom/google/android/gms/measurement/internal/zznc;

    .line 516
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zznc;->zza()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 517
    invoke-static {v2, v3}, Lcom/google/android/gms/measurement/internal/zzie;->zza(Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 518
    const-string v3, "active"

    iget-boolean v4, v1, Lcom/google/android/gms/measurement/internal/zzad;->zze:Z

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 519
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzad;->zzf:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 520
    const-string v3, "trigger_event_name"

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzad;->zzf:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    :cond_1
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzad;->zzg:Lcom/google/android/gms/measurement/internal/zzbg;

    if-eqz v3, :cond_2

    .line 522
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzad;->zzg:Lcom/google/android/gms/measurement/internal/zzbg;

    .line 523
    const-string v4, "timed_out_event_name"

    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzbg;->zza:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzbg;->zzb:Lcom/google/android/gms/measurement/internal/zzbb;

    if-eqz v4, :cond_2

    .line 525
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzbg;->zzb:Lcom/google/android/gms/measurement/internal/zzbb;

    .line 526
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzbb;->zzb()Landroid/os/Bundle;

    move-result-object v3

    .line 527
    const-string v4, "timed_out_event_params"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 528
    :cond_2
    const-string v3, "trigger_timeout"

    iget-wide v4, v1, Lcom/google/android/gms/measurement/internal/zzad;->zzh:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 529
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzad;->zzi:Lcom/google/android/gms/measurement/internal/zzbg;

    if-eqz v3, :cond_3

    .line 530
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzad;->zzi:Lcom/google/android/gms/measurement/internal/zzbg;

    .line 531
    const-string v4, "triggered_event_name"

    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzbg;->zza:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzbg;->zzb:Lcom/google/android/gms/measurement/internal/zzbb;

    if-eqz v4, :cond_3

    .line 533
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzbg;->zzb:Lcom/google/android/gms/measurement/internal/zzbb;

    .line 534
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzbb;->zzb()Landroid/os/Bundle;

    move-result-object v3

    .line 535
    const-string v4, "triggered_event_params"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 536
    :cond_3
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzad;->zzc:Lcom/google/android/gms/measurement/internal/zznc;

    iget-wide v3, v3, Lcom/google/android/gms/measurement/internal/zznc;->zzb:J

    const-string v5, "triggered_timestamp"

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 537
    const-string v3, "time_to_live"

    iget-wide v4, v1, Lcom/google/android/gms/measurement/internal/zzad;->zzj:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 538
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzad;->zzk:Lcom/google/android/gms/measurement/internal/zzbg;

    if-eqz v3, :cond_4

    .line 539
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzad;->zzk:Lcom/google/android/gms/measurement/internal/zzbg;

    .line 540
    const-string v3, "expired_event_name"

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzbg;->zza:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzbg;->zzb:Lcom/google/android/gms/measurement/internal/zzbb;

    if-eqz v3, :cond_4

    .line 542
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzbg;->zzb:Lcom/google/android/gms/measurement/internal/zzbb;

    .line 543
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbb;->zzb()Landroid/os/Bundle;

    move-result-object v1

    .line 544
    const-string v3, "expired_event_params"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 545
    :cond_4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 546
    goto/16 :goto_0

    .line 547
    :cond_5
    return-object v0
.end method

.method private final zzb(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 949
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    const-string v1, "CN=Android Debug,O=Android,C=US"

    invoke-direct {v0, v1}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    .line 950
    nop

    .line 951
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object p1

    .line 952
    const/16 v1, 0x40

    invoke-virtual {p1, p2, v1}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 953
    if-eqz p1, :cond_0

    iget-object p2, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz p2, :cond_0

    iget-object p2, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length p2, p2

    if-lez p2, :cond_0

    .line 954
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    .line 955
    const-string p2, "X.509"

    invoke-static {p2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p2

    .line 956
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 957
    invoke-virtual {p1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p2, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;

    .line 958
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 959
    :cond_0
    goto :goto_0

    .line 963
    :catch_0
    move-exception p1

    .line 964
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p2

    const-string v0, "Package name not found"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 960
    :catch_1
    move-exception p1

    .line 961
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p2

    const-string v0, "Error obtaining certificate"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 962
    nop

    .line 965
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private static zzb(Landroid/os/Bundle;I)Z
    .locals 6

    .line 787
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 788
    return v0

    .line 789
    :cond_0
    const-string v1, "_err"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 790
    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 791
    int-to-long v2, p1

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 792
    const/4 p0, 0x1

    return p0

    .line 793
    :cond_1
    return v0
.end method

.method static zzb(Ljava/lang/Object;)[Landroid/os/Bundle;
    .locals 2

    .line 1062
    instance-of v0, p0, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 1063
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/os/Bundle;

    const/4 v1, 0x0

    check-cast p0, Landroid/os/Bundle;

    aput-object p0, v0, v1

    return-object v0

    .line 1064
    :cond_0
    instance-of v0, p0, [Landroid/os/Parcelable;

    if-eqz v0, :cond_1

    .line 1065
    check-cast p0, [Landroid/os/Parcelable;

    array-length v0, p0

    const-class v1, [Landroid/os/Bundle;

    .line 1066
    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/os/Bundle;

    .line 1067
    return-object p0

    .line 1068
    :cond_1
    instance-of v0, p0, Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 1069
    check-cast p0, Ljava/util/ArrayList;

    .line 1070
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/os/Bundle;

    return-object p0

    .line 1071
    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method static zzc()I
    .locals 2

    .line 115
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 116
    invoke-static {v1}, Landroid/os/ext/SdkExtensions;->getExtensionVersion(I)I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 117
    const v0, 0xf4240

    invoke-static {v0}, Landroid/os/ext/SdkExtensions;->getExtensionVersion(I)I

    move-result v0

    return v0

    .line 118
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static zzc(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .line 992
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 993
    if-nez v1, :cond_0

    .line 994
    return v0

    .line 995
    :cond_0
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object p0

    .line 996
    if-eqz p0, :cond_1

    iget-boolean p0, p0, Landroid/content/pm/ServiceInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    .line 997
    const/4 p0, 0x1

    return p0

    .line 998
    :cond_1
    goto :goto_0

    .line 999
    :catch_0
    move-exception p0

    .line 1000
    :goto_0
    return v0
.end method

.method static zzd(Ljava/lang/String;)Z
    .locals 2

    .line 794
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzbi;->zzay:Lcom/google/android/gms/measurement/internal/zzfi;

    .line 795
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfi;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 796
    check-cast v0, Ljava/lang/String;

    .line 797
    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method static zzg(Ljava/lang/String;)Z
    .locals 1

    .line 978
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static zzh(Ljava/lang/String;)Z
    .locals 3

    .line 979
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 980
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5f

    if-ne v1, v2, :cond_1

    const-string v1, "_ep"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static zzj(Ljava/lang/String;)Z
    .locals 5

    .line 1031
    sget-object v0, Lcom/google/android/gms/measurement/internal/zznd;->zzb:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 1032
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1033
    return v2

    .line 1034
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1035
    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private final zzk(Ljava/lang/String;)I
    .locals 3

    .line 94
    const-string v0, "event param"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zznd;->zzb(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x3

    if-nez v1, :cond_0

    .line 95
    return v2

    .line 96
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 97
    const/16 p1, 0xe

    return p1

    .line 98
    :cond_1
    const/16 v1, 0x28

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 99
    return v2

    .line 100
    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private final zzl(Ljava/lang/String;)I
    .locals 3

    .line 101
    const-string v0, "event param"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zznd;->zzc(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x3

    if-nez v1, :cond_0

    .line 102
    return v2

    .line 103
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 104
    const/16 p1, 0xe

    return p1

    .line 105
    :cond_1
    const/16 v1, 0x28

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 106
    return v2

    .line 107
    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private static zzm(Ljava/lang/String;)I
    .locals 2

    .line 122
    const-string v0, "_ldl"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    const/16 p0, 0x800

    return p0

    .line 124
    :cond_0
    const-string v0, "_id"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    const/16 p0, 0x100

    return p0

    .line 126
    :cond_1
    const-string v0, "_lgclid"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x64

    if-eqz v0, :cond_2

    .line 127
    return v1

    .line 128
    :cond_2
    const-string v0, "_gbraid"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 129
    return v1

    .line 130
    :cond_3
    const/16 p0, 0x24

    return p0
.end method

.method private static zzn(Ljava/lang/String;)Z
    .locals 1

    .line 1050
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1051
    nop

    .line 1052
    const-string v0, "^(1:\\d+:android:[a-f0-9]+|ca-app-pub-.*)$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static zzu()Ljava/security/MessageDigest;
    .locals 2

    .line 494
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 495
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    if-eqz v1, :cond_0

    .line 497
    return-object v1

    .line 498
    :cond_0
    goto :goto_1

    .line 499
    :catch_0
    move-exception v1

    .line 500
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 501
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private final zzy()Z
    .locals 7

    .line 922
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznd;->zzg:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    .line 923
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznd;->zzn()Landroidx/privacysandbox/ads/adservices/java/measurement/MeasurementManagerFutures;

    move-result-object v0

    .line 924
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 925
    return v1

    .line 926
    :cond_0
    nop

    .line 927
    invoke-virtual {v0}, Landroidx/privacysandbox/ads/adservices/java/measurement/MeasurementManagerFutures;->getMeasurementApiStatusAsync()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 928
    nop

    .line 929
    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x2710

    invoke-interface {v0, v4, v5, v3}, Lcom/google/common/util/concurrent/ListenableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_4

    .line 930
    if-eqz v0, :cond_1

    .line 931
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 933
    :catch_0
    move-exception v2

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_2

    :catch_2
    move-exception v2

    goto :goto_2

    :catch_3
    move-exception v2

    goto :goto_2

    .line 931
    :cond_1
    move v3, v1

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zznd;->zzg:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0

    .line 932
    goto :goto_3

    .line 933
    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v0

    goto :goto_1

    :catch_6
    move-exception v0

    goto :goto_1

    :catch_7
    move-exception v0

    :goto_1
    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    .line 934
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfr;->zzu()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v3

    const-string v4, "Measurement manager api exception"

    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 935
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zznd;->zzg:Ljava/lang/Boolean;

    .line 936
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzp()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v1

    const-string v2, "Measurement manager api status result"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 937
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznd;->zzg:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final zza(I)I
    .locals 2

    .line 131
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object p1

    .line 132
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zza()Landroid/content/Context;

    move-result-object v0

    const v1, 0xbdfcb8

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->isGooglePlayServicesAvailable(Landroid/content/Context;I)I

    move-result p1

    .line 133
    return p1
.end method

.method final zza(Ljava/lang/String;)I
    .locals 4

    .line 87
    const-string v0, "event"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zznd;->zzb(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x2

    if-nez v1, :cond_0

    .line 88
    return v2

    .line 89
    :cond_0
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzii;->zza:[Ljava/lang/String;

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzii;->zzb:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v3, p1}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 90
    const/16 p1, 0xd

    return p1

    .line 91
    :cond_1
    const/16 v1, 0x28

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 92
    return v2

    .line 93
    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method final zza(Ljava/lang/String;Ljava/lang/Object;)I
    .locals 2

    .line 79
    const-string v0, "_ldl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    nop

    .line 81
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zznd;->zzm(Ljava/lang/String;)I

    move-result v0

    .line 82
    const-string v1, "user property referrer"

    invoke-virtual {p0, v1, p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result p1

    goto :goto_0

    .line 83
    :cond_0
    nop

    .line 84
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zznd;->zzm(Ljava/lang/String;)I

    move-result v0

    .line 85
    const-string v1, "user property"

    invoke-virtual {p0, v1, p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result p1

    .line 86
    :goto_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x7

    return p1
.end method

.method final zza(Landroid/content/Context;Ljava/lang/String;)J
    .locals 6

    .line 164
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 165
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 167
    nop

    .line 168
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 169
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zznd;->zzu()Ljava/security/MessageDigest;

    move-result-object v1

    .line 170
    const-wide/16 v2, -0x1

    if-nez v1, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p1

    const-string p2, "Could not get MD5 instance"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    .line 172
    goto :goto_1

    .line 173
    :cond_0
    const-wide/16 v4, 0x0

    if-eqz v0, :cond_3

    .line 174
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zznd;->zzb(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 175
    nop

    .line 176
    invoke-static {p1}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object p1

    .line 177
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zza()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x40

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 178
    iget-object p2, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz p2, :cond_1

    iget-object p2, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length p2, p2

    if-lez p2, :cond_1

    .line 179
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    invoke-virtual {p1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    .line 180
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zznd;->zza([B)J

    move-result-wide v2

    .line 181
    goto :goto_1

    .line 182
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzu()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p1

    const-string p2, "Could not get signatures"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    goto :goto_0

    .line 174
    :cond_2
    move-wide v2, v4

    .line 184
    :goto_0
    goto :goto_1

    .line 185
    :catch_0
    move-exception p1

    .line 186
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p2

    const-string v0, "Package name not found"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 187
    :cond_3
    move-wide v2, v4

    :goto_1
    return-wide v2
.end method

.method public final bridge synthetic zza()Landroid/content/Context;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 218
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzic;->zza()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method final zza(Landroid/net/Uri;ZZ)Landroid/os/Bundle;
    .locals 17

    .line 231
    move-object/from16 v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 232
    return-object v1

    .line 233
    :cond_0
    nop

    .line 234
    nop

    .line 235
    nop

    .line 236
    nop

    .line 237
    nop

    .line 238
    nop

    .line 239
    nop

    .line 240
    nop

    .line 241
    nop

    .line 242
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->isHierarchical()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "sfmc_id"

    const-string v4, "srsltid"

    const-string v5, "dclid"

    const-string v6, "gbraid"

    const-string v7, "gclid"

    if-eqz v2, :cond_3

    .line 243
    :try_start_1
    const-string v2, "utm_campaign"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 244
    const-string v8, "utm_source"

    invoke-virtual {v0, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 245
    const-string v9, "utm_medium"

    invoke-virtual {v0, v9}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 246
    invoke-virtual {v0, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 247
    if-eqz p3, :cond_1

    .line 248
    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    .line 247
    :cond_1
    move-object v11, v1

    .line 249
    :goto_0
    const-string v12, "utm_id"

    invoke-virtual {v0, v12}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 250
    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 251
    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 252
    if-eqz p2, :cond_2

    .line 253
    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 252
    :cond_2
    move-object v15, v1

    goto :goto_1

    .line 242
    :cond_3
    move-object v2, v1

    move-object v8, v2

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    .line 254
    :goto_1
    nop

    .line 258
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 259
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 260
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 261
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_6

    if-eqz p3, :cond_4

    .line 262
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 263
    :cond_4
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 264
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 265
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_6

    if-eqz p2, :cond_5

    .line 266
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_5

    goto :goto_2

    .line 311
    :cond_5
    return-object v1

    .line 267
    :cond_6
    :goto_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 268
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_7

    .line 269
    move-object/from16 v16, v3

    const-string v3, "campaign"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 268
    :cond_7
    move-object/from16 v16, v3

    .line 270
    :goto_3
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 271
    const-string v2, "source"

    invoke-virtual {v1, v2, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    :cond_8
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 273
    const-string v2, "medium"

    invoke-virtual {v1, v2, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    :cond_9
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 275
    invoke-virtual {v1, v7, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    :cond_a
    if-eqz p3, :cond_b

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 277
    invoke-virtual {v1, v6, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    :cond_b
    const-string v2, "utm_term"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 279
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 280
    const-string v3, "term"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    :cond_c
    const-string v2, "utm_content"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 282
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 283
    const-string v3, "content"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :cond_d
    const-string v2, "aclid"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 285
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 286
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    :cond_e
    const-string v2, "cp1"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 288
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_f

    .line 289
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    :cond_f
    const-string v2, "anid"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 291
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_10

    .line 292
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    :cond_10
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 294
    const-string v2, "campaign_id"

    invoke-virtual {v1, v2, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    :cond_11
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 296
    invoke-virtual {v1, v5, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    :cond_12
    const-string v2, "utm_source_platform"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 298
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 299
    const-string v3, "source_platform"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    :cond_13
    const-string v2, "utm_creative_format"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 301
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 302
    const-string v3, "creative_format"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    :cond_14
    const-string v2, "utm_marketing_tactic"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 304
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 305
    const-string v2, "marketing_tactic"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    :cond_15
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 307
    invoke-virtual {v1, v4, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    :cond_16
    if-eqz p2, :cond_17

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 309
    move-object/from16 v0, v16

    invoke-virtual {v1, v0, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    :cond_17
    return-object v1

    .line 255
    :catch_0
    move-exception v0

    .line 256
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzu()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v2

    const-string v3, "Install referrer url isn\'t a hierarchical URI"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 257
    return-object v1
.end method

.method final zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)Landroid/os/Bundle;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 347
    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzii;->zzd:[Ljava/lang/String;

    .line 348
    invoke-static {v10, v0}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v13

    .line 349
    nop

    .line 350
    if-eqz v11, :cond_c

    .line 351
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15, v11}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 352
    nop

    .line 353
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaf;->zzg()I

    move-result v8

    .line 354
    new-instance v0, Ljava/util/TreeSet;

    invoke-virtual/range {p3 .. p3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 355
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    const/16 v17, 0x0

    move/from16 v18, v17

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    .line 356
    nop

    .line 357
    if-eqz v12, :cond_1

    invoke-interface {v12, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    move/from16 v0, v17

    goto :goto_3

    .line 358
    :cond_1
    :goto_1
    if-nez p5, :cond_2

    .line 359
    invoke-direct {v9, v7}, Lcom/google/android/gms/measurement/internal/zznd;->zzl(Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    .line 358
    :cond_2
    move/from16 v0, v17

    .line 360
    :goto_2
    if-nez v0, :cond_3

    .line 361
    invoke-direct {v9, v7}, Lcom/google/android/gms/measurement/internal/zznd;->zzk(Ljava/lang/String;)I

    move-result v0

    .line 362
    :cond_3
    :goto_3
    if-eqz v0, :cond_5

    .line 363
    nop

    .line 364
    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    move-object v1, v7

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    .line 365
    :goto_4
    invoke-static {v15, v0, v7, v7, v1}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Landroid/os/Bundle;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 366
    invoke-virtual {v15, v7}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 367
    move v9, v8

    goto :goto_6

    .line 368
    :cond_5
    nop

    .line 369
    invoke-virtual {v11, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 370
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v7

    move-object v5, v15

    move-object/from16 v6, p4

    move-object v14, v7

    move/from16 v7, p5

    move v9, v8

    move v8, v13

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Landroid/os/Bundle;Ljava/util/List;ZZ)I

    move-result v0

    .line 371
    const/16 v1, 0x11

    if-ne v0, v1, :cond_6

    .line 372
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v15, v0, v14, v14, v1}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Landroid/os/Bundle;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_7

    .line 373
    :cond_6
    if-eqz v0, :cond_8

    .line 374
    const-string v1, "_ev"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 375
    const/16 v1, 0x15

    if-ne v0, v1, :cond_7

    .line 376
    move-object v7, v10

    goto :goto_5

    .line 377
    :cond_7
    move-object v7, v14

    .line 378
    :goto_5
    nop

    .line 379
    invoke-virtual {v11, v14}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 380
    invoke-static {v15, v0, v7, v14, v1}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Landroid/os/Bundle;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 381
    invoke-virtual {v15, v14}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 382
    nop

    .line 355
    :goto_6
    move v8, v9

    move-object/from16 v9, p0

    goto :goto_0

    .line 383
    :cond_8
    :goto_7
    invoke-static {v14}, Lcom/google/android/gms/measurement/internal/zznd;->zzh(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 384
    add-int/lit8 v0, v18, 0x1

    .line 385
    if-le v0, v9, :cond_9

    .line 386
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Event can\'t contain more than "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " params"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 387
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v2

    .line 388
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzh()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v2

    .line 389
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzi()Lcom/google/android/gms/measurement/internal/zzfq;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 390
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzi()Lcom/google/android/gms/measurement/internal/zzfq;

    move-result-object v4

    invoke-virtual {v4, v11}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v4

    .line 391
    invoke-virtual {v2, v1, v3, v4}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 392
    const/4 v1, 0x5

    invoke-static {v15, v1}, Lcom/google/android/gms/measurement/internal/zznd;->zzb(Landroid/os/Bundle;I)Z

    .line 393
    invoke-virtual {v15, v14}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 394
    move/from16 v18, v0

    move v8, v9

    move-object/from16 v9, p0

    goto/16 :goto_0

    .line 385
    :cond_9
    move/from16 v18, v0

    .line 395
    :cond_a
    move v8, v9

    move-object/from16 v9, p0

    goto/16 :goto_0

    .line 355
    :cond_b
    move-object v14, v15

    goto :goto_8

    .line 350
    :cond_c
    const/4 v14, 0x0

    .line 396
    :goto_8
    return-object v14
.end method

.method final zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/measurement/internal/zzbg;
    .locals 6

    .line 404
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p8

    if-eqz p8, :cond_0

    .line 405
    const/4 p1, 0x0

    return-object p1

    .line 406
    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Ljava/lang/String;)I

    move-result p8

    .line 407
    if-nez p8, :cond_3

    .line 413
    new-instance p8, Landroid/os/Bundle;

    if-eqz p3, :cond_1

    invoke-direct {p8, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    invoke-direct {p8}, Landroid/os/Bundle;-><init>()V

    :goto_0
    move-object v3, p8

    .line 414
    const-string p3, "_o"

    invoke-virtual {v3, p3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    invoke-static {p3}, Lcom/google/android/gms/common/util/CollectionUtils;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 416
    const/4 v5, 0x1

    .line 417
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)Landroid/os/Bundle;

    move-result-object p1

    .line 418
    if-eqz p7, :cond_2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zznd;->zzb(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 419
    :cond_2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    new-instance p3, Lcom/google/android/gms/measurement/internal/zzbg;

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzbb;

    invoke-direct {v2, p1}, Lcom/google/android/gms/measurement/internal/zzbb;-><init>(Landroid/os/Bundle;)V

    move-object v0, p3

    move-object v1, p2

    move-object v3, p4

    move-wide v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzbg;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzbb;Ljava/lang/String;J)V

    return-object p3

    .line 408
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p1

    .line 409
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p1

    .line 410
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzi()Lcom/google/android/gms/measurement/internal/zzfq;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/measurement/internal/zzfq;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 411
    const-string p3, "Invalid conditional property event name"

    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 412
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final zza(JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/net/URL;
    .locals 6

    .line 476
    :try_start_0
    invoke-static {p4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 477
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 478
    const-string v0, "https://www.googleadservices.com/pagead/conversion/app/deeplink?id_type=adid&sdk_version=%s&rdid=%s&bundleid=%s&retry=%s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "v%s.%s"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    .line 479
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v4, p2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznd;->zzg()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, p2

    aput-object p4, v1, v5

    aput-object p3, v1, v3

    .line 480
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p4, 0x3

    aput-object p1, v1, p4

    .line 481
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 482
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/zzaf;->zzo()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 483
    const-string p3, "&ddl_test=1"

    invoke-virtual {p1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 484
    :cond_0
    invoke-virtual {p7}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_2

    .line 485
    invoke-virtual {p7, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 p3, 0x26

    if-eq p2, p3, :cond_1

    .line 486
    const-string p2, "&"

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 487
    :cond_1
    invoke-virtual {p1, p7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 488
    :cond_2
    new-instance p2, Ljava/net/URL;

    invoke-direct {p2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    .line 489
    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 490
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p2

    .line 491
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p2

    .line 492
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p3, "Failed to create BOW URL for Deferred Deep Link. exception"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 493
    const/4 p1, 0x0

    return-object p1
.end method

.method final zza(Landroid/os/Bundle;J)V
    .locals 6

    .line 554
    const-string v0, "_et"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 555
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    .line 556
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfr;->zzu()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v3

    const-string v4, "Params already contained engagement"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 557
    :cond_0
    add-long/2addr p2, v1

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 558
    return-void
.end method

.method final zza(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 4

    .line 584
    if-nez p2, :cond_0

    .line 585
    return-void

    .line 586
    :cond_0
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 587
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 588
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzq()Lcom/google/android/gms/measurement/internal/zznd;

    move-result-object v2

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, p1, v1, v3}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 589
    goto :goto_0

    .line 590
    :cond_2
    return-void
.end method

.method final zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 655
    if-nez p1, :cond_0

    .line 656
    return-void

    .line 657
    :cond_0
    instance-of v0, p3, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 658
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 659
    return-void

    .line 660
    :cond_1
    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 661
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 662
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    return-void

    .line 664
    :cond_2
    instance-of v0, p3, Ljava/lang/Double;

    if-eqz v0, :cond_3

    .line 665
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 666
    return-void

    .line 667
    :cond_3
    instance-of v0, p3, [Landroid/os/Bundle;

    if-eqz v0, :cond_4

    .line 668
    check-cast p3, [Landroid/os/Bundle;

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 669
    return-void

    .line 670
    :cond_4
    if-eqz p2, :cond_6

    .line 671
    if-eqz p3, :cond_5

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    .line 672
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p3

    .line 673
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzfr;->zzv()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p3

    .line 674
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzi()Lcom/google/android/gms/measurement/internal/zzfq;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/measurement/internal/zzfq;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 675
    const-string v0, "Not putting event parameter. Invalid value type. name, type"

    invoke-virtual {p3, v0, p2, p1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 676
    :cond_6
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzcv;I)V
    .locals 2

    .line 703
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 704
    const-string v1, "r"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 705
    :try_start_0
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/measurement/zzcv;->zza(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 706
    return-void

    .line 707
    :catch_0
    move-exception p1

    .line 708
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zznd;->zzu:Lcom/google/android/gms/measurement/internal/zzhf;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzhf;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzu()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p2

    const-string v0, "Error returning int value to wrapper"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 709
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzcv;J)V
    .locals 2

    .line 710
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 711
    const-string v1, "r"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 712
    :try_start_0
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/measurement/zzcv;->zza(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 713
    return-void

    .line 714
    :catch_0
    move-exception p1

    .line 715
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zznd;->zzu:Lcom/google/android/gms/measurement/internal/zzhf;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzhf;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzu()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p2

    const-string p3, "Error returning long value to wrapper"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 716
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzcv;Landroid/os/Bundle;)V
    .locals 1

    .line 691
    :try_start_0
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/measurement/zzcv;->zza(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 692
    return-void

    .line 693
    :catch_0
    move-exception p1

    .line 694
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zznd;->zzu:Lcom/google/android/gms/measurement/internal/zzhf;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzhf;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzu()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p2

    const-string v0, "Error returning bundle value to wrapper"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 695
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzcv;Ljava/lang/String;)V
    .locals 2

    .line 717
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 718
    const-string v1, "r"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    :try_start_0
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/measurement/zzcv;->zza(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 720
    return-void

    .line 721
    :catch_0
    move-exception p1

    .line 722
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zznd;->zzu:Lcom/google/android/gms/measurement/internal/zzhf;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzhf;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzu()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p2

    const-string v0, "Error returning string value to wrapper"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 723
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzcv;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzcv;",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 684
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 685
    const-string v1, "r"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 686
    :try_start_0
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/measurement/zzcv;->zza(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 687
    return-void

    .line 688
    :catch_0
    move-exception p1

    .line 689
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zznd;->zzu:Lcom/google/android/gms/measurement/internal/zzhf;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzhf;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzu()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p2

    const-string v0, "Error returning bundle list to wrapper"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 690
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzcv;Z)V
    .locals 2

    .line 677
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 678
    const-string v1, "r"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 679
    :try_start_0
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/measurement/zzcv;->zza(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 680
    return-void

    .line 681
    :catch_0
    move-exception p1

    .line 682
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zznd;->zzu:Lcom/google/android/gms/measurement/internal/zzhf;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzhf;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzu()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p2

    const-string v0, "Error returning boolean value to wrapper"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 683
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzcv;[B)V
    .locals 2

    .line 696
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 697
    const-string v1, "r"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 698
    :try_start_0
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/measurement/zzcv;->zza(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 699
    return-void

    .line 700
    :catch_0
    move-exception p1

    .line 701
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zznd;->zzu:Lcom/google/android/gms/measurement/internal/zzhf;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzhf;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzu()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p2

    const-string v0, "Error returning byte array to wrapper"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 702
    return-void
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzfv;I)V
    .locals 8

    .line 620
    nop

    .line 621
    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzfv;->zzb:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 622
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 623
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zznd;->zzh(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 624
    add-int/lit8 v1, v1, 0x1

    .line 625
    if-le v1, p2, :cond_0

    .line 626
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Event can\'t contain more than "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " params"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 627
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v4

    .line 628
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfr;->zzh()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v4

    .line 629
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzi()Lcom/google/android/gms/measurement/internal/zzfq;

    move-result-object v5

    iget-object v6, p1, Lcom/google/android/gms/measurement/internal/zzfv;->zza:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 630
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzi()Lcom/google/android/gms/measurement/internal/zzfq;

    move-result-object v6

    iget-object v7, p1, Lcom/google/android/gms/measurement/internal/zzfv;->zzb:Landroid/os/Bundle;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v6

    .line 631
    invoke-virtual {v4, v3, v5, v6}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 632
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzfv;->zzb:Landroid/os/Bundle;

    const/4 v4, 0x5

    invoke-static {v3, v4}, Lcom/google/android/gms/measurement/internal/zznd;->zzb(Landroid/os/Bundle;I)Z

    .line 633
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzfv;->zzb:Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 634
    :cond_0
    goto :goto_0

    .line 635
    :cond_1
    return-void
.end method

.method final zza([Landroid/os/Parcelable;IZ)V
    .locals 11

    .line 594
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p1, v2

    .line 596
    nop

    .line 597
    check-cast v3, Landroid/os/Bundle;

    .line 598
    new-instance v4, Ljava/util/TreeSet;

    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 599
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v1

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 600
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zznd;->zzh(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzik;->zzd:[Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 601
    add-int/lit8 v5, v5, 0x1

    .line 602
    if-le v5, p2, :cond_1

    .line 603
    if-eqz p3, :cond_0

    .line 604
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v7

    .line 605
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfr;->zzh()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Param can\'t contain more than "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " item-scoped custom parameters"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 606
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzi()Lcom/google/android/gms/measurement/internal/zzfq;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/google/android/gms/measurement/internal/zzfq;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 607
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzi()Lcom/google/android/gms/measurement/internal/zzfq;

    move-result-object v10

    invoke-virtual {v10, v3}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v10

    .line 608
    invoke-virtual {v7, v8, v9, v10}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 609
    const/16 v7, 0x1c

    invoke-static {v3, v7}, Lcom/google/android/gms/measurement/internal/zznd;->zzb(Landroid/os/Bundle;I)Z

    goto :goto_2

    .line 610
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v7

    .line 611
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfr;->zzh()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v7

    .line 612
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzi()Lcom/google/android/gms/measurement/internal/zzfq;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/google/android/gms/measurement/internal/zzfq;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 613
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzi()Lcom/google/android/gms/measurement/internal/zzfq;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v9

    .line 614
    const-string v10, "Param cannot contain item-scoped custom parameters"

    invoke-virtual {v7, v10, v8, v9}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 615
    const/16 v7, 0x17

    invoke-static {v3, v7}, Lcom/google/android/gms/measurement/internal/zznd;->zzb(Landroid/os/Bundle;I)Z

    .line 616
    :goto_2
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 617
    :cond_1
    goto :goto_1

    .line 618
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 619
    :cond_3
    return-void
.end method

.method public final zza(IZ)Z
    .locals 1

    .line 974
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zznd;->zzu:Lcom/google/android/gms/measurement/internal/zzhf;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzhf;->zzr()Lcom/google/android/gms/measurement/internal/zzkp;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzkp;->zzab()Ljava/lang/Boolean;

    move-result-object p2

    .line 975
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznd;->zzg()I

    move-result v0

    div-int/lit16 p1, p1, 0x3e8

    if-ge v0, p1, :cond_1

    if-eqz p2, :cond_0

    .line 976
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    nop

    .line 977
    const/4 p1, 0x0

    return p1

    .line 976
    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method final zza(Ljava/lang/String;D)Z
    .locals 3

    .line 1013
    nop

    .line 1014
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zza()Landroid/content/Context;

    move-result-object v1

    const-string v2, "google.analytics.deferred.deeplink.prefs"

    .line 1015
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1016
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1017
    const-string v2, "deeplink"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1018
    const-string p1, "timestamp"

    .line 1019
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    .line 1020
    invoke-interface {v1, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1021
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 1022
    :catch_0
    move-exception p1

    .line 1023
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p2

    const-string p3, "Failed to persist Deferred Deep Link. exception"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1024
    return v0
.end method

.method final zza(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 3

    .line 824
    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 825
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzh()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p2

    const-string p3, "Name is required and can\'t be null. Type"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 826
    return v0

    .line 827
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->codePointCount(II)I

    move-result v1

    if-le v1, p2, :cond_1

    .line 828
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v1

    .line 829
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzh()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v1

    .line 830
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v2, "Name is too long. Type, maximum supported length, name"

    invoke-virtual {v1, v2, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 831
    return v0

    .line 832
    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method final zza(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 804
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 805
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zznd;->zzn(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 806
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zznd;->zzu:Lcom/google/android/gms/measurement/internal/zzhf;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzhf;->zzae()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 807
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p2

    .line 808
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzh()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p2

    .line 809
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 810
    const-string v0, "Invalid google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI. provided id"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 811
    :cond_0
    return v1

    .line 812
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 813
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zznd;->zzn(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 814
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p1

    .line 815
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzh()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p1

    .line 816
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "Invalid admob_app_id. Analytics disabled."

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 817
    return v1

    .line 823
    :cond_2
    const/4 p1, 0x1

    return p1

    .line 818
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zznd;->zzu:Lcom/google/android/gms/measurement/internal/zzhf;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhf;->zzae()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 819
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p1

    .line 820
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzh()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p1

    .line 821
    const-string p2, "Missing google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    .line 822
    :cond_4
    return v1
.end method

.method final zza(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z
    .locals 3

    .line 854
    const/4 v0, 0x1

    if-nez p4, :cond_0

    .line 855
    return v0

    .line 856
    :cond_0
    instance-of v1, p4, Ljava/lang/Long;

    if-nez v1, :cond_5

    instance-of v1, p4, Ljava/lang/Float;

    if-nez v1, :cond_5

    instance-of v1, p4, Ljava/lang/Integer;

    if-nez v1, :cond_5

    instance-of v1, p4, Ljava/lang/Byte;

    if-nez v1, :cond_5

    instance-of v1, p4, Ljava/lang/Short;

    if-nez v1, :cond_5

    instance-of v1, p4, Ljava/lang/Boolean;

    if-nez v1, :cond_5

    instance-of v1, p4, Ljava/lang/Double;

    if-eqz v1, :cond_1

    goto :goto_1

    .line 858
    :cond_1
    instance-of v1, p4, Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_3

    instance-of v1, p4, Ljava/lang/Character;

    if-nez v1, :cond_3

    instance-of v1, p4, Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    goto :goto_0

    .line 867
    :cond_2
    return v2

    .line 859
    :cond_3
    :goto_0
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    .line 860
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p4, v2, v1}, Ljava/lang/String;->codePointCount(II)I

    move-result v1

    if-le v1, p3, :cond_4

    .line 861
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p3

    .line 862
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzfr;->zzv()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p3

    .line 863
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    .line 864
    const-string v0, "Value is too long; discarded. Value kind, name, value length"

    invoke-virtual {p3, v0, p1, p2, p4}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 865
    return v2

    .line 866
    :cond_4
    return v0

    .line 857
    :cond_5
    :goto_1
    return v0
.end method

.method final zza(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 833
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method final zza(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 834
    const/4 v0, 0x0

    if-nez p4, :cond_0

    .line 835
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzh()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p2

    const-string p3, "Name is required and can\'t be null. Type"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 836
    return v0

    .line 837
    :cond_0
    nop

    .line 838
    invoke-static {p4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 839
    sget-object v1, Lcom/google/android/gms/measurement/internal/zznd;->zza:[Ljava/lang/String;

    array-length v2, v1

    move v3, v0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v2, :cond_2

    aget-object v5, v1, v3

    .line 840
    invoke-virtual {p4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 841
    move v1, v4

    goto :goto_1

    .line 842
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 843
    :cond_2
    move v1, v0

    .line 844
    :goto_1
    if-eqz v1, :cond_3

    .line 845
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p2

    .line 846
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzh()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p2

    .line 847
    const-string p3, "Name starts with reserved prefix. Type, name"

    invoke-virtual {p2, p3, p1, p4}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 848
    return v0

    .line 849
    :cond_3
    if-eqz p2, :cond_5

    invoke-static {p4, p2}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 850
    if-eqz p3, :cond_4

    invoke-static {p4, p3}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 851
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzh()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p2

    const-string p3, "Name is reserved. Type, name"

    invoke-virtual {p2, p3, p1, p4}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 852
    return v0

    .line 853
    :cond_5
    return v4
.end method

.method final zzb(Ljava/lang/String;)I
    .locals 3

    .line 108
    const-string v0, "user property"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zznd;->zzb(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x6

    if-nez v1, :cond_0

    .line 109
    return v2

    .line 110
    :cond_0
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzij;->zza:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 111
    const/16 p1, 0xf

    return p1

    .line 112
    :cond_1
    const/16 v1, 0x18

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 113
    return v2

    .line 114
    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method final zzb(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5

    .line 335
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 336
    if-eqz p1, :cond_1

    .line 337
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 338
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gms/measurement/internal/zznd;->zzb(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 339
    if-nez v3, :cond_0

    .line 340
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v3

    .line 341
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfr;->zzv()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v3

    .line 342
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzi()Lcom/google/android/gms/measurement/internal/zzfq;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/gms/measurement/internal/zzfq;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "Param value can\'t be null"

    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 343
    goto :goto_0

    .line 344
    :cond_0
    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 345
    goto :goto_0

    .line 346
    :cond_1
    return-object v0
.end method

.method public final bridge synthetic zzb()Lcom/google/android/gms/common/util/Clock;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 400
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzic;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    return-object v0
.end method

.method final zzb(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 426
    const-string v0, "_ev"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 427
    nop

    .line 428
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznd;->zzu:Lcom/google/android/gms/measurement/internal/zzhf;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzh()Lcom/google/android/gms/measurement/internal/zzfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzad()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzaf;->zzc(Ljava/lang/String;)I

    move-result p1

    .line 429
    invoke-direct {p0, p1, p2, v1, v1}, Lcom/google/android/gms/measurement/internal/zznd;->zza(ILjava/lang/Object;ZZ)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 430
    :cond_0
    nop

    .line 431
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zznd;->zzg(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 432
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznd;->zzu:Lcom/google/android/gms/measurement/internal/zzhf;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzh()Lcom/google/android/gms/measurement/internal/zzfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzad()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzaf;->zzc(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    .line 433
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznd;->zzu:Lcom/google/android/gms/measurement/internal/zzhf;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzh()Lcom/google/android/gms/measurement/internal/zzfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzad()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzaf;->zzb(Ljava/lang/String;)I

    move-result p1

    :goto_0
    nop

    .line 434
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gms/measurement/internal/zznd;->zza(ILjava/lang/Object;ZZ)Ljava/lang/Object;

    move-result-object p1

    .line 435
    return-object p1
.end method

.method final zzb(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 868
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 869
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzh()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p2

    const-string v1, "Name is required and can\'t be null. Type"

    invoke-virtual {p2, v1, p1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 870
    return v0

    .line 871
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 872
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzh()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p2

    const-string v1, "Name is required and can\'t be empty. Type"

    invoke-virtual {p2, v1, p1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 873
    return v0

    .line 874
    :cond_1
    invoke-virtual {p2, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 875
    invoke-static {v1}, Ljava/lang/Character;->isLetter(I)Z

    move-result v2

    const/16 v3, 0x5f

    if-nez v2, :cond_2

    if-eq v1, v3, :cond_2

    .line 876
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v1

    .line 877
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzh()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v1

    .line 878
    const-string v2, "Name must start with a letter or _ (underscore). Type, name"

    invoke-virtual {v1, v2, p1, p2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 879
    return v0

    .line 880
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 881
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    :goto_0
    if-ge v1, v2, :cond_4

    .line 882
    invoke-virtual {p2, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    .line 883
    if-eq v4, v3, :cond_3

    invoke-static {v4}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 884
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v1

    .line 885
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzh()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v1

    .line 886
    const-string v2, "Name must consist of letters, digits or _ (underscores). Type, name"

    invoke-virtual {v1, v2, p1, p2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 887
    return v0

    .line 888
    :cond_3
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v1, v4

    .line 889
    goto :goto_0

    .line 890
    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method final zzc(Ljava/lang/String;)J
    .locals 3

    .line 134
    nop

    .line 135
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zza()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 136
    const-wide/16 v0, 0x0

    return-wide v0

    .line 137
    :cond_0
    nop

    .line 138
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zza()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 139
    if-eqz v1, :cond_1

    .line 140
    iget p1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, p1

    .line 141
    :cond_1
    goto :goto_0

    .line 142
    :catch_0
    move-exception v1

    .line 143
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzn()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v1

    const-string v2, "PackageManager failed to find running app: app_id"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 144
    :goto_0
    int-to-long v0, v0

    return-wide v0
.end method

.method final zzc(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 436
    const-string v0, "_ldl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 437
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zznd;->zzm(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gms/measurement/internal/zznd;->zza(ILjava/lang/Object;ZZ)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 438
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zznd;->zzm(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1, p2, v1, v1}, Lcom/google/android/gms/measurement/internal/zznd;->zza(ILjava/lang/Object;ZZ)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method final zzc(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 891
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 892
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzh()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p2

    const-string v1, "Name is required and can\'t be null. Type"

    invoke-virtual {p2, v1, p1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 893
    return v0

    .line 894
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 895
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzh()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p2

    const-string v1, "Name is required and can\'t be empty. Type"

    invoke-virtual {p2, v1, p1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 896
    return v0

    .line 897
    :cond_1
    invoke-virtual {p2, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 898
    invoke-static {v1}, Ljava/lang/Character;->isLetter(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 899
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzh()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v1

    const-string v2, "Name must start with a letter. Type, name"

    invoke-virtual {v1, v2, p1, p2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 900
    return v0

    .line 901
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 902
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    :goto_0
    if-ge v1, v2, :cond_4

    .line 903
    invoke-virtual {p2, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    .line 904
    const/16 v4, 0x5f

    if-eq v3, v4, :cond_3

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 905
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v1

    .line 906
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzh()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v1

    .line 907
    const-string v2, "Name must consist of letters, digits or _ (underscores). Type, name"

    invoke-virtual {v1, v2, p1, p2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 908
    return v0

    .line 909
    :cond_3
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 910
    goto :goto_0

    .line 911
    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method public final bridge synthetic zzd()Lcom/google/android/gms/measurement/internal/zzae;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 401
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzic;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zze()Lcom/google/android/gms/measurement/internal/zzaf;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 402
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzic;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    return-object v0
.end method

.method final zze(Ljava/lang/String;)Z
    .locals 2

    .line 938
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 939
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zza()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 940
    if-nez v0, :cond_0

    .line 941
    const/4 p1, 0x1

    return p1

    .line 942
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzc()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    const-string v1, "Permission not granted"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 943
    const/4 p1, 0x0

    return p1
.end method

.method public final bridge synthetic zzf()Lcom/google/android/gms/measurement/internal/zzba;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 403
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzic;->zzf()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v0

    return-object v0
.end method

.method final zzf(Ljava/lang/String;)Z
    .locals 1

    .line 944
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 945
    const/4 p1, 0x0

    return p1

    .line 946
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaf;->zzn()Ljava/lang/String;

    move-result-object v0

    .line 947
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final zzg()I
    .locals 2
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "this.apkVersion"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznd;->zzh:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 120
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zza()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getApkVersion(Landroid/content/Context;)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zznd;->zzh:Ljava/lang/Integer;

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznd;->zzh:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method final zzh()J
    .locals 7

    .line 145
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 146
    nop

    .line 147
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznd;->zzu:Lcom/google/android/gms/measurement/internal/zzhf;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzh()Lcom/google/android/gms/measurement/internal/zzfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzad()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zznd;->zzd(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    .line 148
    return-wide v1

    .line 149
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-ge v0, v3, :cond_1

    .line 150
    const-wide/16 v3, 0x4

    goto :goto_0

    .line 151
    :cond_1
    invoke-static {v3}, Landroid/os/ext/SdkExtensions;->getExtensionVersion(I)I

    move-result v0

    const/4 v3, 0x4

    if-ge v0, v3, :cond_2

    .line 152
    const-wide/16 v3, 0x8

    goto :goto_0

    .line 153
    :cond_2
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zznd;->zzc()I

    move-result v0

    .line 154
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzbi;->zzau:Lcom/google/android/gms/measurement/internal/zzfi;

    .line 155
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzfi;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 156
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 157
    if-ge v0, v3, :cond_3

    .line 158
    const-wide/16 v3, 0x10

    goto :goto_0

    .line 157
    :cond_3
    move-wide v3, v1

    .line 159
    :goto_0
    const-string v0, "android.permission.ACCESS_ADSERVICES_ATTRIBUTION"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/zznd;->zze(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 160
    const-wide/16 v5, 0x2

    or-long/2addr v3, v5

    .line 161
    :cond_4
    cmp-long v0, v3, v1

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zznd;->zzy()Z

    move-result v0

    if-nez v0, :cond_5

    .line 162
    const-wide/16 v5, 0x40

    or-long/2addr v3, v5

    .line 163
    :cond_5
    cmp-long v0, v3, v1

    if-nez v0, :cond_6

    const-wide/16 v0, 0x1

    return-wide v0

    :cond_6
    return-wide v3
.end method

.method public final bridge synthetic zzi()Lcom/google/android/gms/measurement/internal/zzfq;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 421
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzic;->zzi()Lcom/google/android/gms/measurement/internal/zzfq;

    move-result-object v0

    return-object v0
.end method

.method public final zzi(Ljava/lang/String;)Z
    .locals 4

    .line 1005
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1006
    return v1

    .line 1007
    :cond_0
    nop

    .line 1008
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zza()Landroid/content/Context;

    move-result-object v0

    .line 1009
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    .line 1010
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 1011
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final bridge synthetic zzj()Lcom/google/android/gms/measurement/internal/zzfr;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 422
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzic;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzk()Lcom/google/android/gms/measurement/internal/zzgd;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 423
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzic;->zzk()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzl()Lcom/google/android/gms/measurement/internal/zzgy;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 424
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzic;->zzl()Lcom/google/android/gms/measurement/internal/zzgy;

    move-result-object v0

    return-object v0
.end method

.method public final zzm()J
    .locals 6

    .line 207
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznd;->zzd:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 208
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznd;->zzd:Ljava/util/concurrent/atomic/AtomicLong;

    monitor-enter v0

    .line 210
    :try_start_0
    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    xor-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    iget v3, p0, Lcom/google/android/gms/measurement/internal/zznd;->zze:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/android/gms/measurement/internal/zznd;->zze:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    monitor-exit v0

    return-wide v1

    .line 211
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznd;->zzd:Ljava/util/concurrent/atomic/AtomicLong;

    monitor-enter v0

    .line 213
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zznd;->zzd:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, -0x1

    const-wide/16 v4, 0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    .line 214
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zznd;->zzd:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v1

    .line 215
    monitor-exit v0

    return-wide v1

    .line 216
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method final zzn()Landroidx/privacysandbox/ads/adservices/java/measurement/MeasurementManagerFutures;
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznd;->zzf:Landroidx/privacysandbox/ads/adservices/java/measurement/MeasurementManagerFutures;

    if-nez v0, :cond_0

    .line 398
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zza()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/privacysandbox/ads/adservices/java/measurement/MeasurementManagerFutures;->from(Landroid/content/Context;)Landroidx/privacysandbox/ads/adservices/java/measurement/MeasurementManagerFutures;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zznd;->zzf:Landroidx/privacysandbox/ads/adservices/java/measurement/MeasurementManagerFutures;

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznd;->zzf:Landroidx/privacysandbox/ads/adservices/java/measurement/MeasurementManagerFutures;

    return-object v0
.end method

.method protected final zzo()Z
    .locals 1

    .line 1012
    const/4 v0, 0x1

    return v0
.end method

.method final zzp()Ljava/lang/String;
    .locals 4

    .line 466
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 467
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznd;->zzv()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 468
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v2, Ljava/math/BigInteger;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "%032x"

    invoke-static {v1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzq()Lcom/google/android/gms/measurement/internal/zznd;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 425
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzic;->zzq()Lcom/google/android/gms/measurement/internal/zznd;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzr()V
    .locals 0

    .line 591
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzic;->zzr()V

    return-void
.end method

.method public final bridge synthetic zzs()V
    .locals 0

    .line 592
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzic;->zzs()V

    return-void
.end method

.method public final bridge synthetic zzt()V
    .locals 0

    .line 593
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzic;->zzt()V

    return-void
.end method

.method final zzv()Ljava/security/SecureRandom;
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "this.secureRandom"
        }
    .end annotation

    .line 502
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 503
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznd;->zzc:Ljava/security/SecureRandom;

    if-nez v0, :cond_0

    .line 504
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zznd;->zzc:Ljava/security/SecureRandom;

    .line 505
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznd;->zzc:Ljava/security/SecureRandom;

    return-object v0
.end method

.method final zzw()Z
    .locals 4

    .line 966
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 967
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznd;->zzh()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzx()Z
    .locals 2

    .line 968
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zza()Landroid/content/Context;

    move-result-object v0

    .line 969
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "com.google.firebase.remoteconfig.FirebaseRemoteConfig"

    .line 970
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 971
    const/4 v0, 0x1

    return v0

    .line 972
    :catch_0
    move-exception v0

    .line 973
    const/4 v0, 0x0

    return v0
.end method

.method protected final zzz()V
    .locals 6

    .line 646
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 647
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 648
    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v1

    .line 649
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 650
    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v1

    .line 651
    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    .line 652
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzu()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    const-string v3, "Utils falling back to Random for random id"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    .line 653
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznd;->zzd:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 654
    return-void
.end method
