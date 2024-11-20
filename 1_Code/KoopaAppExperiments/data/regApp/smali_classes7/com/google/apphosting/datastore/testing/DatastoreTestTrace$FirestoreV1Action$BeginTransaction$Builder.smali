.class public final Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "DatastoreTestTrace.java"

# interfaces
.implements Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransactionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction;",
        "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction$Builder;",
        ">;",
        "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransactionOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3507
    invoke-static {}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction;->access$5800()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 3508
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$1;

    .line 3500
    invoke-direct {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearRequest()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction$Builder;
    .locals 1

    .line 3553
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction$Builder;->copyOnWrite()V

    .line 3554
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction;

    invoke-static {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction;->access$6100(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction;)V

    .line 3555
    return-object p0
.end method

.method public clearResponse()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction$Builder;
    .locals 1

    .line 3600
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction$Builder;->copyOnWrite()V

    .line 3601
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction;

    invoke-static {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction;->access$6400(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction;)V

    .line 3602
    return-object p0
.end method

.method public getRequest()Lcom/google/firestore/v1/BeginTransactionRequest;
    .locals 1

    .line 3523
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction;

    invoke-virtual {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction;->getRequest()Lcom/google/firestore/v1/BeginTransactionRequest;

    move-result-object v0

    return-object v0
.end method

.method public getResponse()Lcom/google/firestore/v1/BeginTransactionResponse;
    .locals 1

    .line 3570
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction;

    invoke-virtual {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction;->getResponse()Lcom/google/firestore/v1/BeginTransactionResponse;

    move-result-object v0

    return-object v0
.end method

.method public hasRequest()Z
    .locals 1

    .line 3516
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction;

    invoke-virtual {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction;->hasRequest()Z

    move-result v0

    return v0
.end method

.method public hasResponse()Z
    .locals 1

    .line 3563
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction;

    invoke-virtual {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction;->hasResponse()Z

    move-result v0

    return v0
.end method

.method public mergeRequest(Lcom/google/firestore/v1/BeginTransactionRequest;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/BeginTransactionRequest;

    .line 3546
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction$Builder;->copyOnWrite()V

    .line 3547
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction;

    invoke-static {v0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction;->access$6000(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction;Lcom/google/firestore/v1/BeginTransactionRequest;)V

    .line 3548
    return-object p0
.end method

.method public mergeResponse(Lcom/google/firestore/v1/BeginTransactionResponse;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/BeginTransactionResponse;

    .line 3593
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction$Builder;->copyOnWrite()V

    .line 3594
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction;

    invoke-static {v0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction;->access$6300(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction;Lcom/google/firestore/v1/BeginTransactionResponse;)V

    .line 3595
    return-object p0
.end method

.method public setRequest(Lcom/google/firestore/v1/BeginTransactionRequest$Builder;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/BeginTransactionRequest$Builder;

    .line 3538
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction$Builder;->copyOnWrite()V

    .line 3539
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction;

    invoke-virtual {p1}, Lcom/google/firestore/v1/BeginTransactionRequest$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/BeginTransactionRequest;

    invoke-static {v0, v1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction;->access$5900(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction;Lcom/google/firestore/v1/BeginTransactionRequest;)V

    .line 3540
    return-object p0
.end method

.method public setRequest(Lcom/google/firestore/v1/BeginTransactionRequest;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/BeginTransactionRequest;

    .line 3529
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction$Builder;->copyOnWrite()V

    .line 3530
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction;

    invoke-static {v0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction;->access$5900(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction;Lcom/google/firestore/v1/BeginTransactionRequest;)V

    .line 3531
    return-object p0
.end method

.method public setResponse(Lcom/google/firestore/v1/BeginTransactionResponse$Builder;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/BeginTransactionResponse$Builder;

    .line 3585
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction$Builder;->copyOnWrite()V

    .line 3586
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction;

    invoke-virtual {p1}, Lcom/google/firestore/v1/BeginTransactionResponse$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/BeginTransactionResponse;

    invoke-static {v0, v1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction;->access$6200(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction;Lcom/google/firestore/v1/BeginTransactionResponse;)V

    .line 3587
    return-object p0
.end method

.method public setResponse(Lcom/google/firestore/v1/BeginTransactionResponse;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/BeginTransactionResponse;

    .line 3576
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction$Builder;->copyOnWrite()V

    .line 3577
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction;

    invoke-static {v0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction;->access$6200(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction;Lcom/google/firestore/v1/BeginTransactionResponse;)V

    .line 3578
    return-object p0
.end method
