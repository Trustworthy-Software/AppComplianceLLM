.class public final Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "DatastoreTestTrace.java"

# interfaces
.implements Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$CommitOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit;",
        "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit$Builder;",
        ">;",
        "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$CommitOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3899
    invoke-static {}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit;->access$6600()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 3900
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$1;

    .line 3892
    invoke-direct {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearRequest()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit$Builder;
    .locals 1

    .line 3945
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit$Builder;->copyOnWrite()V

    .line 3946
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit;

    invoke-static {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit;->access$6900(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit;)V

    .line 3947
    return-object p0
.end method

.method public clearResponse()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit$Builder;
    .locals 1

    .line 3992
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit$Builder;->copyOnWrite()V

    .line 3993
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit;

    invoke-static {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit;->access$7200(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit;)V

    .line 3994
    return-object p0
.end method

.method public getRequest()Lcom/google/firestore/v1/CommitRequest;
    .locals 1

    .line 3915
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit;

    invoke-virtual {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit;->getRequest()Lcom/google/firestore/v1/CommitRequest;

    move-result-object v0

    return-object v0
.end method

.method public getResponse()Lcom/google/firestore/v1/CommitResponse;
    .locals 1

    .line 3962
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit;

    invoke-virtual {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit;->getResponse()Lcom/google/firestore/v1/CommitResponse;

    move-result-object v0

    return-object v0
.end method

.method public hasRequest()Z
    .locals 1

    .line 3908
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit;

    invoke-virtual {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit;->hasRequest()Z

    move-result v0

    return v0
.end method

.method public hasResponse()Z
    .locals 1

    .line 3955
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit;

    invoke-virtual {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit;->hasResponse()Z

    move-result v0

    return v0
.end method

.method public mergeRequest(Lcom/google/firestore/v1/CommitRequest;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/CommitRequest;

    .line 3938
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit$Builder;->copyOnWrite()V

    .line 3939
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit;

    invoke-static {v0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit;->access$6800(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit;Lcom/google/firestore/v1/CommitRequest;)V

    .line 3940
    return-object p0
.end method

.method public mergeResponse(Lcom/google/firestore/v1/CommitResponse;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/CommitResponse;

    .line 3985
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit$Builder;->copyOnWrite()V

    .line 3986
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit;

    invoke-static {v0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit;->access$7100(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit;Lcom/google/firestore/v1/CommitResponse;)V

    .line 3987
    return-object p0
.end method

.method public setRequest(Lcom/google/firestore/v1/CommitRequest$Builder;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/CommitRequest$Builder;

    .line 3930
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit$Builder;->copyOnWrite()V

    .line 3931
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit;

    invoke-virtual {p1}, Lcom/google/firestore/v1/CommitRequest$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/CommitRequest;

    invoke-static {v0, v1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit;->access$6700(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit;Lcom/google/firestore/v1/CommitRequest;)V

    .line 3932
    return-object p0
.end method

.method public setRequest(Lcom/google/firestore/v1/CommitRequest;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/CommitRequest;

    .line 3921
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit$Builder;->copyOnWrite()V

    .line 3922
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit;

    invoke-static {v0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit;->access$6700(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit;Lcom/google/firestore/v1/CommitRequest;)V

    .line 3923
    return-object p0
.end method

.method public setResponse(Lcom/google/firestore/v1/CommitResponse$Builder;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/CommitResponse$Builder;

    .line 3977
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit$Builder;->copyOnWrite()V

    .line 3978
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit;

    invoke-virtual {p1}, Lcom/google/firestore/v1/CommitResponse$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/CommitResponse;

    invoke-static {v0, v1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit;->access$7000(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit;Lcom/google/firestore/v1/CommitResponse;)V

    .line 3979
    return-object p0
.end method

.method public setResponse(Lcom/google/firestore/v1/CommitResponse;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/CommitResponse;

    .line 3968
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit$Builder;->copyOnWrite()V

    .line 3969
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit;

    invoke-static {v0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit;->access$7000(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit;Lcom/google/firestore/v1/CommitResponse;)V

    .line 3970
    return-object p0
.end method
