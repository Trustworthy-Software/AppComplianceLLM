.class public final enum Lcom/google/firestore/v1/TargetChange$TargetChangeType;
.super Ljava/lang/Enum;
.source "TargetChange.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/TargetChange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TargetChangeType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/TargetChange$TargetChangeType$TargetChangeTypeVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firestore/v1/TargetChange$TargetChangeType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firestore/v1/TargetChange$TargetChangeType;

.field public static final enum ADD:Lcom/google/firestore/v1/TargetChange$TargetChangeType;

.field public static final ADD_VALUE:I = 0x1

.field public static final enum CURRENT:Lcom/google/firestore/v1/TargetChange$TargetChangeType;

.field public static final CURRENT_VALUE:I = 0x3

.field public static final enum NO_CHANGE:Lcom/google/firestore/v1/TargetChange$TargetChangeType;

.field public static final NO_CHANGE_VALUE:I = 0x0

.field public static final enum REMOVE:Lcom/google/firestore/v1/TargetChange$TargetChangeType;

.field public static final REMOVE_VALUE:I = 0x2

.field public static final enum RESET:Lcom/google/firestore/v1/TargetChange$TargetChangeType;

.field public static final RESET_VALUE:I = 0x4

.field public static final enum UNRECOGNIZED:Lcom/google/firestore/v1/TargetChange$TargetChangeType;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/firestore/v1/TargetChange$TargetChangeType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 38
    new-instance v0, Lcom/google/firestore/v1/TargetChange$TargetChangeType;

    const-string v1, "NO_CHANGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/firestore/v1/TargetChange$TargetChangeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firestore/v1/TargetChange$TargetChangeType;->NO_CHANGE:Lcom/google/firestore/v1/TargetChange$TargetChangeType;

    .line 46
    new-instance v1, Lcom/google/firestore/v1/TargetChange$TargetChangeType;

    const-string v2, "ADD"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/google/firestore/v1/TargetChange$TargetChangeType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/firestore/v1/TargetChange$TargetChangeType;->ADD:Lcom/google/firestore/v1/TargetChange$TargetChangeType;

    .line 54
    new-instance v2, Lcom/google/firestore/v1/TargetChange$TargetChangeType;

    const-string v3, "REMOVE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/google/firestore/v1/TargetChange$TargetChangeType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/firestore/v1/TargetChange$TargetChangeType;->REMOVE:Lcom/google/firestore/v1/TargetChange$TargetChangeType;

    .line 67
    new-instance v3, Lcom/google/firestore/v1/TargetChange$TargetChangeType;

    const-string v4, "CURRENT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/google/firestore/v1/TargetChange$TargetChangeType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/firestore/v1/TargetChange$TargetChangeType;->CURRENT:Lcom/google/firestore/v1/TargetChange$TargetChangeType;

    .line 78
    new-instance v4, Lcom/google/firestore/v1/TargetChange$TargetChangeType;

    const-string v5, "RESET"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/google/firestore/v1/TargetChange$TargetChangeType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/firestore/v1/TargetChange$TargetChangeType;->RESET:Lcom/google/firestore/v1/TargetChange$TargetChangeType;

    .line 79
    new-instance v5, Lcom/google/firestore/v1/TargetChange$TargetChangeType;

    const/4 v6, 0x5

    const/4 v7, -0x1

    const-string v8, "UNRECOGNIZED"

    invoke-direct {v5, v8, v6, v7}, Lcom/google/firestore/v1/TargetChange$TargetChangeType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/firestore/v1/TargetChange$TargetChangeType;->UNRECOGNIZED:Lcom/google/firestore/v1/TargetChange$TargetChangeType;

    .line 29
    filled-new-array/range {v0 .. v5}, [Lcom/google/firestore/v1/TargetChange$TargetChangeType;

    move-result-object v0

    sput-object v0, Lcom/google/firestore/v1/TargetChange$TargetChangeType;->$VALUES:[Lcom/google/firestore/v1/TargetChange$TargetChangeType;

    .line 167
    new-instance v0, Lcom/google/firestore/v1/TargetChange$TargetChangeType$1;

    invoke-direct {v0}, Lcom/google/firestore/v1/TargetChange$TargetChangeType$1;-><init>()V

    sput-object v0, Lcom/google/firestore/v1/TargetChange$TargetChangeType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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

    .line 191
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 192
    iput p3, p0, Lcom/google/firestore/v1/TargetChange$TargetChangeType;->value:I

    .line 193
    return-void
.end method

.method public static forNumber(I)Lcom/google/firestore/v1/TargetChange$TargetChangeType;
    .locals 1
    .param p0, "value"    # I

    .line 152
    packed-switch p0, :pswitch_data_0

    .line 158
    const/4 v0, 0x0

    return-object v0

    .line 157
    :pswitch_0
    sget-object v0, Lcom/google/firestore/v1/TargetChange$TargetChangeType;->RESET:Lcom/google/firestore/v1/TargetChange$TargetChangeType;

    return-object v0

    .line 156
    :pswitch_1
    sget-object v0, Lcom/google/firestore/v1/TargetChange$TargetChangeType;->CURRENT:Lcom/google/firestore/v1/TargetChange$TargetChangeType;

    return-object v0

    .line 155
    :pswitch_2
    sget-object v0, Lcom/google/firestore/v1/TargetChange$TargetChangeType;->REMOVE:Lcom/google/firestore/v1/TargetChange$TargetChangeType;

    return-object v0

    .line 154
    :pswitch_3
    sget-object v0, Lcom/google/firestore/v1/TargetChange$TargetChangeType;->ADD:Lcom/google/firestore/v1/TargetChange$TargetChangeType;

    return-object v0

    .line 153
    :pswitch_4
    sget-object v0, Lcom/google/firestore/v1/TargetChange$TargetChangeType;->NO_CHANGE:Lcom/google/firestore/v1/TargetChange$TargetChangeType;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
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
            "Lcom/google/firestore/v1/TargetChange$TargetChangeType;",
            ">;"
        }
    .end annotation

    .line 164
    sget-object v0, Lcom/google/firestore/v1/TargetChange$TargetChangeType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 177
    sget-object v0, Lcom/google/firestore/v1/TargetChange$TargetChangeType$TargetChangeTypeVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/firestore/v1/TargetChange$TargetChangeType;
    .locals 1
    .param p0, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 148
    invoke-static {p0}, Lcom/google/firestore/v1/TargetChange$TargetChangeType;->forNumber(I)Lcom/google/firestore/v1/TargetChange$TargetChangeType;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firestore/v1/TargetChange$TargetChangeType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 29
    const-class v0, Lcom/google/firestore/v1/TargetChange$TargetChangeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/TargetChange$TargetChangeType;

    return-object v0
.end method

.method public static values()[Lcom/google/firestore/v1/TargetChange$TargetChangeType;
    .locals 1

    .line 29
    sget-object v0, Lcom/google/firestore/v1/TargetChange$TargetChangeType;->$VALUES:[Lcom/google/firestore/v1/TargetChange$TargetChangeType;

    invoke-virtual {v0}, [Lcom/google/firestore/v1/TargetChange$TargetChangeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firestore/v1/TargetChange$TargetChangeType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 2

    .line 134
    sget-object v0, Lcom/google/firestore/v1/TargetChange$TargetChangeType;->UNRECOGNIZED:Lcom/google/firestore/v1/TargetChange$TargetChangeType;

    if-eq p0, v0, :cond_0

    .line 138
    iget v0, p0, Lcom/google/firestore/v1/TargetChange$TargetChangeType;->value:I

    return v0

    .line 135
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
