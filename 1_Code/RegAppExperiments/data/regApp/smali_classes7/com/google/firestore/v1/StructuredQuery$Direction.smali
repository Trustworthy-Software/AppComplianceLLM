.class public final enum Lcom/google/firestore/v1/StructuredQuery$Direction;
.super Ljava/lang/Enum;
.source "StructuredQuery.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/StructuredQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/StructuredQuery$Direction$DirectionVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firestore/v1/StructuredQuery$Direction;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firestore/v1/StructuredQuery$Direction;

.field public static final enum ASCENDING:Lcom/google/firestore/v1/StructuredQuery$Direction;

.field public static final ASCENDING_VALUE:I = 0x1

.field public static final enum DESCENDING:Lcom/google/firestore/v1/StructuredQuery$Direction;

.field public static final DESCENDING_VALUE:I = 0x2

.field public static final enum DIRECTION_UNSPECIFIED:Lcom/google/firestore/v1/StructuredQuery$Direction;

.field public static final DIRECTION_UNSPECIFIED_VALUE:I

.field public static final enum UNRECOGNIZED:Lcom/google/firestore/v1/StructuredQuery$Direction;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/firestore/v1/StructuredQuery$Direction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 38
    new-instance v0, Lcom/google/firestore/v1/StructuredQuery$Direction;

    const-string v1, "DIRECTION_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/firestore/v1/StructuredQuery$Direction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firestore/v1/StructuredQuery$Direction;->DIRECTION_UNSPECIFIED:Lcom/google/firestore/v1/StructuredQuery$Direction;

    .line 46
    new-instance v1, Lcom/google/firestore/v1/StructuredQuery$Direction;

    const-string v2, "ASCENDING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/google/firestore/v1/StructuredQuery$Direction;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/firestore/v1/StructuredQuery$Direction;->ASCENDING:Lcom/google/firestore/v1/StructuredQuery$Direction;

    .line 54
    new-instance v2, Lcom/google/firestore/v1/StructuredQuery$Direction;

    const-string v3, "DESCENDING"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/google/firestore/v1/StructuredQuery$Direction;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/firestore/v1/StructuredQuery$Direction;->DESCENDING:Lcom/google/firestore/v1/StructuredQuery$Direction;

    .line 55
    new-instance v3, Lcom/google/firestore/v1/StructuredQuery$Direction;

    const/4 v4, 0x3

    const/4 v5, -0x1

    const-string v6, "UNRECOGNIZED"

    invoke-direct {v3, v6, v4, v5}, Lcom/google/firestore/v1/StructuredQuery$Direction;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/firestore/v1/StructuredQuery$Direction;->UNRECOGNIZED:Lcom/google/firestore/v1/StructuredQuery$Direction;

    .line 29
    filled-new-array {v0, v1, v2, v3}, [Lcom/google/firestore/v1/StructuredQuery$Direction;

    move-result-object v0

    sput-object v0, Lcom/google/firestore/v1/StructuredQuery$Direction;->$VALUES:[Lcom/google/firestore/v1/StructuredQuery$Direction;

    .line 117
    new-instance v0, Lcom/google/firestore/v1/StructuredQuery$Direction$1;

    invoke-direct {v0}, Lcom/google/firestore/v1/StructuredQuery$Direction$1;-><init>()V

    sput-object v0, Lcom/google/firestore/v1/StructuredQuery$Direction;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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

    .line 141
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 142
    iput p3, p0, Lcom/google/firestore/v1/StructuredQuery$Direction;->value:I

    .line 143
    return-void
.end method

.method public static forNumber(I)Lcom/google/firestore/v1/StructuredQuery$Direction;
    .locals 1
    .param p0, "value"    # I

    .line 104
    packed-switch p0, :pswitch_data_0

    .line 108
    const/4 v0, 0x0

    return-object v0

    .line 107
    :pswitch_0
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$Direction;->DESCENDING:Lcom/google/firestore/v1/StructuredQuery$Direction;

    return-object v0

    .line 106
    :pswitch_1
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$Direction;->ASCENDING:Lcom/google/firestore/v1/StructuredQuery$Direction;

    return-object v0

    .line 105
    :pswitch_2
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$Direction;->DIRECTION_UNSPECIFIED:Lcom/google/firestore/v1/StructuredQuery$Direction;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/firestore/v1/StructuredQuery$Direction;",
            ">;"
        }
    .end annotation

    .line 114
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$Direction;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 127
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$Direction$DirectionVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/firestore/v1/StructuredQuery$Direction;
    .locals 1
    .param p0, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 100
    invoke-static {p0}, Lcom/google/firestore/v1/StructuredQuery$Direction;->forNumber(I)Lcom/google/firestore/v1/StructuredQuery$Direction;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firestore/v1/StructuredQuery$Direction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 29
    const-class v0, Lcom/google/firestore/v1/StructuredQuery$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$Direction;

    return-object v0
.end method

.method public static values()[Lcom/google/firestore/v1/StructuredQuery$Direction;
    .locals 1

    .line 29
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$Direction;->$VALUES:[Lcom/google/firestore/v1/StructuredQuery$Direction;

    invoke-virtual {v0}, [Lcom/google/firestore/v1/StructuredQuery$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firestore/v1/StructuredQuery$Direction;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 2

    .line 86
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$Direction;->UNRECOGNIZED:Lcom/google/firestore/v1/StructuredQuery$Direction;

    if-eq p0, v0, :cond_0

    .line 90
    iget v0, p0, Lcom/google/firestore/v1/StructuredQuery$Direction;->value:I

    return v0

    .line 87
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
