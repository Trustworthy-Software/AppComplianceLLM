.class public final enum Lcom/google/firestore/admin/v1/Index$IndexField$ValueModeCase;
.super Ljava/lang/Enum;
.source "Index.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/admin/v1/Index$IndexField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ValueModeCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firestore/admin/v1/Index$IndexField$ValueModeCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firestore/admin/v1/Index$IndexField$ValueModeCase;

.field public static final enum ARRAY_CONFIG:Lcom/google/firestore/admin/v1/Index$IndexField$ValueModeCase;

.field public static final enum ORDER:Lcom/google/firestore/admin/v1/Index$IndexField$ValueModeCase;

.field public static final enum VALUEMODE_NOT_SET:Lcom/google/firestore/admin/v1/Index$IndexField$ValueModeCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 672
    new-instance v0, Lcom/google/firestore/admin/v1/Index$IndexField$ValueModeCase;

    const-string v1, "ORDER"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/firestore/admin/v1/Index$IndexField$ValueModeCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firestore/admin/v1/Index$IndexField$ValueModeCase;->ORDER:Lcom/google/firestore/admin/v1/Index$IndexField$ValueModeCase;

    .line 673
    new-instance v1, Lcom/google/firestore/admin/v1/Index$IndexField$ValueModeCase;

    const/4 v4, 0x1

    const/4 v5, 0x3

    const-string v6, "ARRAY_CONFIG"

    invoke-direct {v1, v6, v4, v5}, Lcom/google/firestore/admin/v1/Index$IndexField$ValueModeCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/firestore/admin/v1/Index$IndexField$ValueModeCase;->ARRAY_CONFIG:Lcom/google/firestore/admin/v1/Index$IndexField$ValueModeCase;

    .line 674
    new-instance v4, Lcom/google/firestore/admin/v1/Index$IndexField$ValueModeCase;

    const-string v5, "VALUEMODE_NOT_SET"

    invoke-direct {v4, v5, v3, v2}, Lcom/google/firestore/admin/v1/Index$IndexField$ValueModeCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/firestore/admin/v1/Index$IndexField$ValueModeCase;->VALUEMODE_NOT_SET:Lcom/google/firestore/admin/v1/Index$IndexField$ValueModeCase;

    .line 671
    filled-new-array {v0, v1, v4}, [Lcom/google/firestore/admin/v1/Index$IndexField$ValueModeCase;

    move-result-object v0

    sput-object v0, Lcom/google/firestore/admin/v1/Index$IndexField$ValueModeCase;->$VALUES:[Lcom/google/firestore/admin/v1/Index$IndexField$ValueModeCase;

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

    .line 676
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 677
    iput p3, p0, Lcom/google/firestore/admin/v1/Index$IndexField$ValueModeCase;->value:I

    .line 678
    return-void
.end method

.method public static forNumber(I)Lcom/google/firestore/admin/v1/Index$IndexField$ValueModeCase;
    .locals 1
    .param p0, "value"    # I

    .line 688
    packed-switch p0, :pswitch_data_0

    .line 692
    :pswitch_0
    const/4 v0, 0x0

    return-object v0

    .line 690
    :pswitch_1
    sget-object v0, Lcom/google/firestore/admin/v1/Index$IndexField$ValueModeCase;->ARRAY_CONFIG:Lcom/google/firestore/admin/v1/Index$IndexField$ValueModeCase;

    return-object v0

    .line 689
    :pswitch_2
    sget-object v0, Lcom/google/firestore/admin/v1/Index$IndexField$ValueModeCase;->ORDER:Lcom/google/firestore/admin/v1/Index$IndexField$ValueModeCase;

    return-object v0

    .line 691
    :pswitch_3
    sget-object v0, Lcom/google/firestore/admin/v1/Index$IndexField$ValueModeCase;->VALUEMODE_NOT_SET:Lcom/google/firestore/admin/v1/Index$IndexField$ValueModeCase;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(I)Lcom/google/firestore/admin/v1/Index$IndexField$ValueModeCase;
    .locals 1
    .param p0, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 684
    invoke-static {p0}, Lcom/google/firestore/admin/v1/Index$IndexField$ValueModeCase;->forNumber(I)Lcom/google/firestore/admin/v1/Index$IndexField$ValueModeCase;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firestore/admin/v1/Index$IndexField$ValueModeCase;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 671
    const-class v0, Lcom/google/firestore/admin/v1/Index$IndexField$ValueModeCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/admin/v1/Index$IndexField$ValueModeCase;

    return-object v0
.end method

.method public static values()[Lcom/google/firestore/admin/v1/Index$IndexField$ValueModeCase;
    .locals 1

    .line 671
    sget-object v0, Lcom/google/firestore/admin/v1/Index$IndexField$ValueModeCase;->$VALUES:[Lcom/google/firestore/admin/v1/Index$IndexField$ValueModeCase;

    invoke-virtual {v0}, [Lcom/google/firestore/admin/v1/Index$IndexField$ValueModeCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firestore/admin/v1/Index$IndexField$ValueModeCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 696
    iget v0, p0, Lcom/google/firestore/admin/v1/Index$IndexField$ValueModeCase;->value:I

    return v0
.end method
