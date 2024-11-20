.class public final Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "DatastoreTestTrace.java"

# interfaces
.implements Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;",
        "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto$Builder;",
        ">;",
        "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProtoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 404
    invoke-static {}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;->access$000()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 405
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$1;

    .line 397
    invoke-direct {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCanonicalCode()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto$Builder;
    .locals 1

    .line 627
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto$Builder;->copyOnWrite()V

    .line 628
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;

    invoke-static {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;->access$1000(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;)V

    .line 629
    return-object p0
.end method

.method public clearCode()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto$Builder;
    .locals 1

    .line 446
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto$Builder;->copyOnWrite()V

    .line 447
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;

    invoke-static {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;->access$200(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;)V

    .line 448
    return-object p0
.end method

.method public clearMessage()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto$Builder;
    .locals 1

    .line 569
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto$Builder;->copyOnWrite()V

    .line 570
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;

    invoke-static {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;->access$700(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;)V

    .line 571
    return-object p0
.end method

.method public clearSpace()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto$Builder;
    .locals 1

    .line 500
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto$Builder;->copyOnWrite()V

    .line 501
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;

    invoke-static {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;->access$400(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;)V

    .line 502
    return-object p0
.end method

.method public getCanonicalCode()I
    .locals 1

    .line 600
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;

    invoke-virtual {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;->getCanonicalCode()I

    move-result v0

    return v0
.end method

.method public getCode()I
    .locals 1

    .line 419
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;

    invoke-virtual {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;->getCode()I

    move-result v0

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 530
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;

    invoke-virtual {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 543
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;

    invoke-virtual {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;->getMessageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSpace()Ljava/lang/String;
    .locals 1

    .line 461
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;

    invoke-virtual {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;->getSpace()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSpaceBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 474
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;

    invoke-virtual {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;->getSpaceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setCanonicalCode(I)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 613
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto$Builder;->copyOnWrite()V

    .line 614
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;

    invoke-static {v0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;->access$900(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;I)V

    .line 615
    return-object p0
.end method

.method public setCode(I)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 432
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto$Builder;->copyOnWrite()V

    .line 433
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;

    invoke-static {v0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;->access$100(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;I)V

    .line 434
    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 556
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto$Builder;->copyOnWrite()V

    .line 557
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;

    invoke-static {v0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;->access$600(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;Ljava/lang/String;)V

    .line 558
    return-object p0
.end method

.method public setMessageBytes(Lcom/google/protobuf/ByteString;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 584
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto$Builder;->copyOnWrite()V

    .line 585
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;

    invoke-static {v0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;->access$800(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;Lcom/google/protobuf/ByteString;)V

    .line 586
    return-object p0
.end method

.method public setSpace(Ljava/lang/String;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 487
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto$Builder;->copyOnWrite()V

    .line 488
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;

    invoke-static {v0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;->access$300(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;Ljava/lang/String;)V

    .line 489
    return-object p0
.end method

.method public setSpaceBytes(Lcom/google/protobuf/ByteString;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 515
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto$Builder;->copyOnWrite()V

    .line 516
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;

    invoke-static {v0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;->access$500(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;Lcom/google/protobuf/ByteString;)V

    .line 517
    return-object p0
.end method
