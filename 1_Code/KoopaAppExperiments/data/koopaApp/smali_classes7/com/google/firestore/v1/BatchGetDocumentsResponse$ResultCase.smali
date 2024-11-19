.class public final enum Lcom/google/firestore/v1/BatchGetDocumentsResponse$ResultCase;
.super Ljava/lang/Enum;
.source "BatchGetDocumentsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/BatchGetDocumentsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResultCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firestore/v1/BatchGetDocumentsResponse$ResultCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firestore/v1/BatchGetDocumentsResponse$ResultCase;

.field public static final enum FOUND:Lcom/google/firestore/v1/BatchGetDocumentsResponse$ResultCase;

.field public static final enum MISSING:Lcom/google/firestore/v1/BatchGetDocumentsResponse$ResultCase;

.field public static final enum RESULT_NOT_SET:Lcom/google/firestore/v1/BatchGetDocumentsResponse$ResultCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 24
    new-instance v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse$ResultCase;

    const-string v1, "FOUND"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/firestore/v1/BatchGetDocumentsResponse$ResultCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse$ResultCase;->FOUND:Lcom/google/firestore/v1/BatchGetDocumentsResponse$ResultCase;

    .line 25
    new-instance v1, Lcom/google/firestore/v1/BatchGetDocumentsResponse$ResultCase;

    const-string v4, "MISSING"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/google/firestore/v1/BatchGetDocumentsResponse$ResultCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/firestore/v1/BatchGetDocumentsResponse$ResultCase;->MISSING:Lcom/google/firestore/v1/BatchGetDocumentsResponse$ResultCase;

    .line 26
    new-instance v3, Lcom/google/firestore/v1/BatchGetDocumentsResponse$ResultCase;

    const-string v4, "RESULT_NOT_SET"

    invoke-direct {v3, v4, v5, v2}, Lcom/google/firestore/v1/BatchGetDocumentsResponse$ResultCase;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/firestore/v1/BatchGetDocumentsResponse$ResultCase;->RESULT_NOT_SET:Lcom/google/firestore/v1/BatchGetDocumentsResponse$ResultCase;

    .line 23
    filled-new-array {v0, v1, v3}, [Lcom/google/firestore/v1/BatchGetDocumentsResponse$ResultCase;

    move-result-object v0

    sput-object v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse$ResultCase;->$VALUES:[Lcom/google/firestore/v1/BatchGetDocumentsResponse$ResultCase;

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

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput p3, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse$ResultCase;->value:I

    .line 30
    return-void
.end method

.method public static forNumber(I)Lcom/google/firestore/v1/BatchGetDocumentsResponse$ResultCase;
    .locals 1
    .param p0, "value"    # I

    .line 40
    packed-switch p0, :pswitch_data_0

    .line 44
    const/4 v0, 0x0

    return-object v0

    .line 42
    :pswitch_0
    sget-object v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse$ResultCase;->MISSING:Lcom/google/firestore/v1/BatchGetDocumentsResponse$ResultCase;

    return-object v0

    .line 41
    :pswitch_1
    sget-object v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse$ResultCase;->FOUND:Lcom/google/firestore/v1/BatchGetDocumentsResponse$ResultCase;

    return-object v0

    .line 43
    :pswitch_2
    sget-object v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse$ResultCase;->RESULT_NOT_SET:Lcom/google/firestore/v1/BatchGetDocumentsResponse$ResultCase;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(I)Lcom/google/firestore/v1/BatchGetDocumentsResponse$ResultCase;
    .locals 1
    .param p0, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 36
    invoke-static {p0}, Lcom/google/firestore/v1/BatchGetDocumentsResponse$ResultCase;->forNumber(I)Lcom/google/firestore/v1/BatchGetDocumentsResponse$ResultCase;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firestore/v1/BatchGetDocumentsResponse$ResultCase;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 23
    const-class v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse$ResultCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse$ResultCase;

    return-object v0
.end method

.method public static values()[Lcom/google/firestore/v1/BatchGetDocumentsResponse$ResultCase;
    .locals 1

    .line 23
    sget-object v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse$ResultCase;->$VALUES:[Lcom/google/firestore/v1/BatchGetDocumentsResponse$ResultCase;

    invoke-virtual {v0}, [Lcom/google/firestore/v1/BatchGetDocumentsResponse$ResultCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firestore/v1/BatchGetDocumentsResponse$ResultCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse$ResultCase;->value:I

    return v0
.end method
