.class public final Lcom/google/firestore/v1/ArrayValue$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ArrayValue.java"

# interfaces
.implements Lcom/google/firestore/v1/ArrayValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/ArrayValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/ArrayValue;",
        "Lcom/google/firestore/v1/ArrayValue$Builder;",
        ">;",
        "Lcom/google/firestore/v1/ArrayValueOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 254
    invoke-static {}, Lcom/google/firestore/v1/ArrayValue;->access$000()Lcom/google/firestore/v1/ArrayValue;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 255
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/ArrayValue$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firestore/v1/ArrayValue$1;

    .line 247
    invoke-direct {p0}, Lcom/google/firestore/v1/ArrayValue$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllValues(Ljava/lang/Iterable;)Lcom/google/firestore/v1/ArrayValue$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firestore/v1/Value;",
            ">;)",
            "Lcom/google/firestore/v1/ArrayValue$Builder;"
        }
    .end annotation

    .line 379
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/firestore/v1/Value;>;"
    invoke-virtual {p0}, Lcom/google/firestore/v1/ArrayValue$Builder;->copyOnWrite()V

    .line 380
    iget-object v0, p0, Lcom/google/firestore/v1/ArrayValue$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ArrayValue;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ArrayValue;->access$400(Lcom/google/firestore/v1/ArrayValue;Ljava/lang/Iterable;)V

    .line 381
    return-object p0
.end method

.method public addValues(ILcom/google/firestore/v1/Value$Builder;)Lcom/google/firestore/v1/ArrayValue$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/firestore/v1/Value$Builder;

    .line 365
    invoke-virtual {p0}, Lcom/google/firestore/v1/ArrayValue$Builder;->copyOnWrite()V

    .line 366
    iget-object v0, p0, Lcom/google/firestore/v1/ArrayValue$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ArrayValue;

    .line 367
    invoke-virtual {p2}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Value;

    .line 366
    invoke-static {v0, p1, v1}, Lcom/google/firestore/v1/ArrayValue;->access$300(Lcom/google/firestore/v1/ArrayValue;ILcom/google/firestore/v1/Value;)V

    .line 368
    return-object p0
.end method

.method public addValues(ILcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/ArrayValue$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firestore/v1/Value;

    .line 339
    invoke-virtual {p0}, Lcom/google/firestore/v1/ArrayValue$Builder;->copyOnWrite()V

    .line 340
    iget-object v0, p0, Lcom/google/firestore/v1/ArrayValue$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ArrayValue;

    invoke-static {v0, p1, p2}, Lcom/google/firestore/v1/ArrayValue;->access$300(Lcom/google/firestore/v1/ArrayValue;ILcom/google/firestore/v1/Value;)V

    .line 341
    return-object p0
.end method

.method public addValues(Lcom/google/firestore/v1/Value$Builder;)Lcom/google/firestore/v1/ArrayValue$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/Value$Builder;

    .line 352
    invoke-virtual {p0}, Lcom/google/firestore/v1/ArrayValue$Builder;->copyOnWrite()V

    .line 353
    iget-object v0, p0, Lcom/google/firestore/v1/ArrayValue$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ArrayValue;

    invoke-virtual {p1}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Value;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/ArrayValue;->access$200(Lcom/google/firestore/v1/ArrayValue;Lcom/google/firestore/v1/Value;)V

    .line 354
    return-object p0
.end method

.method public addValues(Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/ArrayValue$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Value;

    .line 326
    invoke-virtual {p0}, Lcom/google/firestore/v1/ArrayValue$Builder;->copyOnWrite()V

    .line 327
    iget-object v0, p0, Lcom/google/firestore/v1/ArrayValue$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ArrayValue;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ArrayValue;->access$200(Lcom/google/firestore/v1/ArrayValue;Lcom/google/firestore/v1/Value;)V

    .line 328
    return-object p0
.end method

.method public clearValues()Lcom/google/firestore/v1/ArrayValue$Builder;
    .locals 1

    .line 391
    invoke-virtual {p0}, Lcom/google/firestore/v1/ArrayValue$Builder;->copyOnWrite()V

    .line 392
    iget-object v0, p0, Lcom/google/firestore/v1/ArrayValue$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ArrayValue;

    invoke-static {v0}, Lcom/google/firestore/v1/ArrayValue;->access$500(Lcom/google/firestore/v1/ArrayValue;)V

    .line 393
    return-object p0
.end method

.method public getValues(I)Lcom/google/firestore/v1/Value;
    .locals 1
    .param p1, "index"    # I

    .line 289
    iget-object v0, p0, Lcom/google/firestore/v1/ArrayValue$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ArrayValue;

    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/ArrayValue;->getValues(I)Lcom/google/firestore/v1/Value;

    move-result-object v0

    return-object v0
.end method

.method public getValuesCount()I
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/google/firestore/v1/ArrayValue$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ArrayValue;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ArrayValue;->getValuesCount()I

    move-result v0

    return v0
.end method

.method public getValuesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lcom/google/firestore/v1/ArrayValue$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ArrayValue;

    .line 268
    invoke-virtual {v0}, Lcom/google/firestore/v1/ArrayValue;->getValuesList()Ljava/util/List;

    move-result-object v0

    .line 267
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeValues(I)Lcom/google/firestore/v1/ArrayValue$Builder;
    .locals 1
    .param p1, "index"    # I

    .line 403
    invoke-virtual {p0}, Lcom/google/firestore/v1/ArrayValue$Builder;->copyOnWrite()V

    .line 404
    iget-object v0, p0, Lcom/google/firestore/v1/ArrayValue$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ArrayValue;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ArrayValue;->access$600(Lcom/google/firestore/v1/ArrayValue;I)V

    .line 405
    return-object p0
.end method

.method public setValues(ILcom/google/firestore/v1/Value$Builder;)Lcom/google/firestore/v1/ArrayValue$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/firestore/v1/Value$Builder;

    .line 313
    invoke-virtual {p0}, Lcom/google/firestore/v1/ArrayValue$Builder;->copyOnWrite()V

    .line 314
    iget-object v0, p0, Lcom/google/firestore/v1/ArrayValue$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ArrayValue;

    .line 315
    invoke-virtual {p2}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Value;

    .line 314
    invoke-static {v0, p1, v1}, Lcom/google/firestore/v1/ArrayValue;->access$100(Lcom/google/firestore/v1/ArrayValue;ILcom/google/firestore/v1/Value;)V

    .line 316
    return-object p0
.end method

.method public setValues(ILcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/ArrayValue$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firestore/v1/Value;

    .line 300
    invoke-virtual {p0}, Lcom/google/firestore/v1/ArrayValue$Builder;->copyOnWrite()V

    .line 301
    iget-object v0, p0, Lcom/google/firestore/v1/ArrayValue$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ArrayValue;

    invoke-static {v0, p1, p2}, Lcom/google/firestore/v1/ArrayValue;->access$100(Lcom/google/firestore/v1/ArrayValue;ILcom/google/firestore/v1/Value;)V

    .line 302
    return-object p0
.end method
