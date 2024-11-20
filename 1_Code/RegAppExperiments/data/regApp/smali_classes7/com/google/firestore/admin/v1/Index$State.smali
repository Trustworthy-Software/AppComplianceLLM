.class public final enum Lcom/google/firestore/admin/v1/Index$State;
.super Ljava/lang/Enum;
.source "Index.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/admin/v1/Index;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/admin/v1/Index$State$StateVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firestore/admin/v1/Index$State;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firestore/admin/v1/Index$State;

.field public static final enum CREATING:Lcom/google/firestore/admin/v1/Index$State;

.field public static final CREATING_VALUE:I = 0x1

.field public static final enum NEEDS_REPAIR:Lcom/google/firestore/admin/v1/Index$State;

.field public static final NEEDS_REPAIR_VALUE:I = 0x3

.field public static final enum READY:Lcom/google/firestore/admin/v1/Index$State;

.field public static final READY_VALUE:I = 0x2

.field public static final enum STATE_UNSPECIFIED:Lcom/google/firestore/admin/v1/Index$State;

.field public static final STATE_UNSPECIFIED_VALUE:I

.field public static final enum UNRECOGNIZED:Lcom/google/firestore/admin/v1/Index$State;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/firestore/admin/v1/Index$State;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 177
    new-instance v0, Lcom/google/firestore/admin/v1/Index$State;

    const-string v1, "STATE_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/firestore/admin/v1/Index$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firestore/admin/v1/Index$State;->STATE_UNSPECIFIED:Lcom/google/firestore/admin/v1/Index$State;

    .line 188
    new-instance v1, Lcom/google/firestore/admin/v1/Index$State;

    const-string v2, "CREATING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/google/firestore/admin/v1/Index$State;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/firestore/admin/v1/Index$State;->CREATING:Lcom/google/firestore/admin/v1/Index$State;

    .line 198
    new-instance v2, Lcom/google/firestore/admin/v1/Index$State;

    const-string v3, "READY"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/google/firestore/admin/v1/Index$State;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/firestore/admin/v1/Index$State;->READY:Lcom/google/firestore/admin/v1/Index$State;

    .line 213
    new-instance v3, Lcom/google/firestore/admin/v1/Index$State;

    const-string v4, "NEEDS_REPAIR"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/google/firestore/admin/v1/Index$State;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/firestore/admin/v1/Index$State;->NEEDS_REPAIR:Lcom/google/firestore/admin/v1/Index$State;

    .line 214
    new-instance v4, Lcom/google/firestore/admin/v1/Index$State;

    const/4 v5, 0x4

    const/4 v6, -0x1

    const-string v7, "UNRECOGNIZED"

    invoke-direct {v4, v7, v5, v6}, Lcom/google/firestore/admin/v1/Index$State;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/firestore/admin/v1/Index$State;->UNRECOGNIZED:Lcom/google/firestore/admin/v1/Index$State;

    .line 168
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/google/firestore/admin/v1/Index$State;

    move-result-object v0

    sput-object v0, Lcom/google/firestore/admin/v1/Index$State;->$VALUES:[Lcom/google/firestore/admin/v1/Index$State;

    .line 297
    new-instance v0, Lcom/google/firestore/admin/v1/Index$State$1;

    invoke-direct {v0}, Lcom/google/firestore/admin/v1/Index$State$1;-><init>()V

    sput-object v0, Lcom/google/firestore/admin/v1/Index$State;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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

    .line 321
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 322
    iput p3, p0, Lcom/google/firestore/admin/v1/Index$State;->value:I

    .line 323
    return-void
.end method

.method public static forNumber(I)Lcom/google/firestore/admin/v1/Index$State;
    .locals 1
    .param p0, "value"    # I

    .line 283
    packed-switch p0, :pswitch_data_0

    .line 288
    const/4 v0, 0x0

    return-object v0

    .line 287
    :pswitch_0
    sget-object v0, Lcom/google/firestore/admin/v1/Index$State;->NEEDS_REPAIR:Lcom/google/firestore/admin/v1/Index$State;

    return-object v0

    .line 286
    :pswitch_1
    sget-object v0, Lcom/google/firestore/admin/v1/Index$State;->READY:Lcom/google/firestore/admin/v1/Index$State;

    return-object v0

    .line 285
    :pswitch_2
    sget-object v0, Lcom/google/firestore/admin/v1/Index$State;->CREATING:Lcom/google/firestore/admin/v1/Index$State;

    return-object v0

    .line 284
    :pswitch_3
    sget-object v0, Lcom/google/firestore/admin/v1/Index$State;->STATE_UNSPECIFIED:Lcom/google/firestore/admin/v1/Index$State;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
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
            "Lcom/google/firestore/admin/v1/Index$State;",
            ">;"
        }
    .end annotation

    .line 294
    sget-object v0, Lcom/google/firestore/admin/v1/Index$State;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 307
    sget-object v0, Lcom/google/firestore/admin/v1/Index$State$StateVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/firestore/admin/v1/Index$State;
    .locals 1
    .param p0, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 279
    invoke-static {p0}, Lcom/google/firestore/admin/v1/Index$State;->forNumber(I)Lcom/google/firestore/admin/v1/Index$State;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firestore/admin/v1/Index$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 168
    const-class v0, Lcom/google/firestore/admin/v1/Index$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/admin/v1/Index$State;

    return-object v0
.end method

.method public static values()[Lcom/google/firestore/admin/v1/Index$State;
    .locals 1

    .line 168
    sget-object v0, Lcom/google/firestore/admin/v1/Index$State;->$VALUES:[Lcom/google/firestore/admin/v1/Index$State;

    invoke-virtual {v0}, [Lcom/google/firestore/admin/v1/Index$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firestore/admin/v1/Index$State;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 2

    .line 265
    sget-object v0, Lcom/google/firestore/admin/v1/Index$State;->UNRECOGNIZED:Lcom/google/firestore/admin/v1/Index$State;

    if-eq p0, v0, :cond_0

    .line 269
    iget v0, p0, Lcom/google/firestore/admin/v1/Index$State;->value:I

    return v0

    .line 266
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
