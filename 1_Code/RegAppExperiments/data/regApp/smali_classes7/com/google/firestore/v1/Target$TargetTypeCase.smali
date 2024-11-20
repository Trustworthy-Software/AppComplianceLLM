.class public final enum Lcom/google/firestore/v1/Target$TargetTypeCase;
.super Ljava/lang/Enum;
.source "Target.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/Target;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TargetTypeCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firestore/v1/Target$TargetTypeCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firestore/v1/Target$TargetTypeCase;

.field public static final enum DOCUMENTS:Lcom/google/firestore/v1/Target$TargetTypeCase;

.field public static final enum QUERY:Lcom/google/firestore/v1/Target$TargetTypeCase;

.field public static final enum TARGETTYPE_NOT_SET:Lcom/google/firestore/v1/Target$TargetTypeCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1207
    new-instance v0, Lcom/google/firestore/v1/Target$TargetTypeCase;

    const-string v1, "QUERY"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/firestore/v1/Target$TargetTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firestore/v1/Target$TargetTypeCase;->QUERY:Lcom/google/firestore/v1/Target$TargetTypeCase;

    .line 1208
    new-instance v1, Lcom/google/firestore/v1/Target$TargetTypeCase;

    const/4 v4, 0x1

    const/4 v5, 0x3

    const-string v6, "DOCUMENTS"

    invoke-direct {v1, v6, v4, v5}, Lcom/google/firestore/v1/Target$TargetTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/firestore/v1/Target$TargetTypeCase;->DOCUMENTS:Lcom/google/firestore/v1/Target$TargetTypeCase;

    .line 1209
    new-instance v4, Lcom/google/firestore/v1/Target$TargetTypeCase;

    const-string v5, "TARGETTYPE_NOT_SET"

    invoke-direct {v4, v5, v3, v2}, Lcom/google/firestore/v1/Target$TargetTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/firestore/v1/Target$TargetTypeCase;->TARGETTYPE_NOT_SET:Lcom/google/firestore/v1/Target$TargetTypeCase;

    .line 1206
    filled-new-array {v0, v1, v4}, [Lcom/google/firestore/v1/Target$TargetTypeCase;

    move-result-object v0

    sput-object v0, Lcom/google/firestore/v1/Target$TargetTypeCase;->$VALUES:[Lcom/google/firestore/v1/Target$TargetTypeCase;

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

    .line 1211
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1212
    iput p3, p0, Lcom/google/firestore/v1/Target$TargetTypeCase;->value:I

    .line 1213
    return-void
.end method

.method public static forNumber(I)Lcom/google/firestore/v1/Target$TargetTypeCase;
    .locals 1
    .param p0, "value"    # I

    .line 1223
    packed-switch p0, :pswitch_data_0

    .line 1227
    :pswitch_0
    const/4 v0, 0x0

    return-object v0

    .line 1225
    :pswitch_1
    sget-object v0, Lcom/google/firestore/v1/Target$TargetTypeCase;->DOCUMENTS:Lcom/google/firestore/v1/Target$TargetTypeCase;

    return-object v0

    .line 1224
    :pswitch_2
    sget-object v0, Lcom/google/firestore/v1/Target$TargetTypeCase;->QUERY:Lcom/google/firestore/v1/Target$TargetTypeCase;

    return-object v0

    .line 1226
    :pswitch_3
    sget-object v0, Lcom/google/firestore/v1/Target$TargetTypeCase;->TARGETTYPE_NOT_SET:Lcom/google/firestore/v1/Target$TargetTypeCase;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(I)Lcom/google/firestore/v1/Target$TargetTypeCase;
    .locals 1
    .param p0, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1219
    invoke-static {p0}, Lcom/google/firestore/v1/Target$TargetTypeCase;->forNumber(I)Lcom/google/firestore/v1/Target$TargetTypeCase;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firestore/v1/Target$TargetTypeCase;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 1206
    const-class v0, Lcom/google/firestore/v1/Target$TargetTypeCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Target$TargetTypeCase;

    return-object v0
.end method

.method public static values()[Lcom/google/firestore/v1/Target$TargetTypeCase;
    .locals 1

    .line 1206
    sget-object v0, Lcom/google/firestore/v1/Target$TargetTypeCase;->$VALUES:[Lcom/google/firestore/v1/Target$TargetTypeCase;

    invoke-virtual {v0}, [Lcom/google/firestore/v1/Target$TargetTypeCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firestore/v1/Target$TargetTypeCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 1231
    iget v0, p0, Lcom/google/firestore/v1/Target$TargetTypeCase;->value:I

    return v0
.end method
