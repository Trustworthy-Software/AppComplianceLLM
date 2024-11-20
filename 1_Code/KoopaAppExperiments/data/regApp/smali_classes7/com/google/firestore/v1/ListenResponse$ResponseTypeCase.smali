.class public final enum Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;
.super Ljava/lang/Enum;
.source "ListenResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/ListenResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResponseTypeCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;

.field public static final enum DOCUMENT_CHANGE:Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;

.field public static final enum DOCUMENT_DELETE:Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;

.field public static final enum DOCUMENT_REMOVE:Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;

.field public static final enum FILTER:Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;

.field public static final enum RESPONSETYPE_NOT_SET:Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;

.field public static final enum TARGET_CHANGE:Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 23
    new-instance v0, Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;

    const-string v1, "TARGET_CHANGE"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;->TARGET_CHANGE:Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;

    .line 24
    new-instance v1, Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;

    const-string v4, "DOCUMENT_CHANGE"

    const/4 v5, 0x1

    const/4 v6, 0x3

    invoke-direct {v1, v4, v5, v6}, Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;->DOCUMENT_CHANGE:Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;

    .line 25
    new-instance v4, Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;

    const-string v5, "DOCUMENT_DELETE"

    const/4 v7, 0x4

    invoke-direct {v4, v5, v3, v7}, Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;->DOCUMENT_DELETE:Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;

    .line 26
    new-instance v3, Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;

    const-string v5, "DOCUMENT_REMOVE"

    const/4 v8, 0x6

    invoke-direct {v3, v5, v6, v8}, Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;->DOCUMENT_REMOVE:Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;

    .line 27
    new-instance v5, Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;

    const-string v6, "FILTER"

    const/4 v8, 0x5

    invoke-direct {v5, v6, v7, v8}, Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;->FILTER:Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;

    .line 28
    new-instance v6, Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;

    const-string v7, "RESPONSETYPE_NOT_SET"

    invoke-direct {v6, v7, v8, v2}, Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;->RESPONSETYPE_NOT_SET:Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;

    .line 22
    move-object v2, v4

    move-object v4, v5

    move-object v5, v6

    filled-new-array/range {v0 .. v5}, [Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;

    move-result-object v0

    sput-object v0, Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;->$VALUES:[Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;

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

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput p3, p0, Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;->value:I

    .line 32
    return-void
.end method

.method public static forNumber(I)Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;
    .locals 1
    .param p0, "value"    # I

    .line 42
    packed-switch p0, :pswitch_data_0

    .line 49
    :pswitch_0
    const/4 v0, 0x0

    return-object v0

    .line 46
    :pswitch_1
    sget-object v0, Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;->DOCUMENT_REMOVE:Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;

    return-object v0

    .line 47
    :pswitch_2
    sget-object v0, Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;->FILTER:Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;

    return-object v0

    .line 45
    :pswitch_3
    sget-object v0, Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;->DOCUMENT_DELETE:Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;

    return-object v0

    .line 44
    :pswitch_4
    sget-object v0, Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;->DOCUMENT_CHANGE:Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;

    return-object v0

    .line 43
    :pswitch_5
    sget-object v0, Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;->TARGET_CHANGE:Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;

    return-object v0

    .line 48
    :pswitch_6
    sget-object v0, Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;->RESPONSETYPE_NOT_SET:Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(I)Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;
    .locals 1
    .param p0, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 38
    invoke-static {p0}, Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;->forNumber(I)Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 22
    const-class v0, Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;

    return-object v0
.end method

.method public static values()[Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;
    .locals 1

    .line 22
    sget-object v0, Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;->$VALUES:[Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;

    invoke-virtual {v0}, [Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;->value:I

    return v0
.end method
