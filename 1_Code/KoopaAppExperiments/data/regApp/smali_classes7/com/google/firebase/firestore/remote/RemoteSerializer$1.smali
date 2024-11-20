.class synthetic Lcom/google/firebase/firestore/remote/RemoteSerializer$1;
.super Ljava/lang/Object;
.source "RemoteSerializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/remote/RemoteSerializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$firebase$firestore$core$CompositeFilter$Operator:[I

.field static final synthetic $SwitchMap$com$google$firebase$firestore$core$FieldFilter$Operator:[I

.field static final synthetic $SwitchMap$com$google$firebase$firestore$local$QueryPurpose:[I

.field static final synthetic $SwitchMap$com$google$firestore$v1$DocumentTransform$FieldTransform$TransformTypeCase:[I

.field static final synthetic $SwitchMap$com$google$firestore$v1$ListenResponse$ResponseTypeCase:[I

.field static final synthetic $SwitchMap$com$google$firestore$v1$Precondition$ConditionTypeCase:[I

.field static final synthetic $SwitchMap$com$google$firestore$v1$StructuredQuery$CompositeFilter$Operator:[I

.field static final synthetic $SwitchMap$com$google$firestore$v1$StructuredQuery$Direction:[I

.field static final synthetic $SwitchMap$com$google$firestore$v1$StructuredQuery$FieldFilter$Operator:[I

.field static final synthetic $SwitchMap$com$google$firestore$v1$StructuredQuery$Filter$FilterTypeCase:[I

.field static final synthetic $SwitchMap$com$google$firestore$v1$StructuredQuery$UnaryFilter$Operator:[I

.field static final synthetic $SwitchMap$com$google$firestore$v1$TargetChange$TargetChangeType:[I

.field static final synthetic $SwitchMap$com$google$firestore$v1$Write$OperationCase:[I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 939
    invoke-static {}, Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;->values()[Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/firebase/firestore/remote/RemoteSerializer$1;->$SwitchMap$com$google$firestore$v1$ListenResponse$ResponseTypeCase:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;->TARGET_CHANGE:Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;

    invoke-virtual {v2}, Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/google/firebase/firestore/remote/RemoteSerializer$1;->$SwitchMap$com$google$firestore$v1$ListenResponse$ResponseTypeCase:[I

    sget-object v3, Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;->DOCUMENT_CHANGE:Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;

    invoke-virtual {v3}, Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    :goto_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/google/firebase/firestore/remote/RemoteSerializer$1;->$SwitchMap$com$google$firestore$v1$ListenResponse$ResponseTypeCase:[I

    sget-object v4, Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;->DOCUMENT_DELETE:Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;

    invoke-virtual {v4}, Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v3

    :goto_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/google/firebase/firestore/remote/RemoteSerializer$1;->$SwitchMap$com$google$firestore$v1$ListenResponse$ResponseTypeCase:[I

    sget-object v5, Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;->DOCUMENT_REMOVE:Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;

    invoke-virtual {v5}, Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v4

    :goto_3
    const/4 v4, 0x5

    :try_start_4
    sget-object v5, Lcom/google/firebase/firestore/remote/RemoteSerializer$1;->$SwitchMap$com$google$firestore$v1$ListenResponse$ResponseTypeCase:[I

    sget-object v6, Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;->FILTER:Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;

    invoke-virtual {v6}, Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v5

    :goto_4
    const/4 v5, 0x6

    :try_start_5
    sget-object v6, Lcom/google/firebase/firestore/remote/RemoteSerializer$1;->$SwitchMap$com$google$firestore$v1$ListenResponse$ResponseTypeCase:[I

    sget-object v7, Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;->RESPONSETYPE_NOT_SET:Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;

    invoke-virtual {v7}, Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v6

    .line 944
    :goto_5
    invoke-static {}, Lcom/google/firestore/v1/TargetChange$TargetChangeType;->values()[Lcom/google/firestore/v1/TargetChange$TargetChangeType;

    move-result-object v6

    array-length v6, v6

    new-array v6, v6, [I

    sput-object v6, Lcom/google/firebase/firestore/remote/RemoteSerializer$1;->$SwitchMap$com$google$firestore$v1$TargetChange$TargetChangeType:[I

    :try_start_6
    sget-object v7, Lcom/google/firestore/v1/TargetChange$TargetChangeType;->NO_CHANGE:Lcom/google/firestore/v1/TargetChange$TargetChangeType;

    invoke-virtual {v7}, Lcom/google/firestore/v1/TargetChange$TargetChangeType;->ordinal()I

    move-result v7

    aput v1, v6, v7
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v6

    :goto_6
    :try_start_7
    sget-object v6, Lcom/google/firebase/firestore/remote/RemoteSerializer$1;->$SwitchMap$com$google$firestore$v1$TargetChange$TargetChangeType:[I

    sget-object v7, Lcom/google/firestore/v1/TargetChange$TargetChangeType;->ADD:Lcom/google/firestore/v1/TargetChange$TargetChangeType;

    invoke-virtual {v7}, Lcom/google/firestore/v1/TargetChange$TargetChangeType;->ordinal()I

    move-result v7

    aput v0, v6, v7
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v6

    :goto_7
    :try_start_8
    sget-object v6, Lcom/google/firebase/firestore/remote/RemoteSerializer$1;->$SwitchMap$com$google$firestore$v1$TargetChange$TargetChangeType:[I

    sget-object v7, Lcom/google/firestore/v1/TargetChange$TargetChangeType;->REMOVE:Lcom/google/firestore/v1/TargetChange$TargetChangeType;

    invoke-virtual {v7}, Lcom/google/firestore/v1/TargetChange$TargetChangeType;->ordinal()I

    move-result v7

    aput v2, v6, v7
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    :catch_8
    move-exception v6

    :goto_8
    :try_start_9
    sget-object v6, Lcom/google/firebase/firestore/remote/RemoteSerializer$1;->$SwitchMap$com$google$firestore$v1$TargetChange$TargetChangeType:[I

    sget-object v7, Lcom/google/firestore/v1/TargetChange$TargetChangeType;->CURRENT:Lcom/google/firestore/v1/TargetChange$TargetChangeType;

    invoke-virtual {v7}, Lcom/google/firestore/v1/TargetChange$TargetChangeType;->ordinal()I

    move-result v7

    aput v3, v6, v7
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_9

    :catch_9
    move-exception v6

    :goto_9
    :try_start_a
    sget-object v6, Lcom/google/firebase/firestore/remote/RemoteSerializer$1;->$SwitchMap$com$google$firestore$v1$TargetChange$TargetChangeType:[I

    sget-object v7, Lcom/google/firestore/v1/TargetChange$TargetChangeType;->RESET:Lcom/google/firestore/v1/TargetChange$TargetChangeType;

    invoke-virtual {v7}, Lcom/google/firestore/v1/TargetChange$TargetChangeType;->ordinal()I

    move-result v7

    aput v4, v6, v7
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_a

    :catch_a
    move-exception v6

    :goto_a
    :try_start_b
    sget-object v6, Lcom/google/firebase/firestore/remote/RemoteSerializer$1;->$SwitchMap$com$google$firestore$v1$TargetChange$TargetChangeType:[I

    sget-object v7, Lcom/google/firestore/v1/TargetChange$TargetChangeType;->UNRECOGNIZED:Lcom/google/firestore/v1/TargetChange$TargetChangeType;

    invoke-virtual {v7}, Lcom/google/firestore/v1/TargetChange$TargetChangeType;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_b

    :catch_b
    move-exception v6

    .line 921
    :goto_b
    invoke-static {}, Lcom/google/firestore/v1/StructuredQuery$Direction;->values()[Lcom/google/firestore/v1/StructuredQuery$Direction;

    move-result-object v6

    array-length v6, v6

    new-array v6, v6, [I

    sput-object v6, Lcom/google/firebase/firestore/remote/RemoteSerializer$1;->$SwitchMap$com$google$firestore$v1$StructuredQuery$Direction:[I

    :try_start_c
    sget-object v7, Lcom/google/firestore/v1/StructuredQuery$Direction;->ASCENDING:Lcom/google/firestore/v1/StructuredQuery$Direction;

    invoke-virtual {v7}, Lcom/google/firestore/v1/StructuredQuery$Direction;->ordinal()I

    move-result v7

    aput v1, v6, v7
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_c

    :catch_c
    move-exception v6

    :goto_c
    :try_start_d
    sget-object v6, Lcom/google/firebase/firestore/remote/RemoteSerializer$1;->$SwitchMap$com$google$firestore$v1$StructuredQuery$Direction:[I

    sget-object v7, Lcom/google/firestore/v1/StructuredQuery$Direction;->DESCENDING:Lcom/google/firestore/v1/StructuredQuery$Direction;

    invoke-virtual {v7}, Lcom/google/firestore/v1/StructuredQuery$Direction;->ordinal()I

    move-result v7

    aput v0, v6, v7
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    goto :goto_d

    :catch_d
    move-exception v6

    .line 879
    :goto_d
    invoke-static {}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;->values()[Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;

    move-result-object v6

    array-length v6, v6

    new-array v6, v6, [I

    sput-object v6, Lcom/google/firebase/firestore/remote/RemoteSerializer$1;->$SwitchMap$com$google$firestore$v1$StructuredQuery$FieldFilter$Operator:[I

    :try_start_e
    sget-object v7, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;->LESS_THAN:Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;

    invoke-virtual {v7}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;->ordinal()I

    move-result v7

    aput v1, v6, v7
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    goto :goto_e

    :catch_e
    move-exception v6

    :goto_e
    :try_start_f
    sget-object v6, Lcom/google/firebase/firestore/remote/RemoteSerializer$1;->$SwitchMap$com$google$firestore$v1$StructuredQuery$FieldFilter$Operator:[I

    sget-object v7, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;->LESS_THAN_OR_EQUAL:Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;

    invoke-virtual {v7}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;->ordinal()I

    move-result v7

    aput v0, v6, v7
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    goto :goto_f

    :catch_f
    move-exception v6

    :goto_f
    :try_start_10
    sget-object v6, Lcom/google/firebase/firestore/remote/RemoteSerializer$1;->$SwitchMap$com$google$firestore$v1$StructuredQuery$FieldFilter$Operator:[I

    sget-object v7, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;->EQUAL:Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;

    invoke-virtual {v7}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;->ordinal()I

    move-result v7

    aput v2, v6, v7
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    goto :goto_10

    :catch_10
    move-exception v6

    :goto_10
    :try_start_11
    sget-object v6, Lcom/google/firebase/firestore/remote/RemoteSerializer$1;->$SwitchMap$com$google$firestore$v1$StructuredQuery$FieldFilter$Operator:[I

    sget-object v7, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;->NOT_EQUAL:Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;

    invoke-virtual {v7}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;->ordinal()I

    move-result v7

    aput v3, v6, v7
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    goto :goto_11

    :catch_11
    move-exception v6

    :goto_11
    :try_start_12
    sget-object v6, Lcom/google/firebase/firestore/remote/RemoteSerializer$1;->$SwitchMap$com$google$firestore$v1$StructuredQuery$FieldFilter$Operator:[I

    sget-object v7, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;->GREATER_THAN_OR_EQUAL:Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;

    invoke-virtual {v7}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;->ordinal()I

    move-result v7

    aput v4, v6, v7
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    goto :goto_12

    :catch_12
    move-exception v6

    :goto_12
    :try_start_13
    sget-object v6, Lcom/google/firebase/firestore/remote/RemoteSerializer$1;->$SwitchMap$com$google$firestore$v1$StructuredQuery$FieldFilter$Operator:[I

    sget-object v7, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;->GREATER_THAN:Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;

    invoke-virtual {v7}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    goto :goto_13

    :catch_13
    move-exception v6

    :goto_13
    const/4 v6, 0x7

    :try_start_14
    sget-object v7, Lcom/google/firebase/firestore/remote/RemoteSerializer$1;->$SwitchMap$com$google$firestore$v1$StructuredQuery$FieldFilter$Operator:[I

    sget-object v8, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;->ARRAY_CONTAINS:Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;

    invoke-virtual {v8}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    goto :goto_14

    :catch_14
    move-exception v7

    :goto_14
    const/16 v7, 0x8

    :try_start_15
    sget-object v8, Lcom/google/firebase/firestore/remote/RemoteSerializer$1;->$SwitchMap$com$google$firestore$v1$StructuredQuery$FieldFilter$Operator:[I

    sget-object v9, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;->IN:Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;

    invoke-virtual {v9}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;->ordinal()I

    move-result v9

    aput v7, v8, v9
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    goto :goto_15

    :catch_15
    move-exception v8

    :goto_15
    const/16 v8, 0x9

    :try_start_16
    sget-object v9, Lcom/google/firebase/firestore/remote/RemoteSerializer$1;->$SwitchMap$com$google$firestore$v1$StructuredQuery$FieldFilter$Operator:[I

    sget-object v10, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;->ARRAY_CONTAINS_ANY:Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;

    invoke-virtual {v10}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;->ordinal()I

    move-result v10

    aput v8, v9, v10
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    goto :goto_16

    :catch_16
    move-exception v9

    :goto_16
    const/16 v9, 0xa

    :try_start_17
    sget-object v10, Lcom/google/firebase/firestore/remote/RemoteSerializer$1;->$SwitchMap$com$google$firestore$v1$StructuredQuery$FieldFilter$Operator:[I

    sget-object v11, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;->NOT_IN:Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;

    invoke-virtual {v11}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;->ordinal()I

    move-result v11

    aput v9, v10, v11
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    goto :goto_17

    :catch_17
    move-exception v10

    .line 851
    :goto_17
    invoke-static {}, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->values()[Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    move-result-object v10

    array-length v10, v10

    new-array v10, v10, [I

    sput-object v10, Lcom/google/firebase/firestore/remote/RemoteSerializer$1;->$SwitchMap$com$google$firebase$firestore$core$FieldFilter$Operator:[I

    :try_start_18
    sget-object v11, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->LESS_THAN:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    invoke-virtual {v11}, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->ordinal()I

    move-result v11

    aput v1, v10, v11
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    goto :goto_18

    :catch_18
    move-exception v10

    :goto_18
    :try_start_19
    sget-object v10, Lcom/google/firebase/firestore/remote/RemoteSerializer$1;->$SwitchMap$com$google$firebase$firestore$core$FieldFilter$Operator:[I

    sget-object v11, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->LESS_THAN_OR_EQUAL:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    invoke-virtual {v11}, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->ordinal()I

    move-result v11

    aput v0, v10, v11
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    goto :goto_19

    :catch_19
    move-exception v10

    :goto_19
    :try_start_1a
    sget-object v10, Lcom/google/firebase/firestore/remote/RemoteSerializer$1;->$SwitchMap$com$google$firebase$firestore$core$FieldFilter$Operator:[I

    sget-object v11, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->EQUAL:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    invoke-virtual {v11}, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->ordinal()I

    move-result v11

    aput v2, v10, v11
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    goto :goto_1a

    :catch_1a
    move-exception v10

    :goto_1a
    :try_start_1b
    sget-object v10, Lcom/google/firebase/firestore/remote/RemoteSerializer$1;->$SwitchMap$com$google$firebase$firestore$core$FieldFilter$Operator:[I

    sget-object v11, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->NOT_EQUAL:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    invoke-virtual {v11}, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->ordinal()I

    move-result v11

    aput v3, v10, v11
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    goto :goto_1b

    :catch_1b
    move-exception v10

    :goto_1b
    :try_start_1c
    sget-object v10, Lcom/google/firebase/firestore/remote/RemoteSerializer$1;->$SwitchMap$com$google$firebase$firestore$core$FieldFilter$Operator:[I

    sget-object v11, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->GREATER_THAN:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    invoke-virtual {v11}, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->ordinal()I

    move-result v11

    aput v4, v10, v11
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    goto :goto_1c

    :catch_1c
    move-exception v4

    :goto_1c
    :try_start_1d
    sget-object v4, Lcom/google/firebase/firestore/remote/RemoteSerializer$1;->$SwitchMap$com$google$firebase$firestore$core$FieldFilter$Operator:[I

    sget-object v10, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->GREATER_THAN_OR_EQUAL:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    invoke-virtual {v10}, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->ordinal()I

    move-result v10

    aput v5, v4, v10
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    goto :goto_1d

    :catch_1d
    move-exception v4

    :goto_1d
    :try_start_1e
    sget-object v4, Lcom/google/firebase/firestore/remote/RemoteSerializer$1;->$SwitchMap$com$google$firebase$firestore$core$FieldFilter$Operator:[I

    sget-object v5, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->ARRAY_CONTAINS:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    invoke-virtual {v5}, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->ordinal()I

    move-result v5

    aput v6, v4, v5
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    goto :goto_1e

    :catch_1e
    move-exception v4

    :goto_1e
    :try_start_1f
    sget-object v4, Lcom/google/firebase/firestore/remote/RemoteSerializer$1;->$SwitchMap$com$google$firebase$firestore$core$FieldFilter$Operator:[I

    sget-object v5, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->IN:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    invoke-virtual {v5}, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->ordinal()I

    move-result v5

    aput v7, v4, v5
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    goto :goto_1f

    :catch_1f
    move-exception v4

    :goto_1f
    :try_start_20
    sget-object v4, Lcom/google/firebase/firestore/remote/RemoteSerializer$1;->$SwitchMap$com$google$firebase$firestore$core$FieldFilter$Operator:[I

    sget-object v5, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->ARRAY_CONTAINS_ANY:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    invoke-virtual {v5}, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->ordinal()I

    move-result v5

    aput v8, v4, v5
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_20

    goto :goto_20

    :catch_20
    move-exception v4

    :goto_20
    :try_start_21
    sget-object v4, Lcom/google/firebase/firestore/remote/RemoteSerializer$1;->$SwitchMap$com$google$firebase$firestore$core$FieldFilter$Operator:[I

    sget-object v5, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->NOT_IN:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    invoke-virtual {v5}, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->ordinal()I

    move-result v5

    aput v9, v4, v5
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_21

    goto :goto_21

    :catch_21
    move-exception v4

    .line 820
    :goto_21
    invoke-static {}, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;->values()[Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/google/firebase/firestore/remote/RemoteSerializer$1;->$SwitchMap$com$google$firestore$v1$StructuredQuery$UnaryFilter$Operator:[I

    :try_start_22
    sget-object v5, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;->IS_NAN:Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;

    invoke-virtual {v5}, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_22

    goto :goto_22

    :catch_22
    move-exception v4

    :goto_22
    :try_start_23
    sget-object v4, Lcom/google/firebase/firestore/remote/RemoteSerializer$1;->$SwitchMap$com$google$firestore$v1$StructuredQuery$UnaryFilter$Operator:[I

    sget-object v5, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;->IS_NULL:Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;

    invoke-virtual {v5}, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_23

    goto :goto_23

    :catch_23
    move-exception v4

    :goto_23
    :try_start_24
    sget-object v4, Lcom/google/firebase/firestore/remote/RemoteSerializer$1;->$SwitchMap$com$google$firestore$v1$StructuredQuery$UnaryFilter$Operator:[I

    sget-object v5, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;->IS_NOT_NAN:Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;

    invoke-virtual {v5}, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_24

    goto :goto_24

    :catch_24
    move-exception v4

    :goto_24
    :try_start_25
    sget-object v4, Lcom/google/firebase/firestore/remote/RemoteSerializer$1;->$SwitchMap$com$google$firestore$v1$StructuredQuery$UnaryFilter$Operator:[I

    sget-object v5, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;->IS_NOT_NULL:Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;

    invoke-virtual {v5}, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_25

    goto :goto_25

    :catch_25
    move-exception v4

    .line 799
    :goto_25
    invoke-static {}, Lcom/google/firestore/v1/StructuredQuery$Filter$FilterTypeCase;->values()[Lcom/google/firestore/v1/StructuredQuery$Filter$FilterTypeCase;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/google/firebase/firestore/remote/RemoteSerializer$1;->$SwitchMap$com$google$firestore$v1$StructuredQuery$Filter$FilterTypeCase:[I

    :try_start_26
    sget-object v5, Lcom/google/firestore/v1/StructuredQuery$Filter$FilterTypeCase;->COMPOSITE_FILTER:Lcom/google/firestore/v1/StructuredQuery$Filter$FilterTypeCase;

    invoke-virtual {v5}, Lcom/google/firestore/v1/StructuredQuery$Filter$FilterTypeCase;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_26

    goto :goto_26

    :catch_26
    move-exception v4

    :goto_26
    :try_start_27
    sget-object v4, Lcom/google/firebase/firestore/remote/RemoteSerializer$1;->$SwitchMap$com$google$firestore$v1$StructuredQuery$Filter$FilterTypeCase:[I

    sget-object v5, Lcom/google/firestore/v1/StructuredQuery$Filter$FilterTypeCase;->FIELD_FILTER:Lcom/google/firestore/v1/StructuredQuery$Filter$FilterTypeCase;

    invoke-virtual {v5}, Lcom/google/firestore/v1/StructuredQuery$Filter$FilterTypeCase;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_27

    goto :goto_27

    :catch_27
    move-exception v4

    :goto_27
    :try_start_28
    sget-object v4, Lcom/google/firebase/firestore/remote/RemoteSerializer$1;->$SwitchMap$com$google$firestore$v1$StructuredQuery$Filter$FilterTypeCase:[I

    sget-object v5, Lcom/google/firestore/v1/StructuredQuery$Filter$FilterTypeCase;->UNARY_FILTER:Lcom/google/firestore/v1/StructuredQuery$Filter$FilterTypeCase;

    invoke-virtual {v5}, Lcom/google/firestore/v1/StructuredQuery$Filter$FilterTypeCase;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_28

    goto :goto_28

    :catch_28
    move-exception v4

    .line 768
    :goto_28
    invoke-static {}, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Operator;->values()[Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Operator;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/google/firebase/firestore/remote/RemoteSerializer$1;->$SwitchMap$com$google$firestore$v1$StructuredQuery$CompositeFilter$Operator:[I

    :try_start_29
    sget-object v5, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Operator;->AND:Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Operator;

    invoke-virtual {v5}, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Operator;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_29

    goto :goto_29

    :catch_29
    move-exception v4

    :goto_29
    :try_start_2a
    sget-object v4, Lcom/google/firebase/firestore/remote/RemoteSerializer$1;->$SwitchMap$com$google$firestore$v1$StructuredQuery$CompositeFilter$Operator:[I

    sget-object v5, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Operator;->OR:Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Operator;

    invoke-virtual {v5}, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Operator;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_2a

    goto :goto_2a

    :catch_2a
    move-exception v4

    .line 756
    :goto_2a
    invoke-static {}, Lcom/google/firebase/firestore/core/CompositeFilter$Operator;->values()[Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/google/firebase/firestore/remote/RemoteSerializer$1;->$SwitchMap$com$google$firebase$firestore$core$CompositeFilter$Operator:[I

    :try_start_2b
    sget-object v5, Lcom/google/firebase/firestore/core/CompositeFilter$Operator;->AND:Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

    invoke-virtual {v5}, Lcom/google/firebase/firestore/core/CompositeFilter$Operator;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2b} :catch_2b

    goto :goto_2b

    :catch_2b
    move-exception v4

    :goto_2b
    :try_start_2c
    sget-object v4, Lcom/google/firebase/firestore/remote/RemoteSerializer$1;->$SwitchMap$com$google$firebase$firestore$core$CompositeFilter$Operator:[I

    sget-object v5, Lcom/google/firebase/firestore/core/CompositeFilter$Operator;->OR:Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

    invoke-virtual {v5}, Lcom/google/firebase/firestore/core/CompositeFilter$Operator;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_2c} :catch_2c

    goto :goto_2c

    :catch_2c
    move-exception v4

    .line 471
    :goto_2c
    invoke-static {}, Lcom/google/firebase/firestore/local/QueryPurpose;->values()[Lcom/google/firebase/firestore/local/QueryPurpose;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/google/firebase/firestore/remote/RemoteSerializer$1;->$SwitchMap$com$google$firebase$firestore$local$QueryPurpose:[I

    :try_start_2d
    sget-object v5, Lcom/google/firebase/firestore/local/QueryPurpose;->LISTEN:Lcom/google/firebase/firestore/local/QueryPurpose;

    invoke-virtual {v5}, Lcom/google/firebase/firestore/local/QueryPurpose;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_2d} :catch_2d

    goto :goto_2d

    :catch_2d
    move-exception v4

    :goto_2d
    :try_start_2e
    sget-object v4, Lcom/google/firebase/firestore/remote/RemoteSerializer$1;->$SwitchMap$com$google$firebase$firestore$local$QueryPurpose:[I

    sget-object v5, Lcom/google/firebase/firestore/local/QueryPurpose;->EXISTENCE_FILTER_MISMATCH:Lcom/google/firebase/firestore/local/QueryPurpose;

    invoke-virtual {v5}, Lcom/google/firebase/firestore/local/QueryPurpose;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_2e} :catch_2e

    goto :goto_2e

    :catch_2e
    move-exception v4

    :goto_2e
    :try_start_2f
    sget-object v4, Lcom/google/firebase/firestore/remote/RemoteSerializer$1;->$SwitchMap$com$google$firebase$firestore$local$QueryPurpose:[I

    sget-object v5, Lcom/google/firebase/firestore/local/QueryPurpose;->EXISTENCE_FILTER_MISMATCH_BLOOM:Lcom/google/firebase/firestore/local/QueryPurpose;

    invoke-virtual {v5}, Lcom/google/firebase/firestore/local/QueryPurpose;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_2f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_2f} :catch_2f

    goto :goto_2f

    :catch_2f
    move-exception v4

    :goto_2f
    :try_start_30
    sget-object v4, Lcom/google/firebase/firestore/remote/RemoteSerializer$1;->$SwitchMap$com$google$firebase$firestore$local$QueryPurpose:[I

    sget-object v5, Lcom/google/firebase/firestore/local/QueryPurpose;->LIMBO_RESOLUTION:Lcom/google/firebase/firestore/local/QueryPurpose;

    invoke-virtual {v5}, Lcom/google/firebase/firestore/local/QueryPurpose;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_30} :catch_30

    goto :goto_30

    :catch_30
    move-exception v4

    .line 407
    :goto_30
    invoke-static {}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;->values()[Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/google/firebase/firestore/remote/RemoteSerializer$1;->$SwitchMap$com$google$firestore$v1$DocumentTransform$FieldTransform$TransformTypeCase:[I

    :try_start_31
    sget-object v5, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;->SET_TO_SERVER_VALUE:Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;

    invoke-virtual {v5}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_31} :catch_31

    goto :goto_31

    :catch_31
    move-exception v4

    :goto_31
    :try_start_32
    sget-object v4, Lcom/google/firebase/firestore/remote/RemoteSerializer$1;->$SwitchMap$com$google$firestore$v1$DocumentTransform$FieldTransform$TransformTypeCase:[I

    sget-object v5, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;->APPEND_MISSING_ELEMENTS:Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;

    invoke-virtual {v5}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_32} :catch_32

    goto :goto_32

    :catch_32
    move-exception v4

    :goto_32
    :try_start_33
    sget-object v4, Lcom/google/firebase/firestore/remote/RemoteSerializer$1;->$SwitchMap$com$google$firestore$v1$DocumentTransform$FieldTransform$TransformTypeCase:[I

    sget-object v5, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;->REMOVE_ALL_FROM_ARRAY:Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;

    invoke-virtual {v5}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_33} :catch_33

    goto :goto_33

    :catch_33
    move-exception v4

    :goto_33
    :try_start_34
    sget-object v4, Lcom/google/firebase/firestore/remote/RemoteSerializer$1;->$SwitchMap$com$google$firestore$v1$DocumentTransform$FieldTransform$TransformTypeCase:[I

    sget-object v5, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;->INCREMENT:Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;

    invoke-virtual {v5}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_34} :catch_34

    goto :goto_34

    :catch_34
    move-exception v3

    .line 346
    :goto_34
    invoke-static {}, Lcom/google/firestore/v1/Precondition$ConditionTypeCase;->values()[Lcom/google/firestore/v1/Precondition$ConditionTypeCase;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/google/firebase/firestore/remote/RemoteSerializer$1;->$SwitchMap$com$google$firestore$v1$Precondition$ConditionTypeCase:[I

    :try_start_35
    sget-object v4, Lcom/google/firestore/v1/Precondition$ConditionTypeCase;->UPDATE_TIME:Lcom/google/firestore/v1/Precondition$ConditionTypeCase;

    invoke-virtual {v4}, Lcom/google/firestore/v1/Precondition$ConditionTypeCase;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_35} :catch_35

    goto :goto_35

    :catch_35
    move-exception v3

    :goto_35
    :try_start_36
    sget-object v3, Lcom/google/firebase/firestore/remote/RemoteSerializer$1;->$SwitchMap$com$google$firestore$v1$Precondition$ConditionTypeCase:[I

    sget-object v4, Lcom/google/firestore/v1/Precondition$ConditionTypeCase;->EXISTS:Lcom/google/firestore/v1/Precondition$ConditionTypeCase;

    invoke-virtual {v4}, Lcom/google/firestore/v1/Precondition$ConditionTypeCase;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36 .. :try_end_36} :catch_36

    goto :goto_36

    :catch_36
    move-exception v3

    :goto_36
    :try_start_37
    sget-object v3, Lcom/google/firebase/firestore/remote/RemoteSerializer$1;->$SwitchMap$com$google$firestore$v1$Precondition$ConditionTypeCase:[I

    sget-object v4, Lcom/google/firestore/v1/Precondition$ConditionTypeCase;->CONDITIONTYPE_NOT_SET:Lcom/google/firestore/v1/Precondition$ConditionTypeCase;

    invoke-virtual {v4}, Lcom/google/firestore/v1/Precondition$ConditionTypeCase;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_37
    .catch Ljava/lang/NoSuchFieldError; {:try_start_37 .. :try_end_37} :catch_37

    goto :goto_37

    :catch_37
    move-exception v3

    .line 304
    :goto_37
    invoke-static {}, Lcom/google/firestore/v1/Write$OperationCase;->values()[Lcom/google/firestore/v1/Write$OperationCase;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/google/firebase/firestore/remote/RemoteSerializer$1;->$SwitchMap$com$google$firestore$v1$Write$OperationCase:[I

    :try_start_38
    sget-object v4, Lcom/google/firestore/v1/Write$OperationCase;->UPDATE:Lcom/google/firestore/v1/Write$OperationCase;

    invoke-virtual {v4}, Lcom/google/firestore/v1/Write$OperationCase;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38 .. :try_end_38} :catch_38

    goto :goto_38

    :catch_38
    move-exception v1

    :goto_38
    :try_start_39
    sget-object v1, Lcom/google/firebase/firestore/remote/RemoteSerializer$1;->$SwitchMap$com$google$firestore$v1$Write$OperationCase:[I

    sget-object v3, Lcom/google/firestore/v1/Write$OperationCase;->DELETE:Lcom/google/firestore/v1/Write$OperationCase;

    invoke-virtual {v3}, Lcom/google/firestore/v1/Write$OperationCase;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_39} :catch_39

    goto :goto_39

    :catch_39
    move-exception v0

    :goto_39
    :try_start_3a
    sget-object v0, Lcom/google/firebase/firestore/remote/RemoteSerializer$1;->$SwitchMap$com$google$firestore$v1$Write$OperationCase:[I

    sget-object v1, Lcom/google/firestore/v1/Write$OperationCase;->VERIFY:Lcom/google/firestore/v1/Write$OperationCase;

    invoke-virtual {v1}, Lcom/google/firestore/v1/Write$OperationCase;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_3a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3a .. :try_end_3a} :catch_3a

    goto :goto_3a

    :catch_3a
    move-exception v0

    :goto_3a
    return-void
.end method
