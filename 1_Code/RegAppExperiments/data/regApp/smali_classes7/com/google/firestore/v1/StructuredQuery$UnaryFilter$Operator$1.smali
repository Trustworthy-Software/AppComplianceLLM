.class Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator$1;
.super Ljava/lang/Object;
.source "StructuredQuery.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap<",
        "Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 3319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findValueByNumber(I)Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;
    .locals 1
    .param p1, "number"    # I

    .line 3322
    invoke-static {p1}, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;->forNumber(I)Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .locals 0

    .line 3319
    invoke-virtual {p0, p1}, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator$1;->findValueByNumber(I)Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;

    move-result-object p1

    return-object p1
.end method
