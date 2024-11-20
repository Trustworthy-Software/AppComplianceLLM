.class public final enum Lcom/google/firestore/v1/Value$ValueTypeCase;
.super Ljava/lang/Enum;
.source "Value.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/Value;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ValueTypeCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firestore/v1/Value$ValueTypeCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firestore/v1/Value$ValueTypeCase;

.field public static final enum ARRAY_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

.field public static final enum BOOLEAN_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

.field public static final enum BYTES_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

.field public static final enum DOUBLE_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

.field public static final enum GEO_POINT_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

.field public static final enum INTEGER_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

.field public static final enum MAP_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

.field public static final enum NULL_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

.field public static final enum REFERENCE_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

.field public static final enum STRING_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

.field public static final enum TIMESTAMP_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

.field public static final enum VALUETYPE_NOT_SET:Lcom/google/firestore/v1/Value$ValueTypeCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 23
    new-instance v0, Lcom/google/firestore/v1/Value$ValueTypeCase;

    const-string v1, "NULL_VALUE"

    const/4 v2, 0x0

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/google/firestore/v1/Value$ValueTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firestore/v1/Value$ValueTypeCase;->NULL_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    .line 24
    new-instance v1, Lcom/google/firestore/v1/Value$ValueTypeCase;

    const-string v4, "BOOLEAN_VALUE"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v5}, Lcom/google/firestore/v1/Value$ValueTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/firestore/v1/Value$ValueTypeCase;->BOOLEAN_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    .line 25
    new-instance v4, Lcom/google/firestore/v1/Value$ValueTypeCase;

    const-string v5, "INTEGER_VALUE"

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6, v6}, Lcom/google/firestore/v1/Value$ValueTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/firestore/v1/Value$ValueTypeCase;->INTEGER_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    .line 26
    new-instance v5, Lcom/google/firestore/v1/Value$ValueTypeCase;

    const-string v6, "DOUBLE_VALUE"

    const/4 v7, 0x3

    invoke-direct {v5, v6, v7, v7}, Lcom/google/firestore/v1/Value$ValueTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/firestore/v1/Value$ValueTypeCase;->DOUBLE_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    .line 27
    new-instance v6, Lcom/google/firestore/v1/Value$ValueTypeCase;

    const-string v7, "TIMESTAMP_VALUE"

    const/4 v8, 0x4

    const/16 v9, 0xa

    invoke-direct {v6, v7, v8, v9}, Lcom/google/firestore/v1/Value$ValueTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/firestore/v1/Value$ValueTypeCase;->TIMESTAMP_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    .line 28
    new-instance v7, Lcom/google/firestore/v1/Value$ValueTypeCase;

    const/16 v8, 0x11

    const-string v10, "STRING_VALUE"

    const/4 v11, 0x5

    invoke-direct {v7, v10, v11, v8}, Lcom/google/firestore/v1/Value$ValueTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/firestore/v1/Value$ValueTypeCase;->STRING_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    .line 29
    new-instance v8, Lcom/google/firestore/v1/Value$ValueTypeCase;

    const/16 v10, 0x12

    const-string v12, "BYTES_VALUE"

    const/4 v13, 0x6

    invoke-direct {v8, v12, v13, v10}, Lcom/google/firestore/v1/Value$ValueTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/firestore/v1/Value$ValueTypeCase;->BYTES_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    .line 30
    new-instance v10, Lcom/google/firestore/v1/Value$ValueTypeCase;

    const-string v12, "REFERENCE_VALUE"

    const/4 v14, 0x7

    invoke-direct {v10, v12, v14, v11}, Lcom/google/firestore/v1/Value$ValueTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/google/firestore/v1/Value$ValueTypeCase;->REFERENCE_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    .line 31
    new-instance v11, Lcom/google/firestore/v1/Value$ValueTypeCase;

    const-string v12, "GEO_POINT_VALUE"

    const/16 v14, 0x8

    invoke-direct {v11, v12, v14, v14}, Lcom/google/firestore/v1/Value$ValueTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/google/firestore/v1/Value$ValueTypeCase;->GEO_POINT_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    .line 32
    new-instance v12, Lcom/google/firestore/v1/Value$ValueTypeCase;

    const-string v14, "ARRAY_VALUE"

    const/16 v15, 0x9

    invoke-direct {v12, v14, v15, v15}, Lcom/google/firestore/v1/Value$ValueTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/google/firestore/v1/Value$ValueTypeCase;->ARRAY_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    .line 33
    new-instance v14, Lcom/google/firestore/v1/Value$ValueTypeCase;

    const-string v15, "MAP_VALUE"

    invoke-direct {v14, v15, v9, v13}, Lcom/google/firestore/v1/Value$ValueTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/google/firestore/v1/Value$ValueTypeCase;->MAP_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    .line 34
    new-instance v13, Lcom/google/firestore/v1/Value$ValueTypeCase;

    const-string v9, "VALUETYPE_NOT_SET"

    invoke-direct {v13, v9, v3, v2}, Lcom/google/firestore/v1/Value$ValueTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/google/firestore/v1/Value$ValueTypeCase;->VALUETYPE_NOT_SET:Lcom/google/firestore/v1/Value$ValueTypeCase;

    .line 22
    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    move-object v7, v10

    move-object v8, v11

    move-object v9, v12

    move-object v10, v14

    move-object v11, v13

    filled-new-array/range {v0 .. v11}, [Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v0

    sput-object v0, Lcom/google/firestore/v1/Value$ValueTypeCase;->$VALUES:[Lcom/google/firestore/v1/Value$ValueTypeCase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput p3, p0, Lcom/google/firestore/v1/Value$ValueTypeCase;->value:I

    .line 38
    return-void
.end method

.method public static forNumber(I)Lcom/google/firestore/v1/Value$ValueTypeCase;
    .locals 1
    .param p0, "value"    # I

    .line 48
    packed-switch p0, :pswitch_data_0

    .line 61
    :pswitch_0
    const/4 v0, 0x0

    return-object v0

    .line 55
    :pswitch_1
    sget-object v0, Lcom/google/firestore/v1/Value$ValueTypeCase;->BYTES_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    return-object v0

    .line 54
    :pswitch_2
    sget-object v0, Lcom/google/firestore/v1/Value$ValueTypeCase;->STRING_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    return-object v0

    .line 49
    :pswitch_3
    sget-object v0, Lcom/google/firestore/v1/Value$ValueTypeCase;->NULL_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    return-object v0

    .line 53
    :pswitch_4
    sget-object v0, Lcom/google/firestore/v1/Value$ValueTypeCase;->TIMESTAMP_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    return-object v0

    .line 58
    :pswitch_5
    sget-object v0, Lcom/google/firestore/v1/Value$ValueTypeCase;->ARRAY_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    return-object v0

    .line 57
    :pswitch_6
    sget-object v0, Lcom/google/firestore/v1/Value$ValueTypeCase;->GEO_POINT_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    return-object v0

    .line 59
    :pswitch_7
    sget-object v0, Lcom/google/firestore/v1/Value$ValueTypeCase;->MAP_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    return-object v0

    .line 56
    :pswitch_8
    sget-object v0, Lcom/google/firestore/v1/Value$ValueTypeCase;->REFERENCE_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    return-object v0

    .line 52
    :pswitch_9
    sget-object v0, Lcom/google/firestore/v1/Value$ValueTypeCase;->DOUBLE_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    return-object v0

    .line 51
    :pswitch_a
    sget-object v0, Lcom/google/firestore/v1/Value$ValueTypeCase;->INTEGER_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    return-object v0

    .line 50
    :pswitch_b
    sget-object v0, Lcom/google/firestore/v1/Value$ValueTypeCase;->BOOLEAN_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    return-object v0

    .line 60
    :pswitch_c
    sget-object v0, Lcom/google/firestore/v1/Value$ValueTypeCase;->VALUETYPE_NOT_SET:Lcom/google/firestore/v1/Value$ValueTypeCase;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(I)Lcom/google/firestore/v1/Value$ValueTypeCase;
    .locals 1
    .param p0, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 44
    invoke-static {p0}, Lcom/google/firestore/v1/Value$ValueTypeCase;->forNumber(I)Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firestore/v1/Value$ValueTypeCase;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 22
    const-class v0, Lcom/google/firestore/v1/Value$ValueTypeCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Value$ValueTypeCase;

    return-object v0
.end method

.method public static values()[Lcom/google/firestore/v1/Value$ValueTypeCase;
    .locals 1

    .line 22
    sget-object v0, Lcom/google/firestore/v1/Value$ValueTypeCase;->$VALUES:[Lcom/google/firestore/v1/Value$ValueTypeCase;

    invoke-virtual {v0}, [Lcom/google/firestore/v1/Value$ValueTypeCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firestore/v1/Value$ValueTypeCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/google/firestore/v1/Value$ValueTypeCase;->value:I

    return v0
.end method
