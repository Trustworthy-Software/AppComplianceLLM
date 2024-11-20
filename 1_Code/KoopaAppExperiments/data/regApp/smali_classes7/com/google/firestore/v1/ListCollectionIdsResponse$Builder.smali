.class public final Lcom/google/firestore/v1/ListCollectionIdsResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ListCollectionIdsResponse.java"

# interfaces
.implements Lcom/google/firestore/v1/ListCollectionIdsResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/ListCollectionIdsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/ListCollectionIdsResponse;",
        "Lcom/google/firestore/v1/ListCollectionIdsResponse$Builder;",
        ">;",
        "Lcom/google/firestore/v1/ListCollectionIdsResponseOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 313
    invoke-static {}, Lcom/google/firestore/v1/ListCollectionIdsResponse;->access$000()Lcom/google/firestore/v1/ListCollectionIdsResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 314
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/ListCollectionIdsResponse$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firestore/v1/ListCollectionIdsResponse$1;

    .line 306
    invoke-direct {p0}, Lcom/google/firestore/v1/ListCollectionIdsResponse$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllCollectionIds(Ljava/lang/Iterable;)Lcom/google/firestore/v1/ListCollectionIdsResponse$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/firestore/v1/ListCollectionIdsResponse$Builder;"
        }
    .end annotation

    .line 412
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListCollectionIdsResponse$Builder;->copyOnWrite()V

    .line 413
    iget-object v0, p0, Lcom/google/firestore/v1/ListCollectionIdsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListCollectionIdsResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ListCollectionIdsResponse;->access$300(Lcom/google/firestore/v1/ListCollectionIdsResponse;Ljava/lang/Iterable;)V

    .line 414
    return-object p0
.end method

.method public addCollectionIds(Ljava/lang/String;)Lcom/google/firestore/v1/ListCollectionIdsResponse$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 397
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListCollectionIdsResponse$Builder;->copyOnWrite()V

    .line 398
    iget-object v0, p0, Lcom/google/firestore/v1/ListCollectionIdsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListCollectionIdsResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ListCollectionIdsResponse;->access$200(Lcom/google/firestore/v1/ListCollectionIdsResponse;Ljava/lang/String;)V

    .line 399
    return-object p0
.end method

.method public addCollectionIdsBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/ListCollectionIdsResponse$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 440
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListCollectionIdsResponse$Builder;->copyOnWrite()V

    .line 441
    iget-object v0, p0, Lcom/google/firestore/v1/ListCollectionIdsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListCollectionIdsResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ListCollectionIdsResponse;->access$500(Lcom/google/firestore/v1/ListCollectionIdsResponse;Lcom/google/protobuf/ByteString;)V

    .line 442
    return-object p0
.end method

.method public clearCollectionIds()Lcom/google/firestore/v1/ListCollectionIdsResponse$Builder;
    .locals 1

    .line 425
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListCollectionIdsResponse$Builder;->copyOnWrite()V

    .line 426
    iget-object v0, p0, Lcom/google/firestore/v1/ListCollectionIdsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListCollectionIdsResponse;

    invoke-static {v0}, Lcom/google/firestore/v1/ListCollectionIdsResponse;->access$400(Lcom/google/firestore/v1/ListCollectionIdsResponse;)V

    .line 427
    return-object p0
.end method

.method public clearNextPageToken()Lcom/google/firestore/v1/ListCollectionIdsResponse$Builder;
    .locals 1

    .line 494
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListCollectionIdsResponse$Builder;->copyOnWrite()V

    .line 495
    iget-object v0, p0, Lcom/google/firestore/v1/ListCollectionIdsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListCollectionIdsResponse;

    invoke-static {v0}, Lcom/google/firestore/v1/ListCollectionIdsResponse;->access$700(Lcom/google/firestore/v1/ListCollectionIdsResponse;)V

    .line 496
    return-object p0
.end method

.method public getCollectionIds(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 354
    iget-object v0, p0, Lcom/google/firestore/v1/ListCollectionIdsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListCollectionIdsResponse;

    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/ListCollectionIdsResponse;->getCollectionIds(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCollectionIdsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .param p1, "index"    # I

    .line 368
    iget-object v0, p0, Lcom/google/firestore/v1/ListCollectionIdsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListCollectionIdsResponse;

    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/ListCollectionIdsResponse;->getCollectionIdsBytes(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getCollectionIdsCount()I
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/google/firestore/v1/ListCollectionIdsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListCollectionIdsResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListCollectionIdsResponse;->getCollectionIdsCount()I

    move-result v0

    return v0
.end method

.method public getCollectionIdsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 328
    iget-object v0, p0, Lcom/google/firestore/v1/ListCollectionIdsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListCollectionIdsResponse;

    .line 329
    invoke-virtual {v0}, Lcom/google/firestore/v1/ListCollectionIdsResponse;->getCollectionIdsList()Ljava/util/List;

    move-result-object v0

    .line 328
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNextPageToken()Ljava/lang/String;
    .locals 1

    .line 455
    iget-object v0, p0, Lcom/google/firestore/v1/ListCollectionIdsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListCollectionIdsResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListCollectionIdsResponse;->getNextPageToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNextPageTokenBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 468
    iget-object v0, p0, Lcom/google/firestore/v1/ListCollectionIdsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListCollectionIdsResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListCollectionIdsResponse;->getNextPageTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setCollectionIds(ILjava/lang/String;)Lcom/google/firestore/v1/ListCollectionIdsResponse$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 382
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListCollectionIdsResponse$Builder;->copyOnWrite()V

    .line 383
    iget-object v0, p0, Lcom/google/firestore/v1/ListCollectionIdsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListCollectionIdsResponse;

    invoke-static {v0, p1, p2}, Lcom/google/firestore/v1/ListCollectionIdsResponse;->access$100(Lcom/google/firestore/v1/ListCollectionIdsResponse;ILjava/lang/String;)V

    .line 384
    return-object p0
.end method

.method public setNextPageToken(Ljava/lang/String;)Lcom/google/firestore/v1/ListCollectionIdsResponse$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 481
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListCollectionIdsResponse$Builder;->copyOnWrite()V

    .line 482
    iget-object v0, p0, Lcom/google/firestore/v1/ListCollectionIdsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListCollectionIdsResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ListCollectionIdsResponse;->access$600(Lcom/google/firestore/v1/ListCollectionIdsResponse;Ljava/lang/String;)V

    .line 483
    return-object p0
.end method

.method public setNextPageTokenBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/ListCollectionIdsResponse$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 509
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListCollectionIdsResponse$Builder;->copyOnWrite()V

    .line 510
    iget-object v0, p0, Lcom/google/firestore/v1/ListCollectionIdsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListCollectionIdsResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ListCollectionIdsResponse;->access$800(Lcom/google/firestore/v1/ListCollectionIdsResponse;Lcom/google/protobuf/ByteString;)V

    .line 511
    return-object p0
.end method
