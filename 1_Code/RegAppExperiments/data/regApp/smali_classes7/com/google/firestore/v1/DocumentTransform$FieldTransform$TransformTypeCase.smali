.class public final enum Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;
.super Ljava/lang/Enum;
.source "DocumentTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/DocumentTransform$FieldTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TransformTypeCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;

.field public static final enum APPEND_MISSING_ELEMENTS:Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;

.field public static final enum INCREMENT:Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;

.field public static final enum MAXIMUM:Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;

.field public static final enum MINIMUM:Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;

.field public static final enum REMOVE_ALL_FROM_ARRAY:Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;

.field public static final enum SET_TO_SERVER_VALUE:Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;

.field public static final enum TRANSFORMTYPE_NOT_SET:Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 390
    new-instance v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;

    const-string v1, "SET_TO_SERVER_VALUE"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;->SET_TO_SERVER_VALUE:Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;

    .line 391
    new-instance v1, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;

    const-string v4, "INCREMENT"

    const/4 v5, 0x1

    const/4 v6, 0x3

    invoke-direct {v1, v4, v5, v6}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;->INCREMENT:Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;

    .line 392
    new-instance v4, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;

    const-string v5, "MAXIMUM"

    const/4 v7, 0x4

    invoke-direct {v4, v5, v3, v7}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;->MAXIMUM:Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;

    .line 393
    new-instance v3, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;

    const-string v5, "MINIMUM"

    const/4 v8, 0x5

    invoke-direct {v3, v5, v6, v8}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;->MINIMUM:Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;

    .line 394
    new-instance v5, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;

    const-string v6, "APPEND_MISSING_ELEMENTS"

    const/4 v9, 0x6

    invoke-direct {v5, v6, v7, v9}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;->APPEND_MISSING_ELEMENTS:Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;

    .line 395
    new-instance v6, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;

    const-string v7, "REMOVE_ALL_FROM_ARRAY"

    const/4 v10, 0x7

    invoke-direct {v6, v7, v8, v10}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;->REMOVE_ALL_FROM_ARRAY:Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;

    .line 396
    new-instance v7, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;

    const-string v8, "TRANSFORMTYPE_NOT_SET"

    invoke-direct {v7, v8, v9, v2}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;->TRANSFORMTYPE_NOT_SET:Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;

    .line 389
    move-object v2, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    filled-new-array/range {v0 .. v6}, [Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;

    move-result-object v0

    sput-object v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;->$VALUES:[Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;

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

    .line 398
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 399
    iput p3, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;->value:I

    .line 400
    return-void
.end method

.method public static forNumber(I)Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;
    .locals 1
    .param p0, "value"    # I

    .line 410
    packed-switch p0, :pswitch_data_0

    .line 418
    :pswitch_0
    const/4 v0, 0x0

    return-object v0

    .line 416
    :pswitch_1
    sget-object v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;->REMOVE_ALL_FROM_ARRAY:Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;

    return-object v0

    .line 415
    :pswitch_2
    sget-object v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;->APPEND_MISSING_ELEMENTS:Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;

    return-object v0

    .line 414
    :pswitch_3
    sget-object v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;->MINIMUM:Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;

    return-object v0

    .line 413
    :pswitch_4
    sget-object v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;->MAXIMUM:Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;

    return-object v0

    .line 412
    :pswitch_5
    sget-object v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;->INCREMENT:Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;

    return-object v0

    .line 411
    :pswitch_6
    sget-object v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;->SET_TO_SERVER_VALUE:Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;

    return-object v0

    .line 417
    :pswitch_7
    sget-object v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;->TRANSFORMTYPE_NOT_SET:Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(I)Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;
    .locals 1
    .param p0, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 406
    invoke-static {p0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;->forNumber(I)Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 389
    const-class v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;

    return-object v0
.end method

.method public static values()[Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;
    .locals 1

    .line 389
    sget-object v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;->$VALUES:[Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;

    invoke-virtual {v0}, [Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 422
    iget v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;->value:I

    return v0
.end method
