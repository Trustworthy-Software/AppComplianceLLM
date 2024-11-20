.class public final Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "DatastoreTestTrace.java"

# interfaces
.implements Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocumentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument;",
        "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument$Builder;",
        ">;",
        "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocumentOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1547
    invoke-static {}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument;->access$1800()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1548
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$1;

    .line 1540
    invoke-direct {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearRequest()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument$Builder;
    .locals 1

    .line 1593
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument$Builder;->copyOnWrite()V

    .line 1594
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument;

    invoke-static {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument;->access$2100(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument;)V

    .line 1595
    return-object p0
.end method

.method public clearResponse()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument$Builder;
    .locals 1

    .line 1640
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument$Builder;->copyOnWrite()V

    .line 1641
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument;

    invoke-static {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument;->access$2400(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument;)V

    .line 1642
    return-object p0
.end method

.method public getRequest()Lcom/google/firestore/v1/GetDocumentRequest;
    .locals 1

    .line 1563
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument;

    invoke-virtual {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument;->getRequest()Lcom/google/firestore/v1/GetDocumentRequest;

    move-result-object v0

    return-object v0
.end method

.method public getResponse()Lcom/google/firestore/v1/Document;
    .locals 1

    .line 1610
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument;

    invoke-virtual {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument;->getResponse()Lcom/google/firestore/v1/Document;

    move-result-object v0

    return-object v0
.end method

.method public hasRequest()Z
    .locals 1

    .line 1556
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument;

    invoke-virtual {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument;->hasRequest()Z

    move-result v0

    return v0
.end method

.method public hasResponse()Z
    .locals 1

    .line 1603
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument;

    invoke-virtual {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument;->hasResponse()Z

    move-result v0

    return v0
.end method

.method public mergeRequest(Lcom/google/firestore/v1/GetDocumentRequest;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/GetDocumentRequest;

    .line 1586
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument$Builder;->copyOnWrite()V

    .line 1587
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument;

    invoke-static {v0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument;->access$2000(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument;Lcom/google/firestore/v1/GetDocumentRequest;)V

    .line 1588
    return-object p0
.end method

.method public mergeResponse(Lcom/google/firestore/v1/Document;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Document;

    .line 1633
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument$Builder;->copyOnWrite()V

    .line 1634
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument;

    invoke-static {v0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument;->access$2300(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument;Lcom/google/firestore/v1/Document;)V

    .line 1635
    return-object p0
.end method

.method public setRequest(Lcom/google/firestore/v1/GetDocumentRequest$Builder;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/GetDocumentRequest$Builder;

    .line 1578
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument$Builder;->copyOnWrite()V

    .line 1579
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument;

    invoke-virtual {p1}, Lcom/google/firestore/v1/GetDocumentRequest$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/GetDocumentRequest;

    invoke-static {v0, v1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument;->access$1900(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument;Lcom/google/firestore/v1/GetDocumentRequest;)V

    .line 1580
    return-object p0
.end method

.method public setRequest(Lcom/google/firestore/v1/GetDocumentRequest;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/GetDocumentRequest;

    .line 1569
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument$Builder;->copyOnWrite()V

    .line 1570
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument;

    invoke-static {v0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument;->access$1900(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument;Lcom/google/firestore/v1/GetDocumentRequest;)V

    .line 1571
    return-object p0
.end method

.method public setResponse(Lcom/google/firestore/v1/Document$Builder;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/Document$Builder;

    .line 1625
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument$Builder;->copyOnWrite()V

    .line 1626
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument;

    invoke-virtual {p1}, Lcom/google/firestore/v1/Document$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Document;

    invoke-static {v0, v1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument;->access$2200(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument;Lcom/google/firestore/v1/Document;)V

    .line 1627
    return-object p0
.end method

.method public setResponse(Lcom/google/firestore/v1/Document;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Document;

    .line 1616
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument$Builder;->copyOnWrite()V

    .line 1617
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument;

    invoke-static {v0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument;->access$2200(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument;Lcom/google/firestore/v1/Document;)V

    .line 1618
    return-object p0
.end method
