.class public final Lcom/google/firestore/bundle/BundleElement$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "BundleElement.java"

# interfaces
.implements Lcom/google/firestore/bundle/BundleElementOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/bundle/BundleElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/bundle/BundleElement;",
        "Lcom/google/firestore/bundle/BundleElement$Builder;",
        ">;",
        "Lcom/google/firestore/bundle/BundleElementOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 370
    invoke-static {}, Lcom/google/firestore/bundle/BundleElement;->access$000()Lcom/google/firestore/bundle/BundleElement;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 371
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/bundle/BundleElement$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firestore/bundle/BundleElement$1;

    .line 363
    invoke-direct {p0}, Lcom/google/firestore/bundle/BundleElement$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearDocument()Lcom/google/firestore/bundle/BundleElement$Builder;
    .locals 1

    .line 573
    invoke-virtual {p0}, Lcom/google/firestore/bundle/BundleElement$Builder;->copyOnWrite()V

    .line 574
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleElement$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundleElement;

    invoke-static {v0}, Lcom/google/firestore/bundle/BundleElement;->access$1300(Lcom/google/firestore/bundle/BundleElement;)V

    .line 575
    return-object p0
.end method

.method public clearDocumentMetadata()Lcom/google/firestore/bundle/BundleElement$Builder;
    .locals 1

    .line 525
    invoke-virtual {p0}, Lcom/google/firestore/bundle/BundleElement$Builder;->copyOnWrite()V

    .line 526
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleElement$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundleElement;

    invoke-static {v0}, Lcom/google/firestore/bundle/BundleElement;->access$1000(Lcom/google/firestore/bundle/BundleElement;)V

    .line 527
    return-object p0
.end method

.method public clearElementType()Lcom/google/firestore/bundle/BundleElement$Builder;
    .locals 1

    .line 380
    invoke-virtual {p0}, Lcom/google/firestore/bundle/BundleElement$Builder;->copyOnWrite()V

    .line 381
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleElement$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundleElement;

    invoke-static {v0}, Lcom/google/firestore/bundle/BundleElement;->access$100(Lcom/google/firestore/bundle/BundleElement;)V

    .line 382
    return-object p0
.end method

.method public clearMetadata()Lcom/google/firestore/bundle/BundleElement$Builder;
    .locals 1

    .line 429
    invoke-virtual {p0}, Lcom/google/firestore/bundle/BundleElement$Builder;->copyOnWrite()V

    .line 430
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleElement$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundleElement;

    invoke-static {v0}, Lcom/google/firestore/bundle/BundleElement;->access$400(Lcom/google/firestore/bundle/BundleElement;)V

    .line 431
    return-object p0
.end method

.method public clearNamedQuery()Lcom/google/firestore/bundle/BundleElement$Builder;
    .locals 1

    .line 477
    invoke-virtual {p0}, Lcom/google/firestore/bundle/BundleElement$Builder;->copyOnWrite()V

    .line 478
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleElement$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundleElement;

    invoke-static {v0}, Lcom/google/firestore/bundle/BundleElement;->access$700(Lcom/google/firestore/bundle/BundleElement;)V

    .line 479
    return-object p0
.end method

.method public getDocument()Lcom/google/firestore/v1/Document;
    .locals 1

    .line 542
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleElement$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundleElement;

    invoke-virtual {v0}, Lcom/google/firestore/bundle/BundleElement;->getDocument()Lcom/google/firestore/v1/Document;

    move-result-object v0

    return-object v0
.end method

.method public getDocumentMetadata()Lcom/google/firestore/bundle/BundledDocumentMetadata;
    .locals 1

    .line 494
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleElement$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundleElement;

    invoke-virtual {v0}, Lcom/google/firestore/bundle/BundleElement;->getDocumentMetadata()Lcom/google/firestore/bundle/BundledDocumentMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getElementTypeCase()Lcom/google/firestore/bundle/BundleElement$ElementTypeCase;
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleElement$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundleElement;

    invoke-virtual {v0}, Lcom/google/firestore/bundle/BundleElement;->getElementTypeCase()Lcom/google/firestore/bundle/BundleElement$ElementTypeCase;

    move-result-object v0

    return-object v0
.end method

.method public getMetadata()Lcom/google/firestore/bundle/BundleMetadata;
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleElement$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundleElement;

    invoke-virtual {v0}, Lcom/google/firestore/bundle/BundleElement;->getMetadata()Lcom/google/firestore/bundle/BundleMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getNamedQuery()Lcom/google/firestore/bundle/NamedQuery;
    .locals 1

    .line 446
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleElement$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundleElement;

    invoke-virtual {v0}, Lcom/google/firestore/bundle/BundleElement;->getNamedQuery()Lcom/google/firestore/bundle/NamedQuery;

    move-result-object v0

    return-object v0
.end method

.method public hasDocument()Z
    .locals 1

    .line 535
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleElement$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundleElement;

    invoke-virtual {v0}, Lcom/google/firestore/bundle/BundleElement;->hasDocument()Z

    move-result v0

    return v0
.end method

.method public hasDocumentMetadata()Z
    .locals 1

    .line 487
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleElement$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundleElement;

    invoke-virtual {v0}, Lcom/google/firestore/bundle/BundleElement;->hasDocumentMetadata()Z

    move-result v0

    return v0
.end method

.method public hasMetadata()Z
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleElement$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundleElement;

    invoke-virtual {v0}, Lcom/google/firestore/bundle/BundleElement;->hasMetadata()Z

    move-result v0

    return v0
.end method

.method public hasNamedQuery()Z
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleElement$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundleElement;

    invoke-virtual {v0}, Lcom/google/firestore/bundle/BundleElement;->hasNamedQuery()Z

    move-result v0

    return v0
.end method

.method public mergeDocument(Lcom/google/firestore/v1/Document;)Lcom/google/firestore/bundle/BundleElement$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Document;

    .line 565
    invoke-virtual {p0}, Lcom/google/firestore/bundle/BundleElement$Builder;->copyOnWrite()V

    .line 566
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleElement$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundleElement;

    invoke-static {v0, p1}, Lcom/google/firestore/bundle/BundleElement;->access$1200(Lcom/google/firestore/bundle/BundleElement;Lcom/google/firestore/v1/Document;)V

    .line 567
    return-object p0
.end method

.method public mergeDocumentMetadata(Lcom/google/firestore/bundle/BundledDocumentMetadata;)Lcom/google/firestore/bundle/BundleElement$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/bundle/BundledDocumentMetadata;

    .line 517
    invoke-virtual {p0}, Lcom/google/firestore/bundle/BundleElement$Builder;->copyOnWrite()V

    .line 518
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleElement$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundleElement;

    invoke-static {v0, p1}, Lcom/google/firestore/bundle/BundleElement;->access$900(Lcom/google/firestore/bundle/BundleElement;Lcom/google/firestore/bundle/BundledDocumentMetadata;)V

    .line 519
    return-object p0
.end method

.method public mergeMetadata(Lcom/google/firestore/bundle/BundleMetadata;)Lcom/google/firestore/bundle/BundleElement$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/bundle/BundleMetadata;

    .line 421
    invoke-virtual {p0}, Lcom/google/firestore/bundle/BundleElement$Builder;->copyOnWrite()V

    .line 422
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleElement$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundleElement;

    invoke-static {v0, p1}, Lcom/google/firestore/bundle/BundleElement;->access$300(Lcom/google/firestore/bundle/BundleElement;Lcom/google/firestore/bundle/BundleMetadata;)V

    .line 423
    return-object p0
.end method

.method public mergeNamedQuery(Lcom/google/firestore/bundle/NamedQuery;)Lcom/google/firestore/bundle/BundleElement$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/bundle/NamedQuery;

    .line 469
    invoke-virtual {p0}, Lcom/google/firestore/bundle/BundleElement$Builder;->copyOnWrite()V

    .line 470
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleElement$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundleElement;

    invoke-static {v0, p1}, Lcom/google/firestore/bundle/BundleElement;->access$600(Lcom/google/firestore/bundle/BundleElement;Lcom/google/firestore/bundle/NamedQuery;)V

    .line 471
    return-object p0
.end method

.method public setDocument(Lcom/google/firestore/v1/Document$Builder;)Lcom/google/firestore/bundle/BundleElement$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/Document$Builder;

    .line 557
    invoke-virtual {p0}, Lcom/google/firestore/bundle/BundleElement$Builder;->copyOnWrite()V

    .line 558
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleElement$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundleElement;

    invoke-virtual {p1}, Lcom/google/firestore/v1/Document$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Document;

    invoke-static {v0, v1}, Lcom/google/firestore/bundle/BundleElement;->access$1100(Lcom/google/firestore/bundle/BundleElement;Lcom/google/firestore/v1/Document;)V

    .line 559
    return-object p0
.end method

.method public setDocument(Lcom/google/firestore/v1/Document;)Lcom/google/firestore/bundle/BundleElement$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Document;

    .line 548
    invoke-virtual {p0}, Lcom/google/firestore/bundle/BundleElement$Builder;->copyOnWrite()V

    .line 549
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleElement$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundleElement;

    invoke-static {v0, p1}, Lcom/google/firestore/bundle/BundleElement;->access$1100(Lcom/google/firestore/bundle/BundleElement;Lcom/google/firestore/v1/Document;)V

    .line 550
    return-object p0
.end method

.method public setDocumentMetadata(Lcom/google/firestore/bundle/BundledDocumentMetadata$Builder;)Lcom/google/firestore/bundle/BundleElement$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/bundle/BundledDocumentMetadata$Builder;

    .line 509
    invoke-virtual {p0}, Lcom/google/firestore/bundle/BundleElement$Builder;->copyOnWrite()V

    .line 510
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleElement$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundleElement;

    invoke-virtual {p1}, Lcom/google/firestore/bundle/BundledDocumentMetadata$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/bundle/BundledDocumentMetadata;

    invoke-static {v0, v1}, Lcom/google/firestore/bundle/BundleElement;->access$800(Lcom/google/firestore/bundle/BundleElement;Lcom/google/firestore/bundle/BundledDocumentMetadata;)V

    .line 511
    return-object p0
.end method

.method public setDocumentMetadata(Lcom/google/firestore/bundle/BundledDocumentMetadata;)Lcom/google/firestore/bundle/BundleElement$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/bundle/BundledDocumentMetadata;

    .line 500
    invoke-virtual {p0}, Lcom/google/firestore/bundle/BundleElement$Builder;->copyOnWrite()V

    .line 501
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleElement$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundleElement;

    invoke-static {v0, p1}, Lcom/google/firestore/bundle/BundleElement;->access$800(Lcom/google/firestore/bundle/BundleElement;Lcom/google/firestore/bundle/BundledDocumentMetadata;)V

    .line 502
    return-object p0
.end method

.method public setMetadata(Lcom/google/firestore/bundle/BundleMetadata$Builder;)Lcom/google/firestore/bundle/BundleElement$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/bundle/BundleMetadata$Builder;

    .line 413
    invoke-virtual {p0}, Lcom/google/firestore/bundle/BundleElement$Builder;->copyOnWrite()V

    .line 414
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleElement$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundleElement;

    invoke-virtual {p1}, Lcom/google/firestore/bundle/BundleMetadata$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/bundle/BundleMetadata;

    invoke-static {v0, v1}, Lcom/google/firestore/bundle/BundleElement;->access$200(Lcom/google/firestore/bundle/BundleElement;Lcom/google/firestore/bundle/BundleMetadata;)V

    .line 415
    return-object p0
.end method

.method public setMetadata(Lcom/google/firestore/bundle/BundleMetadata;)Lcom/google/firestore/bundle/BundleElement$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/bundle/BundleMetadata;

    .line 404
    invoke-virtual {p0}, Lcom/google/firestore/bundle/BundleElement$Builder;->copyOnWrite()V

    .line 405
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleElement$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundleElement;

    invoke-static {v0, p1}, Lcom/google/firestore/bundle/BundleElement;->access$200(Lcom/google/firestore/bundle/BundleElement;Lcom/google/firestore/bundle/BundleMetadata;)V

    .line 406
    return-object p0
.end method

.method public setNamedQuery(Lcom/google/firestore/bundle/NamedQuery$Builder;)Lcom/google/firestore/bundle/BundleElement$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/bundle/NamedQuery$Builder;

    .line 461
    invoke-virtual {p0}, Lcom/google/firestore/bundle/BundleElement$Builder;->copyOnWrite()V

    .line 462
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleElement$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundleElement;

    invoke-virtual {p1}, Lcom/google/firestore/bundle/NamedQuery$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/bundle/NamedQuery;

    invoke-static {v0, v1}, Lcom/google/firestore/bundle/BundleElement;->access$500(Lcom/google/firestore/bundle/BundleElement;Lcom/google/firestore/bundle/NamedQuery;)V

    .line 463
    return-object p0
.end method

.method public setNamedQuery(Lcom/google/firestore/bundle/NamedQuery;)Lcom/google/firestore/bundle/BundleElement$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/bundle/NamedQuery;

    .line 452
    invoke-virtual {p0}, Lcom/google/firestore/bundle/BundleElement$Builder;->copyOnWrite()V

    .line 453
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleElement$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundleElement;

    invoke-static {v0, p1}, Lcom/google/firestore/bundle/BundleElement;->access$500(Lcom/google/firestore/bundle/BundleElement;Lcom/google/firestore/bundle/NamedQuery;)V

    .line 454
    return-object p0
.end method
