.class public final Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "DatastoreTestTrace.java"

# interfaces
.implements Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$ListenOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen;",
        "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen$Builder;",
        ">;",
        "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$ListenOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 6319
    invoke-static {}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen;->access$11200()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 6320
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$1;

    .line 6312
    invoke-direct {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearRequest()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen$Builder;
    .locals 1

    .line 6365
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen$Builder;->copyOnWrite()V

    .line 6366
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen;

    invoke-static {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen;->access$11500(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen;)V

    .line 6367
    return-object p0
.end method

.method public clearResponse()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen$Builder;
    .locals 1

    .line 6412
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen$Builder;->copyOnWrite()V

    .line 6413
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen;

    invoke-static {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen;->access$11800(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen;)V

    .line 6414
    return-object p0
.end method

.method public getRequest()Lcom/google/firestore/v1/ListenRequest;
    .locals 1

    .line 6335
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen;

    invoke-virtual {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen;->getRequest()Lcom/google/firestore/v1/ListenRequest;

    move-result-object v0

    return-object v0
.end method

.method public getResponse()Lcom/google/firestore/v1/ListenResponse;
    .locals 1

    .line 6382
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen;

    invoke-virtual {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen;->getResponse()Lcom/google/firestore/v1/ListenResponse;

    move-result-object v0

    return-object v0
.end method

.method public hasRequest()Z
    .locals 1

    .line 6328
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen;

    invoke-virtual {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen;->hasRequest()Z

    move-result v0

    return v0
.end method

.method public hasResponse()Z
    .locals 1

    .line 6375
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen;

    invoke-virtual {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen;->hasResponse()Z

    move-result v0

    return v0
.end method

.method public mergeRequest(Lcom/google/firestore/v1/ListenRequest;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/ListenRequest;

    .line 6358
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen$Builder;->copyOnWrite()V

    .line 6359
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen;

    invoke-static {v0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen;->access$11400(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen;Lcom/google/firestore/v1/ListenRequest;)V

    .line 6360
    return-object p0
.end method

.method public mergeResponse(Lcom/google/firestore/v1/ListenResponse;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/ListenResponse;

    .line 6405
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen$Builder;->copyOnWrite()V

    .line 6406
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen;

    invoke-static {v0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen;->access$11700(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen;Lcom/google/firestore/v1/ListenResponse;)V

    .line 6407
    return-object p0
.end method

.method public setRequest(Lcom/google/firestore/v1/ListenRequest$Builder;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/ListenRequest$Builder;

    .line 6350
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen$Builder;->copyOnWrite()V

    .line 6351
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen;

    invoke-virtual {p1}, Lcom/google/firestore/v1/ListenRequest$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/ListenRequest;

    invoke-static {v0, v1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen;->access$11300(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen;Lcom/google/firestore/v1/ListenRequest;)V

    .line 6352
    return-object p0
.end method

.method public setRequest(Lcom/google/firestore/v1/ListenRequest;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/ListenRequest;

    .line 6341
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen$Builder;->copyOnWrite()V

    .line 6342
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen;

    invoke-static {v0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen;->access$11300(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen;Lcom/google/firestore/v1/ListenRequest;)V

    .line 6343
    return-object p0
.end method

.method public setResponse(Lcom/google/firestore/v1/ListenResponse$Builder;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/ListenResponse$Builder;

    .line 6397
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen$Builder;->copyOnWrite()V

    .line 6398
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen;

    invoke-virtual {p1}, Lcom/google/firestore/v1/ListenResponse$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/ListenResponse;

    invoke-static {v0, v1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen;->access$11600(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen;Lcom/google/firestore/v1/ListenResponse;)V

    .line 6399
    return-object p0
.end method

.method public setResponse(Lcom/google/firestore/v1/ListenResponse;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/ListenResponse;

    .line 6388
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen$Builder;->copyOnWrite()V

    .line 6389
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen;

    invoke-static {v0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen;->access$11600(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen;Lcom/google/firestore/v1/ListenResponse;)V

    .line 6390
    return-object p0
.end method
