.class public final Lcom/google/firestore/v1/ListDocumentsResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ListDocumentsResponse.java"

# interfaces
.implements Lcom/google/firestore/v1/ListDocumentsResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/ListDocumentsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/ListDocumentsResponse;",
        "Lcom/google/firestore/v1/ListDocumentsResponse$Builder;",
        ">;",
        "Lcom/google/firestore/v1/ListDocumentsResponseOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 322
    invoke-static {}, Lcom/google/firestore/v1/ListDocumentsResponse;->access$000()Lcom/google/firestore/v1/ListDocumentsResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 323
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/ListDocumentsResponse$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firestore/v1/ListDocumentsResponse$1;

    .line 315
    invoke-direct {p0}, Lcom/google/firestore/v1/ListDocumentsResponse$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllDocuments(Ljava/lang/Iterable;)Lcom/google/firestore/v1/ListDocumentsResponse$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firestore/v1/Document;",
            ">;)",
            "Lcom/google/firestore/v1/ListDocumentsResponse$Builder;"
        }
    .end annotation

    .line 447
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/firestore/v1/Document;>;"
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListDocumentsResponse$Builder;->copyOnWrite()V

    .line 448
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ListDocumentsResponse;->access$400(Lcom/google/firestore/v1/ListDocumentsResponse;Ljava/lang/Iterable;)V

    .line 449
    return-object p0
.end method

.method public addDocuments(ILcom/google/firestore/v1/Document$Builder;)Lcom/google/firestore/v1/ListDocumentsResponse$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/firestore/v1/Document$Builder;

    .line 433
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListDocumentsResponse$Builder;->copyOnWrite()V

    .line 434
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsResponse;

    .line 435
    invoke-virtual {p2}, Lcom/google/firestore/v1/Document$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Document;

    .line 434
    invoke-static {v0, p1, v1}, Lcom/google/firestore/v1/ListDocumentsResponse;->access$300(Lcom/google/firestore/v1/ListDocumentsResponse;ILcom/google/firestore/v1/Document;)V

    .line 436
    return-object p0
.end method

.method public addDocuments(ILcom/google/firestore/v1/Document;)Lcom/google/firestore/v1/ListDocumentsResponse$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firestore/v1/Document;

    .line 407
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListDocumentsResponse$Builder;->copyOnWrite()V

    .line 408
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsResponse;

    invoke-static {v0, p1, p2}, Lcom/google/firestore/v1/ListDocumentsResponse;->access$300(Lcom/google/firestore/v1/ListDocumentsResponse;ILcom/google/firestore/v1/Document;)V

    .line 409
    return-object p0
.end method

.method public addDocuments(Lcom/google/firestore/v1/Document$Builder;)Lcom/google/firestore/v1/ListDocumentsResponse$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/Document$Builder;

    .line 420
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListDocumentsResponse$Builder;->copyOnWrite()V

    .line 421
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsResponse;

    invoke-virtual {p1}, Lcom/google/firestore/v1/Document$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Document;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/ListDocumentsResponse;->access$200(Lcom/google/firestore/v1/ListDocumentsResponse;Lcom/google/firestore/v1/Document;)V

    .line 422
    return-object p0
.end method

.method public addDocuments(Lcom/google/firestore/v1/Document;)Lcom/google/firestore/v1/ListDocumentsResponse$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Document;

    .line 394
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListDocumentsResponse$Builder;->copyOnWrite()V

    .line 395
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ListDocumentsResponse;->access$200(Lcom/google/firestore/v1/ListDocumentsResponse;Lcom/google/firestore/v1/Document;)V

    .line 396
    return-object p0
.end method

.method public clearDocuments()Lcom/google/firestore/v1/ListDocumentsResponse$Builder;
    .locals 1

    .line 459
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListDocumentsResponse$Builder;->copyOnWrite()V

    .line 460
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsResponse;

    invoke-static {v0}, Lcom/google/firestore/v1/ListDocumentsResponse;->access$500(Lcom/google/firestore/v1/ListDocumentsResponse;)V

    .line 461
    return-object p0
.end method

.method public clearNextPageToken()Lcom/google/firestore/v1/ListDocumentsResponse$Builder;
    .locals 1

    .line 525
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListDocumentsResponse$Builder;->copyOnWrite()V

    .line 526
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsResponse;

    invoke-static {v0}, Lcom/google/firestore/v1/ListDocumentsResponse;->access$800(Lcom/google/firestore/v1/ListDocumentsResponse;)V

    .line 527
    return-object p0
.end method

.method public getDocuments(I)Lcom/google/firestore/v1/Document;
    .locals 1
    .param p1, "index"    # I

    .line 357
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsResponse;

    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/ListDocumentsResponse;->getDocuments(I)Lcom/google/firestore/v1/Document;

    move-result-object v0

    return-object v0
.end method

.method public getDocumentsCount()I
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListDocumentsResponse;->getDocumentsCount()I

    move-result v0

    return v0
.end method

.method public getDocumentsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firestore/v1/Document;",
            ">;"
        }
    .end annotation

    .line 335
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsResponse;

    .line 336
    invoke-virtual {v0}, Lcom/google/firestore/v1/ListDocumentsResponse;->getDocumentsList()Ljava/util/List;

    move-result-object v0

    .line 335
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNextPageToken()Ljava/lang/String;
    .locals 1

    .line 486
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListDocumentsResponse;->getNextPageToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNextPageTokenBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 499
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListDocumentsResponse;->getNextPageTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public removeDocuments(I)Lcom/google/firestore/v1/ListDocumentsResponse$Builder;
    .locals 1
    .param p1, "index"    # I

    .line 471
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListDocumentsResponse$Builder;->copyOnWrite()V

    .line 472
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ListDocumentsResponse;->access$600(Lcom/google/firestore/v1/ListDocumentsResponse;I)V

    .line 473
    return-object p0
.end method

.method public setDocuments(ILcom/google/firestore/v1/Document$Builder;)Lcom/google/firestore/v1/ListDocumentsResponse$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/firestore/v1/Document$Builder;

    .line 381
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListDocumentsResponse$Builder;->copyOnWrite()V

    .line 382
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsResponse;

    .line 383
    invoke-virtual {p2}, Lcom/google/firestore/v1/Document$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Document;

    .line 382
    invoke-static {v0, p1, v1}, Lcom/google/firestore/v1/ListDocumentsResponse;->access$100(Lcom/google/firestore/v1/ListDocumentsResponse;ILcom/google/firestore/v1/Document;)V

    .line 384
    return-object p0
.end method

.method public setDocuments(ILcom/google/firestore/v1/Document;)Lcom/google/firestore/v1/ListDocumentsResponse$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firestore/v1/Document;

    .line 368
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListDocumentsResponse$Builder;->copyOnWrite()V

    .line 369
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsResponse;

    invoke-static {v0, p1, p2}, Lcom/google/firestore/v1/ListDocumentsResponse;->access$100(Lcom/google/firestore/v1/ListDocumentsResponse;ILcom/google/firestore/v1/Document;)V

    .line 370
    return-object p0
.end method

.method public setNextPageToken(Ljava/lang/String;)Lcom/google/firestore/v1/ListDocumentsResponse$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 512
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListDocumentsResponse$Builder;->copyOnWrite()V

    .line 513
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ListDocumentsResponse;->access$700(Lcom/google/firestore/v1/ListDocumentsResponse;Ljava/lang/String;)V

    .line 514
    return-object p0
.end method

.method public setNextPageTokenBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/ListDocumentsResponse$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 540
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListDocumentsResponse$Builder;->copyOnWrite()V

    .line 541
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ListDocumentsResponse;->access$900(Lcom/google/firestore/v1/ListDocumentsResponse;Lcom/google/protobuf/ByteString;)V

    .line 542
    return-object p0
.end method
