.class public final enum Lcom/google/firestore/bundle/BundleElement$ElementTypeCase;
.super Ljava/lang/Enum;
.source "BundleElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/bundle/BundleElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ElementTypeCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firestore/bundle/BundleElement$ElementTypeCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firestore/bundle/BundleElement$ElementTypeCase;

.field public static final enum DOCUMENT:Lcom/google/firestore/bundle/BundleElement$ElementTypeCase;

.field public static final enum DOCUMENT_METADATA:Lcom/google/firestore/bundle/BundleElement$ElementTypeCase;

.field public static final enum ELEMENTTYPE_NOT_SET:Lcom/google/firestore/bundle/BundleElement$ElementTypeCase;

.field public static final enum METADATA:Lcom/google/firestore/bundle/BundleElement$ElementTypeCase;

.field public static final enum NAMED_QUERY:Lcom/google/firestore/bundle/BundleElement$ElementTypeCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 27
    new-instance v0, Lcom/google/firestore/bundle/BundleElement$ElementTypeCase;

    const-string v1, "METADATA"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/firestore/bundle/BundleElement$ElementTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firestore/bundle/BundleElement$ElementTypeCase;->METADATA:Lcom/google/firestore/bundle/BundleElement$ElementTypeCase;

    .line 28
    new-instance v1, Lcom/google/firestore/bundle/BundleElement$ElementTypeCase;

    const-string v4, "NAMED_QUERY"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/google/firestore/bundle/BundleElement$ElementTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/firestore/bundle/BundleElement$ElementTypeCase;->NAMED_QUERY:Lcom/google/firestore/bundle/BundleElement$ElementTypeCase;

    .line 29
    new-instance v3, Lcom/google/firestore/bundle/BundleElement$ElementTypeCase;

    const-string v4, "DOCUMENT_METADATA"

    const/4 v6, 0x3

    invoke-direct {v3, v4, v5, v6}, Lcom/google/firestore/bundle/BundleElement$ElementTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/firestore/bundle/BundleElement$ElementTypeCase;->DOCUMENT_METADATA:Lcom/google/firestore/bundle/BundleElement$ElementTypeCase;

    .line 30
    new-instance v4, Lcom/google/firestore/bundle/BundleElement$ElementTypeCase;

    const-string v5, "DOCUMENT"

    const/4 v7, 0x4

    invoke-direct {v4, v5, v6, v7}, Lcom/google/firestore/bundle/BundleElement$ElementTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/firestore/bundle/BundleElement$ElementTypeCase;->DOCUMENT:Lcom/google/firestore/bundle/BundleElement$ElementTypeCase;

    .line 31
    new-instance v5, Lcom/google/firestore/bundle/BundleElement$ElementTypeCase;

    const-string v6, "ELEMENTTYPE_NOT_SET"

    invoke-direct {v5, v6, v7, v2}, Lcom/google/firestore/bundle/BundleElement$ElementTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/firestore/bundle/BundleElement$ElementTypeCase;->ELEMENTTYPE_NOT_SET:Lcom/google/firestore/bundle/BundleElement$ElementTypeCase;

    .line 26
    filled-new-array {v0, v1, v3, v4, v5}, [Lcom/google/firestore/bundle/BundleElement$ElementTypeCase;

    move-result-object v0

    sput-object v0, Lcom/google/firestore/bundle/BundleElement$ElementTypeCase;->$VALUES:[Lcom/google/firestore/bundle/BundleElement$ElementTypeCase;

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

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    iput p3, p0, Lcom/google/firestore/bundle/BundleElement$ElementTypeCase;->value:I

    .line 35
    return-void
.end method

.method public static forNumber(I)Lcom/google/firestore/bundle/BundleElement$ElementTypeCase;
    .locals 1
    .param p0, "value"    # I

    .line 45
    packed-switch p0, :pswitch_data_0

    .line 51
    const/4 v0, 0x0

    return-object v0

    .line 49
    :pswitch_0
    sget-object v0, Lcom/google/firestore/bundle/BundleElement$ElementTypeCase;->DOCUMENT:Lcom/google/firestore/bundle/BundleElement$ElementTypeCase;

    return-object v0

    .line 48
    :pswitch_1
    sget-object v0, Lcom/google/firestore/bundle/BundleElement$ElementTypeCase;->DOCUMENT_METADATA:Lcom/google/firestore/bundle/BundleElement$ElementTypeCase;

    return-object v0

    .line 47
    :pswitch_2
    sget-object v0, Lcom/google/firestore/bundle/BundleElement$ElementTypeCase;->NAMED_QUERY:Lcom/google/firestore/bundle/BundleElement$ElementTypeCase;

    return-object v0

    .line 46
    :pswitch_3
    sget-object v0, Lcom/google/firestore/bundle/BundleElement$ElementTypeCase;->METADATA:Lcom/google/firestore/bundle/BundleElement$ElementTypeCase;

    return-object v0

    .line 50
    :pswitch_4
    sget-object v0, Lcom/google/firestore/bundle/BundleElement$ElementTypeCase;->ELEMENTTYPE_NOT_SET:Lcom/google/firestore/bundle/BundleElement$ElementTypeCase;

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

.method public static valueOf(I)Lcom/google/firestore/bundle/BundleElement$ElementTypeCase;
    .locals 1
    .param p0, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 41
    invoke-static {p0}, Lcom/google/firestore/bundle/BundleElement$ElementTypeCase;->forNumber(I)Lcom/google/firestore/bundle/BundleElement$ElementTypeCase;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firestore/bundle/BundleElement$ElementTypeCase;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 26
    const-class v0, Lcom/google/firestore/bundle/BundleElement$ElementTypeCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/BundleElement$ElementTypeCase;

    return-object v0
.end method

.method public static values()[Lcom/google/firestore/bundle/BundleElement$ElementTypeCase;
    .locals 1

    .line 26
    sget-object v0, Lcom/google/firestore/bundle/BundleElement$ElementTypeCase;->$VALUES:[Lcom/google/firestore/bundle/BundleElement$ElementTypeCase;

    invoke-virtual {v0}, [Lcom/google/firestore/bundle/BundleElement$ElementTypeCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firestore/bundle/BundleElement$ElementTypeCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/google/firestore/bundle/BundleElement$ElementTypeCase;->value:I

    return v0
.end method
