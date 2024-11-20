.class public final enum Lorg/checkerframework/framework/qual/TypeUseLocation;
.super Ljava/lang/Enum;
.source "TypeUseLocation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/framework/qual/TypeUseLocation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/checkerframework/framework/qual/TypeUseLocation;

.field public static final enum ALL:Lorg/checkerframework/framework/qual/TypeUseLocation;

.field public static final enum CONSTRUCTOR_RESULT:Lorg/checkerframework/framework/qual/TypeUseLocation;

.field public static final enum EXCEPTION_PARAMETER:Lorg/checkerframework/framework/qual/TypeUseLocation;

.field public static final enum EXPLICIT_LOWER_BOUND:Lorg/checkerframework/framework/qual/TypeUseLocation;

.field public static final enum EXPLICIT_UPPER_BOUND:Lorg/checkerframework/framework/qual/TypeUseLocation;

.field public static final enum FIELD:Lorg/checkerframework/framework/qual/TypeUseLocation;

.field public static final enum IMPLICIT_LOWER_BOUND:Lorg/checkerframework/framework/qual/TypeUseLocation;

.field public static final enum IMPLICIT_UPPER_BOUND:Lorg/checkerframework/framework/qual/TypeUseLocation;

.field public static final enum LOCAL_VARIABLE:Lorg/checkerframework/framework/qual/TypeUseLocation;

.field public static final enum LOWER_BOUND:Lorg/checkerframework/framework/qual/TypeUseLocation;

.field public static final enum OTHERWISE:Lorg/checkerframework/framework/qual/TypeUseLocation;

.field public static final enum PARAMETER:Lorg/checkerframework/framework/qual/TypeUseLocation;

.field public static final enum RECEIVER:Lorg/checkerframework/framework/qual/TypeUseLocation;

.field public static final enum RESOURCE_VARIABLE:Lorg/checkerframework/framework/qual/TypeUseLocation;

.field public static final enum RETURN:Lorg/checkerframework/framework/qual/TypeUseLocation;

.field public static final enum UPPER_BOUND:Lorg/checkerframework/framework/qual/TypeUseLocation;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 15
    new-instance v0, Lorg/checkerframework/framework/qual/TypeUseLocation;

    const-string v1, "FIELD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/framework/qual/TypeUseLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/framework/qual/TypeUseLocation;->FIELD:Lorg/checkerframework/framework/qual/TypeUseLocation;

    .line 23
    new-instance v1, Lorg/checkerframework/framework/qual/TypeUseLocation;

    const-string v2, "LOCAL_VARIABLE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/framework/qual/TypeUseLocation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/checkerframework/framework/qual/TypeUseLocation;->LOCAL_VARIABLE:Lorg/checkerframework/framework/qual/TypeUseLocation;

    .line 26
    new-instance v2, Lorg/checkerframework/framework/qual/TypeUseLocation;

    const-string v3, "RESOURCE_VARIABLE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/checkerframework/framework/qual/TypeUseLocation;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/checkerframework/framework/qual/TypeUseLocation;->RESOURCE_VARIABLE:Lorg/checkerframework/framework/qual/TypeUseLocation;

    .line 29
    new-instance v3, Lorg/checkerframework/framework/qual/TypeUseLocation;

    const-string v4, "EXCEPTION_PARAMETER"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/checkerframework/framework/qual/TypeUseLocation;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/checkerframework/framework/qual/TypeUseLocation;->EXCEPTION_PARAMETER:Lorg/checkerframework/framework/qual/TypeUseLocation;

    .line 32
    new-instance v4, Lorg/checkerframework/framework/qual/TypeUseLocation;

    const-string v5, "RECEIVER"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lorg/checkerframework/framework/qual/TypeUseLocation;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/checkerframework/framework/qual/TypeUseLocation;->RECEIVER:Lorg/checkerframework/framework/qual/TypeUseLocation;

    .line 38
    new-instance v5, Lorg/checkerframework/framework/qual/TypeUseLocation;

    const-string v6, "PARAMETER"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lorg/checkerframework/framework/qual/TypeUseLocation;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/checkerframework/framework/qual/TypeUseLocation;->PARAMETER:Lorg/checkerframework/framework/qual/TypeUseLocation;

    .line 41
    new-instance v6, Lorg/checkerframework/framework/qual/TypeUseLocation;

    const-string v7, "RETURN"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lorg/checkerframework/framework/qual/TypeUseLocation;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/checkerframework/framework/qual/TypeUseLocation;->RETURN:Lorg/checkerframework/framework/qual/TypeUseLocation;

    .line 44
    new-instance v7, Lorg/checkerframework/framework/qual/TypeUseLocation;

    const-string v8, "CONSTRUCTOR_RESULT"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lorg/checkerframework/framework/qual/TypeUseLocation;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/checkerframework/framework/qual/TypeUseLocation;->CONSTRUCTOR_RESULT:Lorg/checkerframework/framework/qual/TypeUseLocation;

    .line 51
    new-instance v8, Lorg/checkerframework/framework/qual/TypeUseLocation;

    const-string v9, "LOWER_BOUND"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lorg/checkerframework/framework/qual/TypeUseLocation;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lorg/checkerframework/framework/qual/TypeUseLocation;->LOWER_BOUND:Lorg/checkerframework/framework/qual/TypeUseLocation;

    .line 56
    new-instance v9, Lorg/checkerframework/framework/qual/TypeUseLocation;

    const-string v10, "EXPLICIT_LOWER_BOUND"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lorg/checkerframework/framework/qual/TypeUseLocation;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/checkerframework/framework/qual/TypeUseLocation;->EXPLICIT_LOWER_BOUND:Lorg/checkerframework/framework/qual/TypeUseLocation;

    .line 61
    new-instance v10, Lorg/checkerframework/framework/qual/TypeUseLocation;

    const-string v11, "IMPLICIT_LOWER_BOUND"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Lorg/checkerframework/framework/qual/TypeUseLocation;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lorg/checkerframework/framework/qual/TypeUseLocation;->IMPLICIT_LOWER_BOUND:Lorg/checkerframework/framework/qual/TypeUseLocation;

    .line 71
    new-instance v11, Lorg/checkerframework/framework/qual/TypeUseLocation;

    const-string v12, "UPPER_BOUND"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Lorg/checkerframework/framework/qual/TypeUseLocation;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lorg/checkerframework/framework/qual/TypeUseLocation;->UPPER_BOUND:Lorg/checkerframework/framework/qual/TypeUseLocation;

    .line 77
    new-instance v12, Lorg/checkerframework/framework/qual/TypeUseLocation;

    const-string v13, "EXPLICIT_UPPER_BOUND"

    const/16 v14, 0xc

    invoke-direct {v12, v13, v14}, Lorg/checkerframework/framework/qual/TypeUseLocation;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lorg/checkerframework/framework/qual/TypeUseLocation;->EXPLICIT_UPPER_BOUND:Lorg/checkerframework/framework/qual/TypeUseLocation;

    .line 80
    new-instance v13, Lorg/checkerframework/framework/qual/TypeUseLocation;

    const-string v14, "IMPLICIT_UPPER_BOUND"

    const/16 v15, 0xd

    invoke-direct {v13, v14, v15}, Lorg/checkerframework/framework/qual/TypeUseLocation;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lorg/checkerframework/framework/qual/TypeUseLocation;->IMPLICIT_UPPER_BOUND:Lorg/checkerframework/framework/qual/TypeUseLocation;

    .line 83
    new-instance v14, Lorg/checkerframework/framework/qual/TypeUseLocation;

    const-string v15, "OTHERWISE"

    move-object/from16 v16, v13

    const/16 v13, 0xe

    invoke-direct {v14, v15, v13}, Lorg/checkerframework/framework/qual/TypeUseLocation;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lorg/checkerframework/framework/qual/TypeUseLocation;->OTHERWISE:Lorg/checkerframework/framework/qual/TypeUseLocation;

    .line 89
    new-instance v15, Lorg/checkerframework/framework/qual/TypeUseLocation;

    const-string v13, "ALL"

    move-object/from16 v17, v14

    const/16 v14, 0xf

    invoke-direct {v15, v13, v14}, Lorg/checkerframework/framework/qual/TypeUseLocation;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lorg/checkerframework/framework/qual/TypeUseLocation;->ALL:Lorg/checkerframework/framework/qual/TypeUseLocation;

    .line 12
    move-object/from16 v13, v16

    move-object/from16 v14, v17

    filled-new-array/range {v0 .. v15}, [Lorg/checkerframework/framework/qual/TypeUseLocation;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/framework/qual/TypeUseLocation;->$VALUES:[Lorg/checkerframework/framework/qual/TypeUseLocation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/framework/qual/TypeUseLocation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 12
    const-class v0, Lorg/checkerframework/framework/qual/TypeUseLocation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/qual/TypeUseLocation;

    return-object v0
.end method

.method public static values()[Lorg/checkerframework/framework/qual/TypeUseLocation;
    .locals 1

    .line 12
    sget-object v0, Lorg/checkerframework/framework/qual/TypeUseLocation;->$VALUES:[Lorg/checkerframework/framework/qual/TypeUseLocation;

    invoke-virtual {v0}, [Lorg/checkerframework/framework/qual/TypeUseLocation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/framework/qual/TypeUseLocation;

    return-object v0
.end method
