.class public final Lcom/google/android/gms/measurement/internal/zzq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@21.5.0"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/gms/measurement/internal/zzo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 50

    .line 1
    move-object/from16 v0, p1

    .line 2
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v1

    .line 3
    nop

    .line 4
    nop

    .line 5
    nop

    .line 6
    nop

    .line 7
    nop

    .line 8
    nop

    .line 9
    nop

    .line 10
    nop

    .line 11
    nop

    .line 12
    nop

    .line 13
    nop

    .line 14
    nop

    .line 15
    nop

    .line 16
    nop

    .line 17
    nop

    .line 18
    nop

    .line 19
    nop

    .line 20
    nop

    .line 21
    nop

    .line 22
    nop

    .line 23
    nop

    .line 24
    nop

    .line 25
    nop

    .line 26
    nop

    .line 27
    nop

    .line 28
    nop

    .line 29
    nop

    .line 30
    nop

    .line 31
    nop

    .line 32
    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-wide/32 v7, -0x80000000

    const-string v9, ""

    const/16 v10, 0x64

    move-object v12, v2

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v20, v15

    move-object/from16 v25, v20

    move-object/from16 v33, v25

    move-object/from16 v34, v33

    move-object/from16 v37, v34

    move-object/from16 v38, v37

    move-object/from16 v41, v38

    move-wide/from16 v16, v3

    move-wide/from16 v18, v16

    move-wide/from16 v26, v18

    move-wide/from16 v28, v26

    move-wide/from16 v35, v28

    move-wide/from16 v43, v35

    move-wide/from16 v48, v43

    move/from16 v21, v5

    move/from16 v31, v21

    move/from16 v22, v6

    move/from16 v30, v22

    move/from16 v32, v30

    move/from16 v42, v32

    move/from16 v47, v42

    move-wide/from16 v23, v7

    move-object/from16 v39, v9

    move-object/from16 v40, v39

    move-object/from16 v46, v40

    move/from16 v45, v10

    .line 33
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v1, :cond_0

    .line 34
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    move-result v2

    .line 35
    invoke-static {v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->getFieldId(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 126
    :pswitch_0
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    .line 127
    goto :goto_0

    .line 123
    :pswitch_1
    nop

    .line 124
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readLong(Landroid/os/Parcel;I)J

    move-result-wide v48

    .line 125
    goto :goto_0

    .line 120
    :pswitch_2
    nop

    .line 121
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v47

    .line 122
    goto :goto_0

    .line 117
    :pswitch_3
    nop

    .line 118
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v46

    .line 119
    goto :goto_0

    .line 114
    :pswitch_4
    nop

    .line 115
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v45

    .line 116
    goto :goto_0

    .line 111
    :pswitch_5
    nop

    .line 112
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readLong(Landroid/os/Parcel;I)J

    move-result-wide v43

    .line 113
    goto :goto_0

    .line 108
    :pswitch_6
    nop

    .line 109
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readBoolean(Landroid/os/Parcel;I)Z

    move-result v42

    .line 110
    goto :goto_0

    .line 105
    :pswitch_7
    nop

    .line 106
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v41

    .line 107
    goto :goto_0

    .line 102
    :pswitch_8
    nop

    .line 103
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v40

    .line 104
    goto :goto_0

    .line 99
    :pswitch_9
    nop

    .line 100
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v39

    .line 101
    goto :goto_0

    .line 96
    :pswitch_a
    nop

    .line 97
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v38

    .line 98
    goto :goto_0

    .line 93
    :pswitch_b
    nop

    .line 94
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createStringList(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    move-result-object v37

    .line 95
    goto :goto_0

    .line 90
    :pswitch_c
    nop

    .line 91
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readLong(Landroid/os/Parcel;I)J

    move-result-wide v35

    .line 92
    goto :goto_0

    .line 87
    :pswitch_d
    nop

    .line 88
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readBooleanObject(Landroid/os/Parcel;I)Ljava/lang/Boolean;

    move-result-object v34

    .line 89
    goto :goto_0

    .line 84
    :pswitch_e
    nop

    .line 85
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v33

    .line 86
    goto :goto_0

    .line 81
    :pswitch_f
    nop

    .line 82
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readBoolean(Landroid/os/Parcel;I)Z

    move-result v32

    .line 83
    goto :goto_0

    .line 78
    :pswitch_10
    nop

    .line 79
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readBoolean(Landroid/os/Parcel;I)Z

    move-result v31

    .line 80
    goto :goto_0

    .line 75
    :pswitch_11
    nop

    .line 76
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v30

    .line 77
    goto :goto_0

    .line 72
    :pswitch_12
    nop

    .line 73
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readLong(Landroid/os/Parcel;I)J

    move-result-wide v28

    .line 74
    goto/16 :goto_0

    .line 69
    :pswitch_13
    nop

    .line 70
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readLong(Landroid/os/Parcel;I)J

    move-result-wide v26

    .line 71
    goto/16 :goto_0

    .line 66
    :pswitch_14
    nop

    .line 67
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v25

    .line 68
    goto/16 :goto_0

    .line 63
    :pswitch_15
    nop

    .line 64
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readLong(Landroid/os/Parcel;I)J

    move-result-wide v23

    .line 65
    goto/16 :goto_0

    .line 60
    :pswitch_16
    nop

    .line 61
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readBoolean(Landroid/os/Parcel;I)Z

    move-result v22

    .line 62
    goto/16 :goto_0

    .line 57
    :pswitch_17
    nop

    .line 58
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readBoolean(Landroid/os/Parcel;I)Z

    move-result v21

    .line 59
    goto/16 :goto_0

    .line 54
    :pswitch_18
    nop

    .line 55
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v20

    .line 56
    goto/16 :goto_0

    .line 51
    :pswitch_19
    nop

    .line 52
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readLong(Landroid/os/Parcel;I)J

    move-result-wide v18

    .line 53
    goto/16 :goto_0

    .line 48
    :pswitch_1a
    nop

    .line 49
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readLong(Landroid/os/Parcel;I)J

    move-result-wide v16

    .line 50
    goto/16 :goto_0

    .line 45
    :pswitch_1b
    nop

    .line 46
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v15

    .line 47
    goto/16 :goto_0

    .line 42
    :pswitch_1c
    nop

    .line 43
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v14

    .line 44
    goto/16 :goto_0

    .line 39
    :pswitch_1d
    nop

    .line 40
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v13

    .line 41
    goto/16 :goto_0

    .line 36
    :pswitch_1e
    nop

    .line 37
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v12

    .line 38
    goto/16 :goto_0

    .line 128
    :cond_0
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    .line 129
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzo;

    move-object v11, v0

    invoke-direct/range {v11 .. v49}, Lcom/google/android/gms/measurement/internal/zzo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;ZZJLjava/lang/String;JJIZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJILjava/lang/String;IJ)V

    .line 130
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_0
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
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 133
    nop

    .line 134
    new-array p1, p1, [Lcom/google/android/gms/measurement/internal/zzo;

    .line 135
    return-object p1
.end method
