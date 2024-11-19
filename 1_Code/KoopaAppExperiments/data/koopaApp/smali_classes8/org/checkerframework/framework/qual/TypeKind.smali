.class public final enum Lorg/checkerframework/framework/qual/TypeKind;
.super Ljava/lang/Enum;
.source "TypeKind.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/framework/qual/TypeKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/checkerframework/framework/qual/TypeKind;

.field public static final enum ARRAY:Lorg/checkerframework/framework/qual/TypeKind;

.field public static final enum BOOLEAN:Lorg/checkerframework/framework/qual/TypeKind;

.field public static final enum BYTE:Lorg/checkerframework/framework/qual/TypeKind;

.field public static final enum CHAR:Lorg/checkerframework/framework/qual/TypeKind;

.field public static final enum DECLARED:Lorg/checkerframework/framework/qual/TypeKind;

.field public static final enum DOUBLE:Lorg/checkerframework/framework/qual/TypeKind;

.field public static final enum ERROR:Lorg/checkerframework/framework/qual/TypeKind;

.field public static final enum EXECUTABLE:Lorg/checkerframework/framework/qual/TypeKind;

.field public static final enum FLOAT:Lorg/checkerframework/framework/qual/TypeKind;

.field public static final enum INT:Lorg/checkerframework/framework/qual/TypeKind;

.field public static final enum INTERSECTION:Lorg/checkerframework/framework/qual/TypeKind;

.field public static final enum LONG:Lorg/checkerframework/framework/qual/TypeKind;

.field public static final enum NONE:Lorg/checkerframework/framework/qual/TypeKind;

.field public static final enum NULL:Lorg/checkerframework/framework/qual/TypeKind;

.field public static final enum OTHER:Lorg/checkerframework/framework/qual/TypeKind;

.field public static final enum PACKAGE:Lorg/checkerframework/framework/qual/TypeKind;

.field public static final enum SHORT:Lorg/checkerframework/framework/qual/TypeKind;

.field public static final enum TYPEVAR:Lorg/checkerframework/framework/qual/TypeKind;

.field public static final enum UNION:Lorg/checkerframework/framework/qual/TypeKind;

.field public static final enum VOID:Lorg/checkerframework/framework/qual/TypeKind;

.field public static final enum WILDCARD:Lorg/checkerframework/framework/qual/TypeKind;


# direct methods
.method static constructor <clinit>()V
    .locals 24

    .line 14
    new-instance v1, Lorg/checkerframework/framework/qual/TypeKind;

    move-object v0, v1

    const-string v2, "BOOLEAN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/framework/qual/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/checkerframework/framework/qual/TypeKind;->BOOLEAN:Lorg/checkerframework/framework/qual/TypeKind;

    .line 17
    new-instance v2, Lorg/checkerframework/framework/qual/TypeKind;

    move-object v1, v2

    const-string v3, "BYTE"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lorg/checkerframework/framework/qual/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/checkerframework/framework/qual/TypeKind;->BYTE:Lorg/checkerframework/framework/qual/TypeKind;

    .line 20
    new-instance v3, Lorg/checkerframework/framework/qual/TypeKind;

    move-object v2, v3

    const-string v4, "SHORT"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lorg/checkerframework/framework/qual/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/checkerframework/framework/qual/TypeKind;->SHORT:Lorg/checkerframework/framework/qual/TypeKind;

    .line 23
    new-instance v4, Lorg/checkerframework/framework/qual/TypeKind;

    move-object v3, v4

    const-string v5, "INT"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6}, Lorg/checkerframework/framework/qual/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/checkerframework/framework/qual/TypeKind;->INT:Lorg/checkerframework/framework/qual/TypeKind;

    .line 26
    new-instance v5, Lorg/checkerframework/framework/qual/TypeKind;

    move-object v4, v5

    const-string v6, "LONG"

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7}, Lorg/checkerframework/framework/qual/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/checkerframework/framework/qual/TypeKind;->LONG:Lorg/checkerframework/framework/qual/TypeKind;

    .line 29
    new-instance v6, Lorg/checkerframework/framework/qual/TypeKind;

    move-object v5, v6

    const-string v7, "CHAR"

    const/4 v8, 0x5

    invoke-direct {v6, v7, v8}, Lorg/checkerframework/framework/qual/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/checkerframework/framework/qual/TypeKind;->CHAR:Lorg/checkerframework/framework/qual/TypeKind;

    .line 32
    new-instance v7, Lorg/checkerframework/framework/qual/TypeKind;

    move-object v6, v7

    const-string v8, "FLOAT"

    const/4 v9, 0x6

    invoke-direct {v7, v8, v9}, Lorg/checkerframework/framework/qual/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/checkerframework/framework/qual/TypeKind;->FLOAT:Lorg/checkerframework/framework/qual/TypeKind;

    .line 35
    new-instance v8, Lorg/checkerframework/framework/qual/TypeKind;

    move-object v7, v8

    const-string v9, "DOUBLE"

    const/4 v10, 0x7

    invoke-direct {v8, v9, v10}, Lorg/checkerframework/framework/qual/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lorg/checkerframework/framework/qual/TypeKind;->DOUBLE:Lorg/checkerframework/framework/qual/TypeKind;

    .line 38
    new-instance v9, Lorg/checkerframework/framework/qual/TypeKind;

    move-object v8, v9

    const-string v10, "VOID"

    const/16 v11, 0x8

    invoke-direct {v9, v10, v11}, Lorg/checkerframework/framework/qual/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/checkerframework/framework/qual/TypeKind;->VOID:Lorg/checkerframework/framework/qual/TypeKind;

    .line 41
    new-instance v10, Lorg/checkerframework/framework/qual/TypeKind;

    move-object v9, v10

    const-string v11, "NONE"

    const/16 v12, 0x9

    invoke-direct {v10, v11, v12}, Lorg/checkerframework/framework/qual/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lorg/checkerframework/framework/qual/TypeKind;->NONE:Lorg/checkerframework/framework/qual/TypeKind;

    .line 44
    new-instance v11, Lorg/checkerframework/framework/qual/TypeKind;

    move-object v10, v11

    const-string v12, "NULL"

    const/16 v13, 0xa

    invoke-direct {v11, v12, v13}, Lorg/checkerframework/framework/qual/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lorg/checkerframework/framework/qual/TypeKind;->NULL:Lorg/checkerframework/framework/qual/TypeKind;

    .line 47
    new-instance v12, Lorg/checkerframework/framework/qual/TypeKind;

    move-object v11, v12

    const-string v13, "ARRAY"

    const/16 v14, 0xb

    invoke-direct {v12, v13, v14}, Lorg/checkerframework/framework/qual/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lorg/checkerframework/framework/qual/TypeKind;->ARRAY:Lorg/checkerframework/framework/qual/TypeKind;

    .line 50
    new-instance v13, Lorg/checkerframework/framework/qual/TypeKind;

    move-object v12, v13

    const-string v14, "DECLARED"

    const/16 v15, 0xc

    invoke-direct {v13, v14, v15}, Lorg/checkerframework/framework/qual/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lorg/checkerframework/framework/qual/TypeKind;->DECLARED:Lorg/checkerframework/framework/qual/TypeKind;

    .line 53
    new-instance v14, Lorg/checkerframework/framework/qual/TypeKind;

    move-object v13, v14

    const-string v15, "ERROR"

    move-object/from16 v21, v0

    const/16 v0, 0xd

    invoke-direct {v14, v15, v0}, Lorg/checkerframework/framework/qual/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lorg/checkerframework/framework/qual/TypeKind;->ERROR:Lorg/checkerframework/framework/qual/TypeKind;

    .line 56
    new-instance v0, Lorg/checkerframework/framework/qual/TypeKind;

    move-object v14, v0

    const-string v15, "TYPEVAR"

    move-object/from16 v22, v1

    const/16 v1, 0xe

    invoke-direct {v0, v15, v1}, Lorg/checkerframework/framework/qual/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/framework/qual/TypeKind;->TYPEVAR:Lorg/checkerframework/framework/qual/TypeKind;

    .line 59
    new-instance v0, Lorg/checkerframework/framework/qual/TypeKind;

    move-object v15, v0

    const-string v1, "WILDCARD"

    move-object/from16 v23, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/framework/qual/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/framework/qual/TypeKind;->WILDCARD:Lorg/checkerframework/framework/qual/TypeKind;

    .line 62
    new-instance v0, Lorg/checkerframework/framework/qual/TypeKind;

    move-object/from16 v16, v0

    const-string v1, "PACKAGE"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/framework/qual/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/framework/qual/TypeKind;->PACKAGE:Lorg/checkerframework/framework/qual/TypeKind;

    .line 65
    new-instance v0, Lorg/checkerframework/framework/qual/TypeKind;

    move-object/from16 v17, v0

    const-string v1, "EXECUTABLE"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/framework/qual/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/framework/qual/TypeKind;->EXECUTABLE:Lorg/checkerframework/framework/qual/TypeKind;

    .line 68
    new-instance v0, Lorg/checkerframework/framework/qual/TypeKind;

    move-object/from16 v18, v0

    const-string v1, "OTHER"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/framework/qual/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/framework/qual/TypeKind;->OTHER:Lorg/checkerframework/framework/qual/TypeKind;

    .line 71
    new-instance v0, Lorg/checkerframework/framework/qual/TypeKind;

    move-object/from16 v19, v0

    const-string v1, "UNION"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/framework/qual/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/framework/qual/TypeKind;->UNION:Lorg/checkerframework/framework/qual/TypeKind;

    .line 74
    new-instance v0, Lorg/checkerframework/framework/qual/TypeKind;

    move-object/from16 v20, v0

    const-string v1, "INTERSECTION"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/framework/qual/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/framework/qual/TypeKind;->INTERSECTION:Lorg/checkerframework/framework/qual/TypeKind;

    .line 12
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    filled-new-array/range {v0 .. v20}, [Lorg/checkerframework/framework/qual/TypeKind;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/framework/qual/TypeKind;->$VALUES:[Lorg/checkerframework/framework/qual/TypeKind;

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

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/framework/qual/TypeKind;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 12
    const-class v0, Lorg/checkerframework/framework/qual/TypeKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/qual/TypeKind;

    return-object v0
.end method

.method public static values()[Lorg/checkerframework/framework/qual/TypeKind;
    .locals 1

    .line 12
    sget-object v0, Lorg/checkerframework/framework/qual/TypeKind;->$VALUES:[Lorg/checkerframework/framework/qual/TypeKind;

    invoke-virtual {v0}, [Lorg/checkerframework/framework/qual/TypeKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/framework/qual/TypeKind;

    return-object v0
.end method
