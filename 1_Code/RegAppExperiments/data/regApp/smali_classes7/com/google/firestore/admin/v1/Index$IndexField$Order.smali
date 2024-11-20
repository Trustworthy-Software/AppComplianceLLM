.class public final enum Lcom/google/firestore/admin/v1/Index$IndexField$Order;
.super Ljava/lang/Enum;
.source "Index.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/admin/v1/Index$IndexField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Order"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/admin/v1/Index$IndexField$Order$OrderVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firestore/admin/v1/Index$IndexField$Order;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firestore/admin/v1/Index$IndexField$Order;

.field public static final enum ASCENDING:Lcom/google/firestore/admin/v1/Index$IndexField$Order;

.field public static final ASCENDING_VALUE:I = 0x1

.field public static final enum DESCENDING:Lcom/google/firestore/admin/v1/Index$IndexField$Order;

.field public static final DESCENDING_VALUE:I = 0x2

.field public static final enum ORDER_UNSPECIFIED:Lcom/google/firestore/admin/v1/Index$IndexField$Order;

.field public static final ORDER_UNSPECIFIED_VALUE:I

.field public static final enum UNRECOGNIZED:Lcom/google/firestore/admin/v1/Index$IndexField$Order;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/firestore/admin/v1/Index$IndexField$Order;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 450
    new-instance v0, Lcom/google/firestore/admin/v1/Index$IndexField$Order;

    const-string v1, "ORDER_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/firestore/admin/v1/Index$IndexField$Order;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firestore/admin/v1/Index$IndexField$Order;->ORDER_UNSPECIFIED:Lcom/google/firestore/admin/v1/Index$IndexField$Order;

    .line 458
    new-instance v1, Lcom/google/firestore/admin/v1/Index$IndexField$Order;

    const-string v2, "ASCENDING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/google/firestore/admin/v1/Index$IndexField$Order;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/firestore/admin/v1/Index$IndexField$Order;->ASCENDING:Lcom/google/firestore/admin/v1/Index$IndexField$Order;

    .line 466
    new-instance v2, Lcom/google/firestore/admin/v1/Index$IndexField$Order;

    const-string v3, "DESCENDING"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/google/firestore/admin/v1/Index$IndexField$Order;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/firestore/admin/v1/Index$IndexField$Order;->DESCENDING:Lcom/google/firestore/admin/v1/Index$IndexField$Order;

    .line 467
    new-instance v3, Lcom/google/firestore/admin/v1/Index$IndexField$Order;

    const/4 v4, 0x3

    const/4 v5, -0x1

    const-string v6, "UNRECOGNIZED"

    invoke-direct {v3, v6, v4, v5}, Lcom/google/firestore/admin/v1/Index$IndexField$Order;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/firestore/admin/v1/Index$IndexField$Order;->UNRECOGNIZED:Lcom/google/firestore/admin/v1/Index$IndexField$Order;

    .line 441
    filled-new-array {v0, v1, v2, v3}, [Lcom/google/firestore/admin/v1/Index$IndexField$Order;

    move-result-object v0

    sput-object v0, Lcom/google/firestore/admin/v1/Index$IndexField$Order;->$VALUES:[Lcom/google/firestore/admin/v1/Index$IndexField$Order;

    .line 529
    new-instance v0, Lcom/google/firestore/admin/v1/Index$IndexField$Order$1;

    invoke-direct {v0}, Lcom/google/firestore/admin/v1/Index$IndexField$Order$1;-><init>()V

    sput-object v0, Lcom/google/firestore/admin/v1/Index$IndexField$Order;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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

    .line 553
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 554
    iput p3, p0, Lcom/google/firestore/admin/v1/Index$IndexField$Order;->value:I

    .line 555
    return-void
.end method

.method public static forNumber(I)Lcom/google/firestore/admin/v1/Index$IndexField$Order;
    .locals 1
    .param p0, "value"    # I

    .line 516
    packed-switch p0, :pswitch_data_0

    .line 520
    const/4 v0, 0x0

    return-object v0

    .line 519
    :pswitch_0
    sget-object v0, Lcom/google/firestore/admin/v1/Index$IndexField$Order;->DESCENDING:Lcom/google/firestore/admin/v1/Index$IndexField$Order;

    return-object v0

    .line 518
    :pswitch_1
    sget-object v0, Lcom/google/firestore/admin/v1/Index$IndexField$Order;->ASCENDING:Lcom/google/firestore/admin/v1/Index$IndexField$Order;

    return-object v0

    .line 517
    :pswitch_2
    sget-object v0, Lcom/google/firestore/admin/v1/Index$IndexField$Order;->ORDER_UNSPECIFIED:Lcom/google/firestore/admin/v1/Index$IndexField$Order;

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
            "Lcom/google/firestore/admin/v1/Index$IndexField$Order;",
            ">;"
        }
    .end annotation

    .line 526
    sget-object v0, Lcom/google/firestore/admin/v1/Index$IndexField$Order;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 539
    sget-object v0, Lcom/google/firestore/admin/v1/Index$IndexField$Order$OrderVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/firestore/admin/v1/Index$IndexField$Order;
    .locals 1
    .param p0, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 512
    invoke-static {p0}, Lcom/google/firestore/admin/v1/Index$IndexField$Order;->forNumber(I)Lcom/google/firestore/admin/v1/Index$IndexField$Order;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firestore/admin/v1/Index$IndexField$Order;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 441
    const-class v0, Lcom/google/firestore/admin/v1/Index$IndexField$Order;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/admin/v1/Index$IndexField$Order;

    return-object v0
.end method

.method public static values()[Lcom/google/firestore/admin/v1/Index$IndexField$Order;
    .locals 1

    .line 441
    sget-object v0, Lcom/google/firestore/admin/v1/Index$IndexField$Order;->$VALUES:[Lcom/google/firestore/admin/v1/Index$IndexField$Order;

    invoke-virtual {v0}, [Lcom/google/firestore/admin/v1/Index$IndexField$Order;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firestore/admin/v1/Index$IndexField$Order;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 2

    .line 498
    sget-object v0, Lcom/google/firestore/admin/v1/Index$IndexField$Order;->UNRECOGNIZED:Lcom/google/firestore/admin/v1/Index$IndexField$Order;

    if-eq p0, v0, :cond_0

    .line 502
    iget v0, p0, Lcom/google/firestore/admin/v1/Index$IndexField$Order;->value:I

    return v0

    .line 499
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
