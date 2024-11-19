.class public final Lcom/google/android/gms/internal/measurement/zzas;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzaq;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/measurement/zzaq;",
        "Ljava/lang/Iterable<",
        "Lcom/google/android/gms/internal/measurement/zzaq;",
        ">;"
    }
.end annotation


# instance fields
.field private final zza:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    if-eqz p1, :cond_0

    .line 255
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzas;->zza:Ljava/lang/String;

    .line 256
    return-void

    .line 254
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "StringValue cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/measurement/zzas;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzas;->zza:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 257
    if-ne p0, p1, :cond_0

    .line 258
    const/4 p1, 0x1

    return p1

    .line 259
    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzas;

    if-nez v0, :cond_1

    .line 260
    const/4 p1, 0x0

    return p1

    .line 261
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzas;

    .line 262
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzas;->zza:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzas;->zza:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzas;->zza:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/android/gms/internal/measurement/zzaq;",
            ">;"
        }
    .end annotation

    .line 251
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzau;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzau;-><init>(Lcom/google/android/gms/internal/measurement/zzas;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 249
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzas;->zza:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzh;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/zzaq;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/measurement/zzh;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzaq;",
            ">;)",
            "Lcom/google/android/gms/internal/measurement/zzaq;"
        }
    .end annotation

    .line 2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 3
    const-string v4, "charAt"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "trim"

    const-string v7, "concat"

    const-string v8, "replace"

    const-string v9, "substring"

    const-string v10, "split"

    const-string v11, "slice"

    const-string v12, "match"

    const-string v13, "lastIndexOf"

    const-string v14, "toLocaleUpperCase"

    const-string v15, "search"

    const-string v2, "toLowerCase"

    const-string v0, "toLocaleLowerCase"

    const-string v3, "toString"

    move-object/from16 v16, v4

    const-string v4, "indexOf"

    move-object/from16 v17, v6

    const-string v6, "hasOwnProperty"

    move-object/from16 v18, v14

    const-string v14, "toUpperCase"

    move-object/from16 v19, v14

    if-nez v5, :cond_10

    .line 4
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    .line 5
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 6
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 7
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 8
    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 9
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 10
    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 11
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 12
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 13
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 14
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 16
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 17
    move-object/from16 v5, v19

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_2

    .line 18
    move-object/from16 v14, v18

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 19
    move-object/from16 v18, v6

    move-object/from16 v6, v17

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 18
    :cond_1
    move-object/from16 v18, v6

    move-object/from16 v6, v17

    goto/16 :goto_0

    .line 17
    :cond_2
    move-object/from16 v14, v18

    move-object/from16 v18, v6

    move-object/from16 v6, v17

    goto/16 :goto_0

    .line 16
    :cond_3
    move-object/from16 v14, v18

    move-object/from16 v5, v19

    move-object/from16 v18, v6

    move-object/from16 v6, v17

    goto/16 :goto_0

    .line 15
    :cond_4
    move-object/from16 v14, v18

    move-object/from16 v5, v19

    move-object/from16 v18, v6

    move-object/from16 v6, v17

    goto/16 :goto_0

    .line 14
    :cond_5
    move-object/from16 v14, v18

    move-object/from16 v5, v19

    move-object/from16 v18, v6

    move-object/from16 v6, v17

    goto/16 :goto_0

    .line 13
    :cond_6
    move-object/from16 v14, v18

    move-object/from16 v5, v19

    move-object/from16 v18, v6

    move-object/from16 v6, v17

    goto/16 :goto_0

    .line 12
    :cond_7
    move-object/from16 v14, v18

    move-object/from16 v5, v19

    move-object/from16 v18, v6

    move-object/from16 v6, v17

    goto/16 :goto_0

    .line 11
    :cond_8
    move-object/from16 v14, v18

    move-object/from16 v5, v19

    move-object/from16 v18, v6

    move-object/from16 v6, v17

    goto :goto_0

    .line 10
    :cond_9
    move-object/from16 v14, v18

    move-object/from16 v5, v19

    move-object/from16 v18, v6

    move-object/from16 v6, v17

    goto :goto_0

    .line 9
    :cond_a
    move-object/from16 v14, v18

    move-object/from16 v5, v19

    move-object/from16 v18, v6

    move-object/from16 v6, v17

    goto :goto_0

    .line 8
    :cond_b
    move-object/from16 v14, v18

    move-object/from16 v5, v19

    move-object/from16 v18, v6

    move-object/from16 v6, v17

    goto :goto_0

    .line 7
    :cond_c
    move-object/from16 v14, v18

    move-object/from16 v5, v19

    move-object/from16 v18, v6

    move-object/from16 v6, v17

    goto :goto_0

    .line 6
    :cond_d
    move-object/from16 v14, v18

    move-object/from16 v5, v19

    move-object/from16 v18, v6

    move-object/from16 v6, v17

    goto :goto_0

    .line 5
    :cond_e
    move-object/from16 v14, v18

    move-object/from16 v5, v19

    move-object/from16 v18, v6

    move-object/from16 v6, v17

    goto :goto_0

    .line 4
    :cond_f
    move-object/from16 v14, v18

    move-object/from16 v5, v19

    move-object/from16 v18, v6

    move-object/from16 v6, v17

    goto :goto_0

    .line 3
    :cond_10
    move-object/from16 v14, v18

    move-object/from16 v5, v19

    move-object/from16 v18, v6

    move-object/from16 v6, v17

    .line 19
    :goto_0
    const/16 v17, 0x1

    .line 20
    :goto_1
    if-eqz v17, :cond_37

    .line 21
    nop

    .line 22
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v17

    move-object/from16 v20, v3

    sparse-switch v17, :sswitch_data_0

    move-object/from16 v6, v16

    move-object/from16 v3, v18

    move-object/from16 v7, v20

    goto/16 :goto_5

    :sswitch_0
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v1, 0x3

    goto/16 :goto_2

    :sswitch_1
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v1, 0x6

    goto :goto_2

    :sswitch_2
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/16 v1, 0xa

    goto :goto_2

    :sswitch_3
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/16 v1, 0x9

    goto :goto_2

    :sswitch_4
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/16 v1, 0x8

    goto :goto_2

    :sswitch_5
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v1, 0x5

    goto :goto_2

    :sswitch_6
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/16 v1, 0x10

    goto :goto_2

    :sswitch_7
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/16 v1, 0xf

    goto :goto_2

    :sswitch_8
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v1, 0x4

    goto :goto_2

    :sswitch_9
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/16 v1, 0xb

    goto :goto_2

    :sswitch_a
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v1, 0x7

    goto :goto_2

    :sswitch_b
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/16 v1, 0xd

    :goto_2
    move-object/from16 v6, v16

    goto :goto_3

    :sswitch_c
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    move-object/from16 v6, v16

    move-object/from16 v3, v18

    move-object/from16 v7, v20

    const/4 v1, 0x1

    goto :goto_6

    :cond_11
    move-object/from16 v6, v16

    goto :goto_4

    :sswitch_d
    move-object/from16 v6, v16

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    move-object/from16 v3, v18

    move-object/from16 v7, v20

    const/4 v1, 0x0

    goto :goto_6

    :sswitch_e
    move-object/from16 v6, v16

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/16 v1, 0xc

    :goto_3
    move-object/from16 v3, v18

    move-object/from16 v7, v20

    goto :goto_6

    :cond_12
    :goto_4
    move-object/from16 v3, v18

    move-object/from16 v7, v20

    goto :goto_5

    :sswitch_f
    move-object/from16 v6, v16

    move-object/from16 v7, v20

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/16 v1, 0xe

    move-object/from16 v3, v18

    goto :goto_6

    :cond_13
    move-object/from16 v3, v18

    goto :goto_5

    :sswitch_10
    move-object/from16 v6, v16

    move-object/from16 v7, v20

    move-object/from16 v3, v18

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, 0x2

    goto :goto_6

    :cond_14
    :goto_5
    const/4 v1, -0x1

    :goto_6
    move-object/from16 v17, v6

    move-object/from16 v20, v7

    const-wide/16 v6, 0x0

    packed-switch v1, :pswitch_data_0

    .line 239
    move-object/from16 v1, p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Command not supported"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :pswitch_0
    nop

    .line 233
    move-object/from16 v0, p3

    const/4 v1, 0x0

    invoke-static {v5, v1, v0}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Ljava/lang/String;ILjava/util/List;)V

    .line 234
    nop

    .line 235
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/google/android/gms/internal/measurement/zzas;->zza:Ljava/lang/String;

    .line 236
    nop

    .line 237
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzas;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/measurement/zzas;-><init>(Ljava/lang/String;)V

    .line 238
    return-object v2

    .line 225
    :pswitch_1
    move-object/from16 v1, p0

    move-object/from16 v0, p3

    .line 226
    const/4 v2, 0x0

    invoke-static {v5, v2, v0}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Ljava/lang/String;ILjava/util/List;)V

    .line 227
    nop

    .line 228
    iget-object v0, v1, Lcom/google/android/gms/internal/measurement/zzas;->zza:Ljava/lang/String;

    .line 229
    nop

    .line 230
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzas;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/measurement/zzas;-><init>(Ljava/lang/String;)V

    .line 231
    return-object v2

    .line 221
    :pswitch_2
    move-object/from16 v1, p0

    move-object/from16 v0, p3

    move-object/from16 v2, v20

    .line 222
    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Ljava/lang/String;ILjava/util/List;)V

    .line 223
    nop

    .line 224
    return-object v1

    .line 214
    :pswitch_3
    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    .line 215
    invoke-static {v2, v3, v0}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Ljava/lang/String;ILjava/util/List;)V

    .line 216
    nop

    .line 217
    iget-object v0, v1, Lcom/google/android/gms/internal/measurement/zzas;->zza:Ljava/lang/String;

    .line 218
    nop

    .line 219
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzas;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/measurement/zzas;-><init>(Ljava/lang/String;)V

    .line 220
    return-object v2

    .line 207
    :pswitch_4
    move-object/from16 v1, p0

    move-object v2, v0

    move-object/from16 v0, p3

    .line 208
    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Ljava/lang/String;ILjava/util/List;)V

    .line 209
    nop

    .line 210
    iget-object v0, v1, Lcom/google/android/gms/internal/measurement/zzas;->zza:Ljava/lang/String;

    .line 211
    nop

    .line 212
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzas;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/measurement/zzas;-><init>(Ljava/lang/String;)V

    .line 213
    return-object v2

    .line 200
    :pswitch_5
    move-object/from16 v1, p0

    move-object/from16 v0, p3

    .line 201
    const/4 v2, 0x0

    invoke-static {v14, v2, v0}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Ljava/lang/String;ILjava/util/List;)V

    .line 202
    nop

    .line 203
    iget-object v0, v1, Lcom/google/android/gms/internal/measurement/zzas;->zza:Ljava/lang/String;

    .line 204
    nop

    .line 205
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzas;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/measurement/zzas;-><init>(Ljava/lang/String;)V

    .line 206
    return-object v2

    .line 185
    :pswitch_6
    move-object/from16 v1, p0

    move-object/from16 v0, p3

    .line 186
    const/4 v2, 0x2

    invoke-static {v9, v2, v0}, Lcom/google/android/gms/internal/measurement/zzg;->zzc(Ljava/lang/String;ILjava/util/List;)V

    .line 187
    nop

    .line 188
    iget-object v2, v1, Lcom/google/android/gms/internal/measurement/zzas;->zza:Ljava/lang/String;

    .line 189
    nop

    .line 190
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_15

    .line 191
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzaq;

    move-object/from16 v5, p2

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Lcom/google/android/gms/internal/measurement/zzaq;)Lcom/google/android/gms/internal/measurement/zzaq;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/internal/measurement/zzaq;->zze()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzg;->zza(D)D

    move-result-wide v3

    double-to-int v3, v3

    goto :goto_7

    .line 192
    :cond_15
    move-object/from16 v5, p2

    const/4 v3, 0x0

    .line 193
    :goto_7
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x1

    if-le v4, v6, :cond_16

    .line 194
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzaq;

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Lcom/google/android/gms/internal/measurement/zzaq;)Lcom/google/android/gms/internal/measurement/zzaq;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzaq;->zze()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/zzg;->zza(D)D

    move-result-wide v4

    double-to-int v0, v4

    goto :goto_8

    .line 195
    :cond_16
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 196
    :goto_8
    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 197
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 198
    new-instance v4, Lcom/google/android/gms/internal/measurement/zzas;

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v2, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/google/android/gms/internal/measurement/zzas;-><init>(Ljava/lang/String;)V

    .line 199
    return-object v4

    .line 155
    :pswitch_7
    move-object/from16 v1, p0

    move-object/from16 v5, p2

    move-object/from16 v0, p3

    .line 156
    const/4 v2, 0x2

    invoke-static {v10, v2, v0}, Lcom/google/android/gms/internal/measurement/zzg;->zzc(Ljava/lang/String;ILjava/util/List;)V

    .line 157
    nop

    .line 158
    iget-object v2, v1, Lcom/google/android/gms/internal/measurement/zzas;->zza:Ljava/lang/String;

    .line 159
    nop

    .line 160
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_17

    .line 161
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzaf;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/android/gms/internal/measurement/zzaq;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/zzaf;-><init>([Lcom/google/android/gms/internal/measurement/zzaq;)V

    return-object v0

    .line 162
    :cond_17
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 163
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 164
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 165
    :cond_18
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzaq;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Lcom/google/android/gms/internal/measurement/zzaq;)Lcom/google/android/gms/internal/measurement/zzaq;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/internal/measurement/zzaq;->zzf()Ljava/lang/String;

    move-result-object v4

    .line 166
    nop

    .line 167
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_19

    .line 168
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzaq;

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Lcom/google/android/gms/internal/measurement/zzaq;)Lcom/google/android/gms/internal/measurement/zzaq;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzaq;->zze()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/measurement/zzg;->zzc(D)J

    move-result-wide v5

    goto :goto_9

    .line 167
    :cond_19
    const-wide/32 v5, 0x7fffffff

    .line 169
    :goto_9
    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-nez v0, :cond_1a

    .line 170
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzaf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzaf;-><init>()V

    return-object v0

    .line 171
    :cond_1a
    invoke-static {v4}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    long-to-int v7, v5

    const/4 v8, 0x1

    add-int/2addr v7, v8

    invoke-virtual {v2, v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 172
    array-length v2, v0

    .line 173
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1d

    array-length v4, v0

    if-lez v4, :cond_1d

    .line 174
    const/4 v4, 0x0

    aget-object v7, v0, v4

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 175
    const/16 v19, 0x1

    goto :goto_a

    .line 174
    :cond_1b
    const/16 v19, 0x0

    .line 176
    :goto_a
    array-length v4, v0

    const/4 v7, 0x1

    sub-int/2addr v4, v7

    aget-object v4, v0, v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 177
    array-length v2, v0

    sub-int/2addr v2, v7

    move/from16 v14, v19

    goto :goto_b

    .line 176
    :cond_1c
    move/from16 v14, v19

    goto :goto_b

    .line 178
    :cond_1d
    const/4 v14, 0x0

    :goto_b
    array-length v4, v0

    int-to-long v7, v4

    cmp-long v4, v7, v5

    if-lez v4, :cond_1e

    .line 179
    add-int/lit8 v2, v2, -0x1

    .line 180
    :cond_1e
    nop

    :goto_c
    if-ge v14, v2, :cond_1f

    .line 181
    new-instance v4, Lcom/google/android/gms/internal/measurement/zzas;

    aget-object v5, v0, v14

    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/measurement/zzas;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    add-int/lit8 v14, v14, 0x1

    goto :goto_c

    .line 183
    :cond_1f
    :goto_d
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzaf;

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/measurement/zzaf;-><init>(Ljava/util/List;)V

    .line 184
    return-object v0

    .line 137
    :pswitch_8
    move-object/from16 v1, p0

    move-object/from16 v5, p2

    move-object/from16 v0, p3

    .line 138
    const/4 v2, 0x2

    invoke-static {v11, v2, v0}, Lcom/google/android/gms/internal/measurement/zzg;->zzc(Ljava/lang/String;ILjava/util/List;)V

    .line 139
    nop

    .line 140
    iget-object v2, v1, Lcom/google/android/gms/internal/measurement/zzas;->zza:Ljava/lang/String;

    .line 141
    nop

    .line 142
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_20

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzaq;

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Lcom/google/android/gms/internal/measurement/zzaq;)Lcom/google/android/gms/internal/measurement/zzaq;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/internal/measurement/zzaq;->zze()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    goto :goto_e

    :cond_20
    move-wide v3, v6

    .line 143
    :goto_e
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzg;->zza(D)D

    move-result-wide v3

    .line 144
    cmpg-double v8, v3, v6

    if-gez v8, :cond_21

    .line 145
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    int-to-double v8, v8

    add-double/2addr v8, v3

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    goto :goto_f

    .line 146
    :cond_21
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    int-to-double v8, v8

    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    :goto_f
    double-to-int v3, v3

    .line 147
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v8, 0x1

    if-le v4, v8, :cond_22

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzaq;

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Lcom/google/android/gms/internal/measurement/zzaq;)Lcom/google/android/gms/internal/measurement/zzaq;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzaq;->zze()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    goto :goto_10

    :cond_22
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    int-to-double v4, v0

    .line 148
    :goto_10
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/zzg;->zza(D)D

    move-result-wide v4

    .line 149
    cmpg-double v0, v4, v6

    if-gez v0, :cond_23

    .line 150
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    int-to-double v8, v0

    add-double/2addr v8, v4

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    goto :goto_11

    .line 151
    :cond_23
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    int-to-double v6, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    :goto_11
    double-to-int v0, v4

    .line 152
    sub-int/2addr v0, v3

    const/4 v4, 0x0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v3

    .line 153
    new-instance v4, Lcom/google/android/gms/internal/measurement/zzas;

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/google/android/gms/internal/measurement/zzas;-><init>(Ljava/lang/String;)V

    .line 154
    return-object v4

    .line 123
    :pswitch_9
    move-object/from16 v1, p0

    move-object/from16 v5, p2

    move-object/from16 v0, p3

    .line 124
    const/4 v2, 0x1

    invoke-static {v15, v2, v0}, Lcom/google/android/gms/internal/measurement/zzg;->zzc(Ljava/lang/String;ILjava/util/List;)V

    .line 125
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_24

    .line 126
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzaq;

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Lcom/google/android/gms/internal/measurement/zzaq;)Lcom/google/android/gms/internal/measurement/zzaq;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzaq;->zzf()Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    .line 127
    :cond_24
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzaq;->zzc:Lcom/google/android/gms/internal/measurement/zzaq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzaq;->zzf()Ljava/lang/String;

    move-result-object v0

    .line 128
    :goto_12
    nop

    .line 129
    iget-object v2, v1, Lcom/google/android/gms/internal/measurement/zzas;->zza:Ljava/lang/String;

    .line 130
    nop

    .line 131
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 132
    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 134
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzai;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    int-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/measurement/zzai;-><init>(Ljava/lang/Double;)V

    return-object v2

    .line 135
    :cond_25
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzai;

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/zzai;-><init>(Ljava/lang/Double;)V

    .line 136
    return-object v0

    .line 99
    :pswitch_a
    move-object/from16 v1, p0

    move-object/from16 v5, p2

    move-object/from16 v0, p3

    .line 100
    const/4 v2, 0x2

    invoke-static {v8, v2, v0}, Lcom/google/android/gms/internal/measurement/zzg;->zzc(Ljava/lang/String;ILjava/util/List;)V

    .line 101
    sget-object v2, Lcom/google/android/gms/internal/measurement/zzaq;->zzc:Lcom/google/android/gms/internal/measurement/zzaq;

    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/zzaq;->zzf()Ljava/lang/String;

    move-result-object v2

    .line 102
    sget-object v3, Lcom/google/android/gms/internal/measurement/zzaq;->zzc:Lcom/google/android/gms/internal/measurement/zzaq;

    .line 103
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_26

    .line 104
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzaq;

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Lcom/google/android/gms/internal/measurement/zzaq;)Lcom/google/android/gms/internal/measurement/zzaq;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/zzaq;->zzf()Ljava/lang/String;

    move-result-object v2

    .line 105
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x1

    if-le v4, v6, :cond_26

    .line 106
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzaq;

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Lcom/google/android/gms/internal/measurement/zzaq;)Lcom/google/android/gms/internal/measurement/zzaq;

    move-result-object v3

    .line 107
    :cond_26
    nop

    .line 108
    iget-object v0, v1, Lcom/google/android/gms/internal/measurement/zzas;->zza:Ljava/lang/String;

    .line 109
    nop

    .line 110
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 111
    if-gez v4, :cond_27

    .line 112
    return-object v1

    .line 113
    :cond_27
    instance-of v6, v3, Lcom/google/android/gms/internal/measurement/zzal;

    if-eqz v6, :cond_28

    .line 114
    check-cast v3, Lcom/google/android/gms/internal/measurement/zzal;

    const/4 v6, 0x3

    new-array v6, v6, [Lcom/google/android/gms/internal/measurement/zzaq;

    new-instance v7, Lcom/google/android/gms/internal/measurement/zzas;

    invoke-direct {v7, v2}, Lcom/google/android/gms/internal/measurement/zzas;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    aput-object v7, v6, v8

    new-instance v7, Lcom/google/android/gms/internal/measurement/zzai;

    int-to-double v8, v4

    .line 115
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/android/gms/internal/measurement/zzai;-><init>(Ljava/lang/Double;)V

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const/4 v7, 0x2

    aput-object v1, v6, v7

    .line 116
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 117
    invoke-virtual {v3, v5, v6}, Lcom/google/android/gms/internal/measurement/zzal;->zza(Lcom/google/android/gms/internal/measurement/zzh;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/zzaq;

    move-result-object v3

    .line 118
    :cond_28
    new-instance v5, Lcom/google/android/gms/internal/measurement/zzas;

    .line 119
    const/4 v6, 0x0

    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 120
    invoke-interface {v3}, Lcom/google/android/gms/internal/measurement/zzaq;->zzf()Ljava/lang/String;

    move-result-object v3

    .line 121
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v4, v2

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/google/android/gms/internal/measurement/zzas;-><init>(Ljava/lang/String;)V

    .line 122
    return-object v5

    .line 87
    :pswitch_b
    move-object/from16 v1, p0

    move-object/from16 v5, p2

    move-object/from16 v0, p3

    .line 88
    const/4 v2, 0x1

    invoke-static {v12, v2, v0}, Lcom/google/android/gms/internal/measurement/zzg;->zzc(Ljava/lang/String;ILjava/util/List;)V

    .line 89
    nop

    .line 90
    iget-object v2, v1, Lcom/google/android/gms/internal/measurement/zzas;->zza:Ljava/lang/String;

    .line 91
    nop

    .line 92
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_29

    const-string v0, ""

    goto :goto_13

    :cond_29
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzaq;

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Lcom/google/android/gms/internal/measurement/zzaq;)Lcom/google/android/gms/internal/measurement/zzaq;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzaq;->zzf()Ljava/lang/String;

    move-result-object v0

    .line 93
    :goto_13
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 94
    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 96
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzaf;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/google/android/gms/internal/measurement/zzaq;

    new-instance v4, Lcom/google/android/gms/internal/measurement/zzas;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/google/android/gms/internal/measurement/zzas;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    aput-object v4, v3, v0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/measurement/zzaf;-><init>([Lcom/google/android/gms/internal/measurement/zzaq;)V

    return-object v2

    .line 97
    :cond_2a
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzaq;->zzd:Lcom/google/android/gms/internal/measurement/zzaq;

    .line 98
    return-object v0

    .line 73
    :pswitch_c
    move-object/from16 v1, p0

    move-object/from16 v5, p2

    move-object/from16 v0, p3

    .line 74
    const/4 v2, 0x2

    invoke-static {v13, v2, v0}, Lcom/google/android/gms/internal/measurement/zzg;->zzc(Ljava/lang/String;ILjava/util/List;)V

    .line 75
    nop

    .line 76
    iget-object v2, v1, Lcom/google/android/gms/internal/measurement/zzas;->zza:Ljava/lang/String;

    .line 77
    nop

    .line 78
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_2b

    .line 79
    sget-object v3, Lcom/google/android/gms/internal/measurement/zzaq;->zzc:Lcom/google/android/gms/internal/measurement/zzaq;

    invoke-interface {v3}, Lcom/google/android/gms/internal/measurement/zzaq;->zzf()Ljava/lang/String;

    move-result-object v3

    goto :goto_14

    .line 80
    :cond_2b
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzaq;

    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Lcom/google/android/gms/internal/measurement/zzaq;)Lcom/google/android/gms/internal/measurement/zzaq;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/internal/measurement/zzaq;->zzf()Ljava/lang/String;

    move-result-object v3

    .line 81
    :goto_14
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x2

    if-ge v4, v6, :cond_2c

    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    goto :goto_15

    :cond_2c
    const/4 v4, 0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzaq;

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Lcom/google/android/gms/internal/measurement/zzaq;)Lcom/google/android/gms/internal/measurement/zzaq;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzaq;->zze()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 82
    :goto_15
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 83
    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_16

    .line 84
    :cond_2d
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/zzg;->zza(D)D

    move-result-wide v4

    .line 85
    :goto_16
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzai;

    double-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/zzai;-><init>(Ljava/lang/Double;)V

    .line 86
    return-object v0

    .line 61
    :pswitch_d
    move-object/from16 v1, p0

    move-object/from16 v5, p2

    move-object/from16 v0, p3

    .line 62
    const/4 v2, 0x2

    invoke-static {v4, v2, v0}, Lcom/google/android/gms/internal/measurement/zzg;->zzc(Ljava/lang/String;ILjava/util/List;)V

    .line 63
    nop

    .line 64
    iget-object v2, v1, Lcom/google/android/gms/internal/measurement/zzas;->zza:Ljava/lang/String;

    .line 65
    nop

    .line 66
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_2e

    .line 67
    sget-object v3, Lcom/google/android/gms/internal/measurement/zzaq;->zzc:Lcom/google/android/gms/internal/measurement/zzaq;

    invoke-interface {v3}, Lcom/google/android/gms/internal/measurement/zzaq;->zzf()Ljava/lang/String;

    move-result-object v3

    goto :goto_17

    .line 68
    :cond_2e
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzaq;

    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Lcom/google/android/gms/internal/measurement/zzaq;)Lcom/google/android/gms/internal/measurement/zzaq;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/internal/measurement/zzaq;->zzf()Ljava/lang/String;

    move-result-object v3

    .line 69
    :goto_17
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v8, 0x2

    if-ge v4, v8, :cond_2f

    goto :goto_18

    :cond_2f
    const/4 v4, 0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzaq;

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Lcom/google/android/gms/internal/measurement/zzaq;)Lcom/google/android/gms/internal/measurement/zzaq;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzaq;->zze()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 70
    :goto_18
    invoke-static {v6, v7}, Lcom/google/android/gms/internal/measurement/zzg;->zza(D)D

    move-result-wide v4

    .line 71
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzai;

    double-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/zzai;-><init>(Ljava/lang/Double;)V

    .line 72
    return-object v0

    .line 46
    :pswitch_e
    move-object/from16 v1, p0

    move-object/from16 v5, p2

    move-object/from16 v0, p3

    .line 47
    const/4 v2, 0x1

    invoke-static {v3, v2, v0}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Ljava/lang/String;ILjava/util/List;)V

    .line 48
    nop

    .line 49
    iget-object v2, v1, Lcom/google/android/gms/internal/measurement/zzas;->zza:Ljava/lang/String;

    .line 50
    nop

    .line 51
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzaq;

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Lcom/google/android/gms/internal/measurement/zzaq;)Lcom/google/android/gms/internal/measurement/zzaq;

    move-result-object v0

    .line 52
    const-string v3, "length"

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzaq;->zzf()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 53
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzag;->zzh:Lcom/google/android/gms/internal/measurement/zzaq;

    return-object v0

    .line 54
    :cond_30
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzaq;->zze()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 55
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    cmpl-double v0, v3, v5

    if-nez v0, :cond_31

    .line 56
    double-to-int v0, v3

    .line 57
    if-ltz v0, :cond_31

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_31

    .line 58
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzag;->zzh:Lcom/google/android/gms/internal/measurement/zzaq;

    return-object v0

    .line 59
    :cond_31
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzag;->zzi:Lcom/google/android/gms/internal/measurement/zzaq;

    .line 60
    return-object v0

    .line 35
    :pswitch_f
    move-object/from16 v1, p0

    move-object/from16 v5, p2

    move-object/from16 v0, p3

    .line 36
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 37
    return-object v1

    .line 38
    :cond_32
    new-instance v2, Ljava/lang/StringBuilder;

    .line 39
    iget-object v3, v1, Lcom/google/android/gms/internal/measurement/zzas;->zza:Ljava/lang/String;

    .line 40
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    const/4 v14, 0x0

    :goto_19
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v14, v3, :cond_33

    .line 42
    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzaq;

    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Lcom/google/android/gms/internal/measurement/zzaq;)Lcom/google/android/gms/internal/measurement/zzaq;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/internal/measurement/zzaq;->zzf()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    add-int/lit8 v14, v14, 0x1

    goto :goto_19

    .line 44
    :cond_33
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzas;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/zzas;-><init>(Ljava/lang/String;)V

    .line 45
    return-object v0

    .line 23
    :pswitch_10
    move-object/from16 v1, p0

    move-object/from16 v5, p2

    move-object/from16 v0, p3

    .line 24
    move-object/from16 v3, v17

    const/4 v2, 0x1

    invoke-static {v3, v2, v0}, Lcom/google/android/gms/internal/measurement/zzg;->zzc(Ljava/lang/String;ILjava/util/List;)V

    .line 25
    nop

    .line 26
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_34

    .line 27
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzaq;

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Lcom/google/android/gms/internal/measurement/zzaq;)Lcom/google/android/gms/internal/measurement/zzaq;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzaq;->zze()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/zzg;->zza(D)D

    move-result-wide v2

    double-to-int v14, v2

    goto :goto_1a

    .line 26
    :cond_34
    const/4 v2, 0x0

    move v14, v2

    .line 28
    :goto_1a
    nop

    .line 29
    iget-object v0, v1, Lcom/google/android/gms/internal/measurement/zzas;->zza:Ljava/lang/String;

    .line 30
    nop

    .line 31
    if-ltz v14, :cond_36

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v14, v2, :cond_35

    goto :goto_1b

    .line 33
    :cond_35
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzas;

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/measurement/zzas;-><init>(Ljava/lang/String;)V

    .line 34
    return-object v2

    .line 32
    :cond_36
    :goto_1b
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzaq;->zzj:Lcom/google/android/gms/internal/measurement/zzaq;

    return-object v0

    .line 240
    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "%s is not a String function"

    filled-new-array/range {p1 .. p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6aaca37f -> :sswitch_10
        -0x69e9ad94 -> :sswitch_f
        -0x57513364 -> :sswitch_e
        -0x5128e1d7 -> :sswitch_d
        -0x50c088ec -> :sswitch_c
        -0x43ce226a -> :sswitch_b
        -0x36059a58 -> :sswitch_a
        -0x2b53be43 -> :sswitch_9
        -0x1bdda92d -> :sswitch_8
        -0x17d0ad49 -> :sswitch_7
        0x367422 -> :sswitch_6
        0x62dd9c5 -> :sswitch_5
        0x6873d92 -> :sswitch_4
        0x6891b1a -> :sswitch_3
        0x1f9f6e51 -> :sswitch_2
        0x413cb2b4 -> :sswitch_1
        0x73d44649 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method public final zzc()Lcom/google/android/gms/internal/measurement/zzaq;
    .locals 2

    .line 241
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzas;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzas;->zza:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzas;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final zzd()Ljava/lang/Boolean;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzas;->zza:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final zze()Ljava/lang/Double;
    .locals 2

    .line 243
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzas;->zza:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 245
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzas;->zza:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 246
    :catch_0
    move-exception v0

    .line 247
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public final zzf()Ljava/lang/String;
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzas;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public final zzh()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/android/gms/internal/measurement/zzaq;",
            ">;"
        }
    .end annotation

    .line 250
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzav;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzav;-><init>(Lcom/google/android/gms/internal/measurement/zzas;)V

    return-object v0
.end method
